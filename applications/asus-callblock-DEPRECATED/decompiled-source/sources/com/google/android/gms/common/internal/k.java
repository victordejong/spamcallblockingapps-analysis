package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.z;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k.class */
public abstract class k<T extends IInterface> {
    public static final String[] g = {"service_esmobile", "service_googleme"};

    /* renamed from: a  reason: collision with root package name */
    private long f4008a;

    /* renamed from: b  reason: collision with root package name */
    int f4009b;
    long c;
    protected final Context d;
    final Handler e;
    private int h;
    private long i;
    private final Looper j;
    private final s k;
    private final com.google.android.gms.common.j l;
    private z o;
    private f p;
    private T q;
    private h s;
    private final b u;
    private final c v;
    private final int w;
    private final String x;
    private final Object m = new Object();
    private final Object n = new Object();
    private final ArrayList<e<?>> r = new ArrayList<>();
    private int t = 1;
    protected AtomicInteger f = new AtomicInteger(0);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$a.class */
    private abstract class a extends e<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public final int f4010a;

        /* renamed from: b  reason: collision with root package name */
        public final Bundle f4011b;

        protected a(int i, Bundle bundle) {
            super(true);
            this.f4010a = i;
            this.f4011b = bundle;
        }

        protected abstract void a(ConnectionResult connectionResult);

        @Override // com.google.android.gms.common.internal.k.e
        protected final /* synthetic */ void a(Boolean bool) {
            PendingIntent pendingIntent = null;
            if (bool == null) {
                k.this.a(1, (int) null);
                return;
            }
            switch (this.f4010a) {
                case 0:
                    if (!a()) {
                        k.this.a(1, (int) null);
                        a(new ConnectionResult(8, null));
                        return;
                    }
                    return;
                case 10:
                    k.this.a(1, (int) null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    k.this.a(1, (int) null);
                    if (this.f4011b != null) {
                        pendingIntent = (PendingIntent) this.f4011b.getParcelable("pendingIntent");
                    }
                    a(new ConnectionResult(this.f4010a, pendingIntent));
                    return;
            }
        }

        protected abstract boolean a();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$b.class */
    public interface b {
        void a();

        void b();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$c.class */
    public interface c {
        void a(ConnectionResult connectionResult);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$d.class */
    final class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        private static void a(Message message) {
            ((e) message.obj).c();
        }

        private static boolean b(Message message) {
            boolean z = true;
            if (message.what != 2) {
                z = true;
                if (message.what != 1) {
                    z = message.what == 5;
                }
            }
            return z;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            PendingIntent pendingIntent = null;
            if (k.this.f.get() != message.arg1) {
                if (b(message)) {
                    a(message);
                }
            } else if ((message.what == 1 || message.what == 5) && !k.this.c()) {
                a(message);
            } else if (message.what == 3) {
                if (message.obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) message.obj;
                }
                ConnectionResult connectionResult = new ConnectionResult(message.arg2, pendingIntent);
                k.this.p.a(connectionResult);
                k.this.a(connectionResult);
            } else if (message.what == 4) {
                k.this.a(4, (int) null);
                if (k.this.u != null) {
                    b bVar = k.this.u;
                    int i = message.arg2;
                    bVar.b();
                }
                k kVar = k.this;
                kVar.f4009b = message.arg2;
                kVar.c = System.currentTimeMillis();
                k.this.a(4, 1, null);
            } else if (message.what == 2 && !k.this.b()) {
                a(message);
            } else if (b(message)) {
                ((e) message.obj).b();
            } else {
                Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$e.class */
    public abstract class e<TListener> {

        /* renamed from: a  reason: collision with root package name */
        private TListener f4013a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f4014b = false;

        public e(TListener tlistener) {
            this.f4013a = tlistener;
        }

        protected abstract void a(TListener tlistener);

        public final void b() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f4013a;
                if (this.f4014b) {
                    String valueOf = String.valueOf(this);
                    Log.w("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Callback proxy ").append(valueOf).append(" being reused. This is not safe.").toString());
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e) {
                    throw e;
                }
            }
            synchronized (this) {
                this.f4014b = true;
            }
            c();
        }

        public final void c() {
            d();
            synchronized (k.this.r) {
                k.this.r.remove(this);
            }
        }

        public final void d() {
            synchronized (this) {
                this.f4013a = null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$f.class */
    public interface f {
        void a(ConnectionResult connectionResult);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$g.class */
    public static final class g extends y.a {

        /* renamed from: a  reason: collision with root package name */
        private k f4015a;

        /* renamed from: b  reason: collision with root package name */
        private final int f4016b;

        public g(k kVar, int i) {
            this.f4015a = kVar;
            this.f4016b = i;
        }

        @Override // com.google.android.gms.common.internal.y
        public final void a(int i, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.y
        public final void a(int i, IBinder iBinder, Bundle bundle) {
            com.google.android.gms.common.internal.b.a(this.f4015a, "onPostInitComplete can be called only once per call to getRemoteService");
            k kVar = this.f4015a;
            kVar.e.sendMessage(kVar.e.obtainMessage(1, this.f4016b, -1, new i(i, iBinder, bundle)));
            this.f4015a = null;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$h.class */
    public final class h implements ServiceConnection {

        /* renamed from: b  reason: collision with root package name */
        private final int f4018b;

        public h(int i) {
            this.f4018b = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.google.android.gms.common.internal.b.a(iBinder, "Expecting a valid IBinder");
            synchronized (k.this.n) {
                k.this.o = z.a.a(iBinder);
            }
            k.this.a(0, this.f4018b);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (k.this.n) {
                k.this.o = null;
            }
            k.this.e.sendMessage(k.this.e.obtainMessage(4, this.f4018b, 1));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$i.class */
    protected final class i extends a {
        public final IBinder e;

        public i(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.e = iBinder;
        }

        @Override // com.google.android.gms.common.internal.k.a
        protected final void a(ConnectionResult connectionResult) {
            if (k.this.v != null) {
                k.this.v.a(connectionResult);
            }
            k.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.k.a
        protected final boolean a() {
            boolean z;
            try {
                String interfaceDescriptor = this.e.getInterfaceDescriptor();
                if (!k.this.e().equals(interfaceDescriptor)) {
                    String valueOf = String.valueOf(k.this.e());
                    Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 34 + String.valueOf(interfaceDescriptor).length()).append("service descriptor mismatch: ").append(valueOf).append(" vs. ").append(interfaceDescriptor).toString());
                    z = false;
                } else {
                    IInterface a2 = k.this.a(this.e);
                    z = false;
                    if (a2 != null) {
                        z = false;
                        if (k.this.a(2, 3, a2)) {
                            k.h();
                            if (k.this.u != null) {
                                k.this.u.a();
                            }
                            z = true;
                        }
                    }
                }
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                z = false;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k$j.class */
    public final class j extends a {
        public j(int i) {
            super(i, null);
        }

        @Override // com.google.android.gms.common.internal.k.a
        protected final void a(ConnectionResult connectionResult) {
            k.this.p.a(connectionResult);
            k.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.k.a
        protected final boolean a() {
            k.this.p.a(ConnectionResult.f3922a);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k(Context context, Looper looper, s sVar, com.google.android.gms.common.j jVar, int i2, b bVar, c cVar, String str) {
        this.d = (Context) com.google.android.gms.common.internal.b.a(context, "Context must not be null");
        this.j = (Looper) com.google.android.gms.common.internal.b.a(looper, "Looper must not be null");
        this.k = (s) com.google.android.gms.common.internal.b.a(sVar, "Supervisor must not be null");
        this.l = (com.google.android.gms.common.j) com.google.android.gms.common.internal.b.a(jVar, "API availability must not be null");
        this.e = new d(looper);
        this.w = i2;
        this.u = bVar;
        this.v = cVar;
        this.x = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, T t) {
        boolean z = true;
        if ((i2 == 3) != (t != null)) {
            z = false;
        }
        com.google.android.gms.common.internal.b.a(z);
        synchronized (this.m) {
            this.t = i2;
            this.q = t;
            switch (i2) {
                case 1:
                    if (this.s != null) {
                        s sVar = this.k;
                        String d2 = d();
                        h hVar = this.s;
                        j();
                        sVar.a(d2, "com.google.android.gms", hVar);
                        this.s = null;
                        break;
                    }
                    break;
                case 2:
                    if (this.s != null) {
                        String valueOf = String.valueOf(d());
                        String valueOf2 = String.valueOf("com.google.android.gms");
                        Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 70 + String.valueOf(valueOf2).length()).append("Calling connect() while still connected, missing disconnect() for ").append(valueOf).append(" on ").append(valueOf2).toString());
                        s sVar2 = this.k;
                        String d3 = d();
                        h hVar2 = this.s;
                        j();
                        sVar2.a(d3, "com.google.android.gms", hVar2);
                        this.f.incrementAndGet();
                    }
                    this.s = new h(this.f.get());
                    if (!this.k.a(d(), "com.google.android.gms", this.s, j())) {
                        String valueOf3 = String.valueOf(d());
                        String valueOf4 = String.valueOf("com.google.android.gms");
                        Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf3).length() + 34 + String.valueOf(valueOf4).length()).append("unable to connect to service: ").append(valueOf3).append(" on ").append(valueOf4).toString());
                        a(16, this.f.get());
                        break;
                    }
                    break;
                case 3:
                    this.f4008a = System.currentTimeMillis();
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2, int i3, T t) {
        boolean z;
        synchronized (this.m) {
            if (this.t != i2) {
                z = false;
            } else {
                a(i3, (int) t);
                z = true;
            }
        }
        return z;
    }

    public static Bundle h() {
        return null;
    }

    private String j() {
        return this.x == null ? this.d.getClass().getName() : this.x;
    }

    public abstract T a(IBinder iBinder);

    public final void a() {
        this.f.incrementAndGet();
        synchronized (this.r) {
            int size = this.r.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.r.get(i2).d();
            }
            this.r.clear();
        }
        synchronized (this.n) {
            this.o = null;
        }
        a(1, (int) null);
    }

    protected final void a(int i2, int i3) {
        this.e.sendMessage(this.e.obtainMessage(5, i3, -1, new j(i2)));
    }

    protected final void a(ConnectionResult connectionResult) {
        this.h = connectionResult.c;
        this.i = System.currentTimeMillis();
    }

    public final void a(f fVar) {
        this.p = (f) com.google.android.gms.common.internal.b.a(fVar, "Connection progress callbacks cannot be null.");
        a(2, (int) null);
    }

    public final void a(Set<Scope> set) {
        try {
            Bundle g2 = g();
            GetServiceRequest getServiceRequest = new GetServiceRequest(this.w);
            getServiceRequest.d = this.d.getPackageName();
            getServiceRequest.g = g2;
            if (set != null) {
                getServiceRequest.f = (Scope[]) set.toArray(new Scope[set.size()]);
            }
            if (i()) {
                getServiceRequest.h = f() != null ? f() : new Account("<<default account>>", "com.google");
            }
            synchronized (this.n) {
                if (this.o != null) {
                    this.o.a(new g(this, this.f.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "service died");
            this.e.sendMessage(this.e.obtainMessage(4, this.f.get(), 1));
        } catch (RemoteException e3) {
            Log.w("GmsClient", "Remote exception occurred", e3);
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this.m) {
            z = this.t == 3;
        }
        return z;
    }

    public final boolean c() {
        boolean z;
        synchronized (this.m) {
            z = this.t == 2;
        }
        return z;
    }

    public abstract String d();

    public abstract String e();

    public Account f() {
        return null;
    }

    public Bundle g() {
        return new Bundle();
    }

    public boolean i() {
        return false;
    }
}
