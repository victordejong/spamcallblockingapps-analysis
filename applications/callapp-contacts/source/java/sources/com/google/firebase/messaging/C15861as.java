package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.p023b.C0428a;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.installations.AbstractC15822h;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.firebase.messaging.as */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/as.class */
public final class C15861as {

    /* renamed from: b */
    private static final long f56368b = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: a */
    final C15860ar f56369a;

    /* renamed from: c */
    private final Context f56370c;

    /* renamed from: d */
    private final C15846ag f56371d;

    /* renamed from: e */
    private final C15901z f56372e;

    /* renamed from: f */
    private final FirebaseMessaging f56373f;

    /* renamed from: g */
    private final AbstractC15822h f56374g;

    /* renamed from: i */
    private final ScheduledExecutorService f56376i;

    /* renamed from: h */
    private final Map<String, ArrayDeque<C14186i<Void>>> f56375h = new C0428a();

    /* renamed from: j */
    private boolean f56377j = false;

    private C15861as(FirebaseMessaging firebaseMessaging, AbstractC15822h abstractC15822h, C15846ag c15846ag, C15860ar c15860ar, C15901z c15901z, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f56373f = firebaseMessaging;
        this.f56374g = abstractC15822h;
        this.f56371d = c15846ag;
        this.f56369a = c15860ar;
        this.f56372e = c15901z;
        this.f56370c = context;
        this.f56376i = scheduledExecutorService;
    }

    /* renamed from: a */
    public static AbstractC14185h<C15861as> m8152a(FirebaseMessaging firebaseMessaging, AbstractC15822h abstractC15822h, C15846ag c15846ag, C15901z c15901z, Context context, ScheduledExecutorService scheduledExecutorService) {
        return C14188k.m11462a(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseMessaging, abstractC15822h, c15846ag, c15901z) { // from class: com.google.firebase.messaging.at

            /* renamed from: a */
            private final Context f56378a;

            /* renamed from: b */
            private final ScheduledExecutorService f56379b;

            /* renamed from: c */
            private final FirebaseMessaging f56380c;

            /* renamed from: d */
            private final AbstractC15822h f56381d;

            /* renamed from: e */
            private final C15846ag f56382e;

            /* renamed from: f */
            private final C15901z f56383f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56378a = context;
                this.f56379b = scheduledExecutorService;
                this.f56380c = firebaseMessaging;
                this.f56381d = abstractC15822h;
                this.f56382e = c15846ag;
                this.f56383f = c15901z;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return C15861as.m8154a(this.f56378a, this.f56379b, this.f56380c, this.f56381d, this.f56382e, this.f56383f);
            }
        });
    }

    /* renamed from: a */
    public static final /* synthetic */ C15861as m8154a(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, AbstractC15822h abstractC15822h, C15846ag c15846ag, C15901z c15901z) throws Exception {
        return new C15861as(firebaseMessaging, abstractC15822h, c15846ag, C15860ar.m8159a(context, scheduledExecutorService), c15901z, context, scheduledExecutorService);
    }

    /* renamed from: a */
    private static <T> T m8153a(AbstractC14185h<T> abstractC14185h) throws IOException {
        Throwable e;
        try {
            return (T) C14188k.m11467a(abstractC14185h, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e3);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e4) {
            e = e4;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d7 A[Catch: IOException -> 0x0137, TRY_ENTER, TryCatch #0 {IOException -> 0x0137, blocks: (B:2:0x0000, B:18:0x0040, B:20:0x0046, B:21:0x0076, B:23:0x00a7, B:24:0x00d7, B:26:0x0108), top: B:41:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m8151a(com.google.firebase.messaging.C15859aq r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.C15861as.m8151a(com.google.firebase.messaging.aq):boolean");
    }

    /* renamed from: c */
    private static boolean m8147c() {
        boolean z = false;
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            if (Build.VERSION.SDK_INT == 23) {
                if (!Log.isLoggable("FirebaseMessaging", 3)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: a */
    public final void m8155a(long j) {
        m8150a(new RunnableC15863au(this, this.f56370c, this.f56371d, Math.min(Math.max(30L, j + j), f56368b)), j);
        m8149a(true);
    }

    /* renamed from: a */
    public final void m8150a(Runnable runnable, long j) {
        this.f56376i.schedule(runnable, j, TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public final void m8149a(boolean z) {
        synchronized (this) {
            this.f56377j = z;
        }
    }

    /* renamed from: a */
    public final boolean m8156a() throws IOException {
        while (true) {
            synchronized (this) {
                C15859aq m8160a = this.f56369a.m8160a();
                if (m8160a == null) {
                    m8147c();
                    return true;
                } else if (!m8151a(m8160a)) {
                    return false;
                } else {
                    this.f56369a.m8158a(m8160a);
                    synchronized (this.f56375h) {
                        String str = m8160a.f56363c;
                        if (this.f56375h.containsKey(str)) {
                            ArrayDeque<C14186i<Void>> arrayDeque = this.f56375h.get(str);
                            C14186i<Void> poll = arrayDeque.poll();
                            if (poll != null) {
                                poll.m11471a((C14186i<Void>) null);
                            }
                            if (arrayDeque.isEmpty()) {
                                this.f56375h.remove(str);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m8148b() {
        boolean z;
        synchronized (this) {
            z = this.f56377j;
        }
        return z;
    }
}
