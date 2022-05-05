package p081h.p203i.p325c.p372x;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.exifinterface.media.ExifInterface;
import androidx.media2.session.MediaSessionImplBase;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p364t.AbstractC9912v;
import p081h.p203i.p325c.p364t.C9873e0;
import p081h.p203i.p325c.p364t.C9901r;
import p081h.p203i.p325c.p367v.AbstractC9941h;
/* renamed from: h.i.c.x.y */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/y.class */
public class C10006y {

    /* renamed from: i */
    public static final long f22623i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: a */
    public final FirebaseInstanceId f22624a;

    /* renamed from: b */
    public final Context f22625b;

    /* renamed from: c */
    public final C9873e0 f22626c;

    /* renamed from: d */
    public final C9901r f22627d;

    /* renamed from: f */
    public final ScheduledExecutorService f22629f;

    /* renamed from: h */
    public final C10004w f22631h;
    @GuardedBy("pendingOperations")

    /* renamed from: e */
    public final Map<String, ArrayDeque<C9145i<Void>>> f22628e = new ArrayMap();
    @GuardedBy("this")

    /* renamed from: g */
    public boolean f22630g = false;

    public C10006y(FirebaseInstanceId firebaseInstanceId, C9873e0 e0Var, C10004w wVar, C9901r rVar, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.f22624a = firebaseInstanceId;
        this.f22626c = e0Var;
        this.f22631h = wVar;
        this.f22627d = rVar;
        this.f22625b = context;
        this.f22629f = scheduledExecutorService;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static AbstractC9143h<C10006y> m13663a(final FirebaseInstanceId firebaseInstanceId, final C9873e0 e0Var, final C9901r rVar, final Context context, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        return C9148k.m15997a(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseInstanceId, e0Var, rVar) { // from class: h.i.c.x.x

            /* renamed from: a */
            public final Context f22618a;

            /* renamed from: b */
            public final ScheduledExecutorService f22619b;

            /* renamed from: c */
            public final FirebaseInstanceId f22620c;

            /* renamed from: d */
            public final C9873e0 f22621d;

            /* renamed from: e */
            public final C9901r f22622e;

            {
                this.f22618a = context;
                this.f22619b = scheduledExecutorService;
                this.f22620c = firebaseInstanceId;
                this.f22621d = e0Var;
                this.f22622e = rVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return C10006y.m13664a(this.f22618a, this.f22619b, this.f22620c, this.f22621d, this.f22622e);
            }
        });
    }

    /* renamed from: a */
    public static AbstractC9143h<C10006y> m13661a(C9435c cVar, FirebaseInstanceId firebaseInstanceId, C9873e0 e0Var, AbstractC9393i iVar, AbstractC9861d dVar, AbstractC9941h hVar, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        return m13663a(firebaseInstanceId, e0Var, new C9901r(cVar, e0Var, iVar, dVar, hVar), context, scheduledExecutorService);
    }

    /* renamed from: a */
    public static final /* synthetic */ C10006y m13664a(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseInstanceId firebaseInstanceId, C9873e0 e0Var, C9901r rVar) throws Exception {
        return new C10006y(firebaseInstanceId, e0Var, C10004w.m13670a(context, scheduledExecutorService), rVar, context, scheduledExecutorService);
    }

    @WorkerThread
    /* renamed from: a */
    public static <T> T m13662a(AbstractC9143h<T> hVar) throws IOException {
        Throwable e;
        try {
            return (T) C9148k.m16002a(hVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e3);
            }
        } catch (TimeoutException e4) {
            e = e4;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    /* renamed from: f */
    public static boolean m13646f() {
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3);
        }
        return true;
    }

    /* renamed from: a */
    public void m13665a(long j) {
        m13658a(new RunnableC10007z(this, this.f22625b, this.f22626c, Math.min(Math.max(30L, j << 1), f22623i)), j);
        m13656a(true);
    }

    /* renamed from: a */
    public final void m13660a(C10003v vVar) {
        synchronized (this.f22628e) {
            String c = vVar.m13673c();
            if (this.f22628e.containsKey(c)) {
                ArrayDeque<C9145i<Void>> arrayDeque = this.f22628e.get(c);
                C9145i<Void> poll = arrayDeque.poll();
                if (poll != null) {
                    poll.m16006a((C9145i<Void>) null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f22628e.remove(c);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m13659a(C10003v vVar, C9145i<Void> iVar) {
        ArrayDeque<C9145i<Void>> arrayDeque;
        synchronized (this.f22628e) {
            String c = vVar.m13673c();
            if (this.f22628e.containsKey(c)) {
                arrayDeque = this.f22628e.get(c);
            } else {
                arrayDeque = new ArrayDeque<>();
                this.f22628e.put(c, arrayDeque);
            }
            arrayDeque.add(iVar);
        }
    }

    /* renamed from: a */
    public void m13658a(Runnable runnable, long j) {
        this.f22629f.schedule(runnable, j, TimeUnit.SECONDS);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m13657a(String str) throws IOException {
        AbstractC9912v vVar = (AbstractC9912v) m13662a(this.f22624a.getInstanceId());
        m13662a(this.f22627d.m13988c(vVar.getId(), vVar.getToken(), str));
    }

    /* renamed from: a */
    public void m13656a(boolean z) {
        synchronized (this) {
            this.f22630g = z;
        }
    }

    /* renamed from: a */
    public boolean m13666a() {
        return this.f22631h.m13671a() != null;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m13653b(String str) throws IOException {
        AbstractC9912v vVar = (AbstractC9912v) m13662a(this.f22624a.getInstanceId());
        m13662a(this.f22627d.m13987d(vVar.getId(), vVar.getToken(), str));
    }

    /* renamed from: b */
    public boolean m13655b() {
        boolean z;
        synchronized (this) {
            z = this.f22630g;
        }
        return z;
    }

    @WorkerThread
    /* renamed from: b */
    public boolean m13654b(C10003v vVar) throws IOException {
        try {
            String a = vVar.m13678a();
            char c = 65535;
            int hashCode = a.hashCode();
            if (hashCode != 83) {
                if (hashCode == 85 && a.equals("U")) {
                    c = 1;
                }
            } else if (a.equals(ExifInterface.LATITUDE_SOUTH)) {
                c = 0;
            }
            if (c == 0) {
                m13657a(vVar.m13675b());
                if (!m13646f()) {
                    return true;
                }
                String b = vVar.m13675b();
                StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 31);
                sb.append("Subscribe to topic: ");
                sb.append(b);
                sb.append(" succeeded.");
                sb.toString();
                return true;
            } else if (c == 1) {
                m13653b(vVar.m13675b());
                if (!m13646f()) {
                    return true;
                }
                String b2 = vVar.m13675b();
                StringBuilder sb2 = new StringBuilder(String.valueOf(b2).length() + 35);
                sb2.append("Unsubscribe from topic: ");
                sb2.append(b2);
                sb2.append(" succeeded.");
                sb2.toString();
                return true;
            } else if (!m13646f()) {
                return true;
            } else {
                String valueOf = String.valueOf(vVar);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 24);
                sb3.append("Unknown topic operation");
                sb3.append(valueOf);
                sb3.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                sb3.toString();
                return true;
            }
        } catch (IOException e) {
            if ("SERVICE_NOT_AVAILABLE".equals(e.getMessage()) || "INTERNAL_SERVER_ERROR".equals(e.getMessage())) {
                String message = e.getMessage();
                StringBuilder sb4 = new StringBuilder(String.valueOf(message).length() + 53);
                sb4.append("Topic operation failed: ");
                sb4.append(message);
                sb4.append(". Will retry Topic operation.");
                Log.e("FirebaseMessaging", sb4.toString());
                return false;
            } else if (e.getMessage() == null) {
                Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            } else {
                throw e;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public AbstractC9143h<Void> m13651c(C10003v vVar) {
        this.f22631h.m13669a(vVar);
        C9145i<Void> iVar = new C9145i<>();
        m13659a(vVar, iVar);
        return iVar.m16008a();
    }

    /* renamed from: c */
    public AbstractC9143h<Void> m13650c(String str) {
        AbstractC9143h<Void> c = m13651c(C10003v.m13674b(str));
        m13649d();
        return c;
    }

    /* renamed from: c */
    public final void m13652c() {
        if (!m13655b()) {
            m13665a(0L);
        }
    }

    /* renamed from: d */
    public AbstractC9143h<Void> m13648d(String str) {
        AbstractC9143h<Void> c = m13651c(C10003v.m13672c(str));
        m13649d();
        return c;
    }

    /* renamed from: d */
    public void m13649d() {
        if (m13666a()) {
            m13652c();
        }
    }

    @WorkerThread
    /* renamed from: e */
    public boolean m13647e() throws IOException {
        while (true) {
            synchronized (this) {
                C10003v a = this.f22631h.m13671a();
                if (a == null) {
                    m13646f();
                    return true;
                } else if (!m13654b(a)) {
                    return false;
                } else {
                    this.f22631h.m13667b(a);
                    m13660a(a);
                }
            }
        }
    }
}
