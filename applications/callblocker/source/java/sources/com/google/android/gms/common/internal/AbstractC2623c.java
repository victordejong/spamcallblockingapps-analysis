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
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC2643i;
import com.google.android.gms.common.internal.AbstractC2651n;
import com.google.android.gms.common.internal.AbstractC2653o;
import com.google.android.gms.internal.p138e.HandlerC3727i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c.class */
public abstract class AbstractC2623c<T extends IInterface> {

    /* renamed from: A */
    private C2579b f7319A;

    /* renamed from: B */
    private boolean f7320B;

    /* renamed from: C */
    private volatile C2604ag f7321C;

    /* renamed from: a */
    final Handler f7322a;

    /* renamed from: b */
    protected AbstractC2626c f7323b;

    /* renamed from: c */
    protected AtomicInteger f7324c;

    /* renamed from: f */
    private int f7325f;

    /* renamed from: g */
    private long f7326g;

    /* renamed from: h */
    private long f7327h;

    /* renamed from: i */
    private int f7328i;

    /* renamed from: j */
    private long f7329j;

    /* renamed from: k */
    private C2610am f7330k;

    /* renamed from: l */
    private final Context f7331l;

    /* renamed from: m */
    private final Looper f7332m;

    /* renamed from: n */
    private final AbstractC2643i f7333n;

    /* renamed from: o */
    private final C2593f f7334o;

    /* renamed from: p */
    private final Object f7335p;

    /* renamed from: q */
    private final Object f7336q;
    @GuardedBy("mServiceBrokerLock")

    /* renamed from: r */
    private AbstractC2653o f7337r;
    @GuardedBy("mLock")

    /* renamed from: s */
    private T f7338s;

    /* renamed from: t */
    private final ArrayList<AbstractC2630g<?>> f7339t;
    @GuardedBy("mLock")

    /* renamed from: u */
    private ServiceConnectionC2633j f7340u;
    @GuardedBy("mLock")

    /* renamed from: v */
    private int f7341v;

    /* renamed from: w */
    private final AbstractC2624a f7342w;

    /* renamed from: x */
    private final AbstractC2625b f7343x;

    /* renamed from: y */
    private final int f7344y;

    /* renamed from: z */
    private final String f7345z;

    /* renamed from: e */
    private static final C2587d[] f7318e = new C2587d[0];

    /* renamed from: d */
    public static final String[] f7317d = {"service_esmobile", "service_googleme"};

    /* renamed from: com.google.android.gms.common.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$a.class */
    public interface AbstractC2624a {
        /* renamed from: a */
        void mo4310a(int i);

        /* renamed from: a */
        void mo4308a(Bundle bundle);
    }

    /* renamed from: com.google.android.gms.common.internal.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$b.class */
    public interface AbstractC2625b {
        /* renamed from: a */
        void mo4307a(C2579b c2579b);
    }

    /* renamed from: com.google.android.gms.common.internal.c$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$c.class */
    public interface AbstractC2626c {
        /* renamed from: a */
        void mo14063a(C2579b c2579b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.gms.common.internal.c$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$d.class */
    public class C2627d implements AbstractC2626c {
        public C2627d() {
            AbstractC2623c.this = r4;
        }

        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2626c
        /* renamed from: a */
        public void mo14063a(C2579b c2579b) {
            if (c2579b.m14210b()) {
                AbstractC2623c.this.m14091a((AbstractC2647l) null, AbstractC2623c.this.mo14018y());
            } else if (AbstractC2623c.this.f7343x == null) {
            } else {
                AbstractC2623c.this.f7343x.mo4307a(c2579b);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.c$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$e.class */
    public interface AbstractC2628e {
        /* renamed from: a */
        void mo14062a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.internal.c$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$f.class */
    public abstract class AbstractC2629f extends AbstractC2630g<Boolean> {

        /* renamed from: a */
        private final int f7347a;

        /* renamed from: b */
        private final Bundle f7348b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected AbstractC2629f(int i, Bundle bundle) {
            super(true);
            AbstractC2623c.this = r5;
            this.f7347a = i;
            this.f7348b = bundle;
        }

        /* renamed from: a */
        protected abstract void mo14053a(C2579b c2579b);

        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2630g
        /* renamed from: a */
        protected final /* synthetic */ void mo14061a(Boolean bool) {
            if (bool == null) {
                AbstractC2623c.this.m14089b(1, null);
                return;
            }
            switch (this.f7347a) {
                case 0:
                    if (mo14054a()) {
                        return;
                    }
                    AbstractC2623c.this.m14089b(1, null);
                    mo14053a(new C2579b(8, null));
                    return;
                case 10:
                    AbstractC2623c.this.m14089b(1, null);
                    throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), AbstractC2623c.this.mo2034a(), AbstractC2623c.this.mo2032b()));
                default:
                    AbstractC2623c.this.m14089b(1, null);
                    PendingIntent pendingIntent = null;
                    if (this.f7348b != null) {
                        pendingIntent = (PendingIntent) this.f7348b.getParcelable("pendingIntent");
                    }
                    mo14053a(new C2579b(this.f7347a, pendingIntent));
                    return;
            }
        }

        /* renamed from: a */
        protected abstract boolean mo14054a();

        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2630g
        /* renamed from: b */
        protected final void mo14060b() {
        }
    }

    /* renamed from: com.google.android.gms.common.internal.c$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$g.class */
    public abstract class AbstractC2630g<TListener> {

        /* renamed from: a */
        private TListener f7350a;

        /* renamed from: b */
        private boolean f7351b = false;

        public AbstractC2630g(TListener tlistener) {
            AbstractC2623c.this = r4;
            this.f7350a = tlistener;
        }

        /* renamed from: a */
        protected abstract void mo14061a(TListener tlistener);

        /* renamed from: b */
        protected abstract void mo14060b();

        /* renamed from: c */
        public final void m14059c() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f7350a;
                if (this.f7351b) {
                    String valueOf = String.valueOf(this);
                    Log.w("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Callback proxy ").append(valueOf).append(" being reused. This is not safe.").toString());
                }
            }
            if (tlistener != null) {
                try {
                    mo14061a(tlistener);
                } catch (RuntimeException e) {
                    mo14060b();
                    throw e;
                }
            } else {
                mo14060b();
            }
            synchronized (this) {
                this.f7351b = true;
            }
            m14058d();
        }

        /* renamed from: d */
        public final void m14058d() {
            m14057e();
            synchronized (AbstractC2623c.this.f7339t) {
                AbstractC2623c.this.f7339t.remove(this);
            }
        }

        /* renamed from: e */
        public final void m14057e() {
            synchronized (this) {
                this.f7350a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.common.internal.c$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$h.class */
    public final class HandlerC2631h extends HandlerC3727i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC2631h(Looper looper) {
            super(looper);
            AbstractC2623c.this = r4;
        }

        /* renamed from: a */
        private static void m14056a(Message message) {
            AbstractC2630g abstractC2630g = (AbstractC2630g) message.obj;
            abstractC2630g.mo14060b();
            abstractC2630g.m14058d();
        }

        /* renamed from: b */
        private static boolean m14055b(Message message) {
            boolean z = true;
            if (message.what != 2) {
                z = true;
                if (message.what != 1) {
                    z = message.what == 7;
                }
            }
            return z;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            PendingIntent pendingIntent = null;
            if (AbstractC2623c.this.f7324c.get() != message.arg1) {
                if (!m14055b(message)) {
                    return;
                }
                m14056a(message);
            } else if ((message.what == 1 || message.what == 7 || ((message.what == 4 && !AbstractC2623c.this.m14066w()) || message.what == 5)) && !AbstractC2623c.this.m14079g()) {
                m14056a(message);
            } else if (message.what == 4) {
                AbstractC2623c.this.f7319A = new C2579b(message.arg2);
                if (AbstractC2623c.this.m14109B() && !AbstractC2623c.this.f7320B) {
                    AbstractC2623c.this.m14089b(3, null);
                    return;
                }
                C2579b c2579b = AbstractC2623c.this.f7319A != null ? AbstractC2623c.this.f7319A : new C2579b(8);
                AbstractC2623c.this.f7323b.mo14063a(c2579b);
                AbstractC2623c.this.m14103a(c2579b);
            } else if (message.what == 5) {
                C2579b c2579b2 = AbstractC2623c.this.f7319A != null ? AbstractC2623c.this.f7319A : new C2579b(8);
                AbstractC2623c.this.f7323b.mo14063a(c2579b2);
                AbstractC2623c.this.m14103a(c2579b2);
            } else if (message.what == 3) {
                if (message.obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) message.obj;
                }
                C2579b c2579b3 = new C2579b(message.arg2, pendingIntent);
                AbstractC2623c.this.f7323b.mo14063a(c2579b3);
                AbstractC2623c.this.m14103a(c2579b3);
            } else if (message.what == 6) {
                AbstractC2623c.this.m14089b(5, null);
                if (AbstractC2623c.this.f7342w != null) {
                    AbstractC2623c.this.f7342w.mo4310a(message.arg2);
                }
                AbstractC2623c.this.m14108a(message.arg2);
                AbstractC2623c.this.m14107a(5, 1, (int) null);
            } else if (message.what == 2 && !AbstractC2623c.this.m14081f()) {
                m14056a(message);
            } else if (m14055b(message)) {
                ((AbstractC2630g) message.obj).m14059c();
            } else {
                Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.c$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$i.class */
    public static final class BinderC2632i extends AbstractC2651n.AbstractBinderC2652a {

        /* renamed from: a */
        private AbstractC2623c f7354a;

        /* renamed from: b */
        private final int f7355b;

        public BinderC2632i(AbstractC2623c abstractC2623c, int i) {
            this.f7354a = abstractC2623c;
            this.f7355b = i;
        }

        @Override // com.google.android.gms.common.internal.AbstractC2651n
        /* renamed from: a */
        public final void mo13999a(int i, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.AbstractC2651n
        /* renamed from: a */
        public final void mo13998a(int i, IBinder iBinder, Bundle bundle) {
            C2662s.m13980a(this.f7354a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f7354a.m14105a(i, iBinder, bundle, this.f7355b);
            this.f7354a = null;
        }

        @Override // com.google.android.gms.common.internal.AbstractC2651n
        /* renamed from: a */
        public final void mo13997a(int i, IBinder iBinder, C2604ag c2604ag) {
            C2662s.m13980a(this.f7354a, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            C2662s.m13981a(c2604ag);
            this.f7354a.m14102a(c2604ag);
            mo13998a(i, iBinder, c2604ag.f7289a);
        }
    }

    /* renamed from: com.google.android.gms.common.internal.c$j */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$j.class */
    public final class ServiceConnectionC2633j implements ServiceConnection {

        /* renamed from: a */
        private final int f7356a;

        public ServiceConnectionC2633j(int i) {
            AbstractC2623c.this = r4;
            this.f7356a = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [com.google.android.gms.common.internal.o] */
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AbstractC2653o.AbstractBinderC2654a.C2655a c2655a;
            if (iBinder == null) {
                AbstractC2623c.this.m14086c(16);
                return;
            }
            synchronized (AbstractC2623c.this.f7336q) {
                AbstractC2623c abstractC2623c = AbstractC2623c.this;
                if (iBinder == null) {
                    c2655a = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    c2655a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2653o)) ? new AbstractC2653o.AbstractBinderC2654a.C2655a(iBinder) : (AbstractC2653o) queryLocalInterface;
                }
                abstractC2623c.f7337r = c2655a;
            }
            AbstractC2623c.this.m14106a(0, (Bundle) null, this.f7356a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (AbstractC2623c.this.f7336q) {
                AbstractC2623c.this.f7337r = null;
            }
            AbstractC2623c.this.f7322a.sendMessage(AbstractC2623c.this.f7322a.obtainMessage(6, this.f7356a, 1));
        }
    }

    /* renamed from: com.google.android.gms.common.internal.c$k */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$k.class */
    public final class C2634k extends AbstractC2629f {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2634k(int i, Bundle bundle) {
            super(i, null);
            AbstractC2623c.this = r6;
        }

        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2629f
        /* renamed from: a */
        protected final void mo14053a(C2579b c2579b) {
            if (AbstractC2623c.this.m14066w() && AbstractC2623c.this.m14109B()) {
                AbstractC2623c.this.m14086c(16);
                return;
            }
            AbstractC2623c.this.f7323b.mo14063a(c2579b);
            AbstractC2623c.this.m14103a(c2579b);
        }

        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2629f
        /* renamed from: a */
        protected final boolean mo14054a() {
            AbstractC2623c.this.f7323b.mo14063a(C2579b.f7233a);
            return true;
        }
    }

    /* renamed from: com.google.android.gms.common.internal.c$l */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$l.class */
    public final class C2635l extends AbstractC2629f {

        /* renamed from: a */
        private final IBinder f7359a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2635l(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            AbstractC2623c.this = r6;
            this.f7359a = iBinder;
        }

        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2629f
        /* renamed from: a */
        protected final void mo14053a(C2579b c2579b) {
            if (AbstractC2623c.this.f7343x != null) {
                AbstractC2623c.this.f7343x.mo4307a(c2579b);
            }
            AbstractC2623c.this.m14103a(c2579b);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0098, code lost:
            if (com.google.android.gms.common.internal.AbstractC2623c.this.m14107a(3, 4, (int) r0) != false) goto L17;
         */
        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2629f
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected final boolean mo14054a() {
            /*
                r6 = this;
                r0 = 0
                r7 = r0
                r0 = r6
                android.os.IBinder r0 = r0.f7359a     // Catch: android.os.RemoteException -> L5c
                java.lang.String r0 = r0.getInterfaceDescriptor()     // Catch: android.os.RemoteException -> L5c
                r8 = r0
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                java.lang.String r0 = r0.mo2032b()
                r1 = r8
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L6b
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                java.lang.String r0 = r0.mo2032b()
                r9 = r0
                java.lang.String r0 = "GmsClient"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                r3 = r9
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                r4 = 34
                int r3 = r3 + r4
                r4 = r8
                java.lang.String r4 = java.lang.String.valueOf(r4)
                int r4 = r4.length()
                int r3 = r3 + r4
                r2.<init>(r3)
                java.lang.String r2 = "service descriptor mismatch: "
                java.lang.StringBuilder r1 = r1.append(r2)
                r2 = r9
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " vs. "
                java.lang.StringBuilder r1 = r1.append(r2)
                r2 = r8
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.e(r0, r1)
                r0 = r7
                r10 = r0
            L59:
                r0 = r10
                return r0
            L5c:
                r9 = move-exception
                java.lang.String r0 = "GmsClient"
                java.lang.String r1 = "service probably died"
                int r0 = android.util.Log.w(r0, r1)
                r0 = r7
                r10 = r0
                goto L59
            L6b:
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                r1 = r6
                android.os.IBinder r1 = r1.f7359a
                android.os.IInterface r0 = r0.mo2033a(r1)
                r9 = r0
                r0 = r7
                r10 = r0
                r0 = r9
                if (r0 == 0) goto L59
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                r1 = 2
                r2 = 4
                r3 = r9
                boolean r0 = com.google.android.gms.common.internal.AbstractC2623c.m14096a(r0, r1, r2, r3)
                if (r0 != 0) goto L9b
                r0 = r7
                r10 = r0
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                r1 = 3
                r2 = 4
                r3 = r9
                boolean r0 = com.google.android.gms.common.internal.AbstractC2623c.m14096a(r0, r1, r2, r3)
                if (r0 == 0) goto L59
            L9b:
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                r1 = 0
                com.google.android.gms.common.b r0 = com.google.android.gms.common.internal.AbstractC2623c.m14094a(r0, r1)
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                android.os.Bundle r0 = r0.m14068u()
                r9 = r0
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                com.google.android.gms.common.internal.c$a r0 = com.google.android.gms.common.internal.AbstractC2623c.m14082e(r0)
                if (r0 == 0) goto Lc3
                r0 = r6
                com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC2623c.this
                com.google.android.gms.common.internal.c$a r0 = com.google.android.gms.common.internal.AbstractC2623c.m14082e(r0)
                r1 = r9
                r0.mo4308a(r1)
            Lc3:
                r0 = 1
                r10 = r0
                goto L59
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.AbstractC2623c.C2635l.mo14054a():boolean");
        }
    }

    public AbstractC2623c(Context context, Looper looper, int i, AbstractC2624a abstractC2624a, AbstractC2625b abstractC2625b, String str) {
        this(context, looper, AbstractC2643i.m14017a(context), C2593f.m14165b(), i, (AbstractC2624a) C2662s.m13981a(abstractC2624a), (AbstractC2625b) C2662s.m13981a(abstractC2625b), str);
    }

    public AbstractC2623c(Context context, Looper looper, AbstractC2643i abstractC2643i, C2593f c2593f, int i, AbstractC2624a abstractC2624a, AbstractC2625b abstractC2625b, String str) {
        this.f7335p = new Object();
        this.f7336q = new Object();
        this.f7339t = new ArrayList<>();
        this.f7341v = 1;
        this.f7319A = null;
        this.f7320B = false;
        this.f7321C = null;
        this.f7324c = new AtomicInteger(0);
        this.f7331l = (Context) C2662s.m13980a(context, "Context must not be null");
        this.f7332m = (Looper) C2662s.m13980a(looper, "Looper must not be null");
        this.f7333n = (AbstractC2643i) C2662s.m13980a(abstractC2643i, "Supervisor must not be null");
        this.f7334o = (C2593f) C2662s.m13980a(c2593f, "API availability must not be null");
        this.f7322a = new HandlerC2631h(looper);
        this.f7344y = i;
        this.f7342w = abstractC2624a;
        this.f7343x = abstractC2625b;
        this.f7345z = str;
    }

    /* renamed from: A */
    private final boolean m14110A() {
        boolean z;
        synchronized (this.f7335p) {
            z = this.f7341v == 3;
        }
        return z;
    }

    /* renamed from: B */
    public final boolean m14109B() {
        boolean z;
        if (this.f7320B) {
            z = false;
        } else {
            z = false;
            if (!TextUtils.isEmpty(mo2032b())) {
                z = false;
                if (!TextUtils.isEmpty(m14073n())) {
                    try {
                        Class.forName(mo2032b());
                        z = true;
                    } catch (ClassNotFoundException e) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final void m14102a(C2604ag c2604ag) {
        this.f7321C = c2604ag;
    }

    /* renamed from: a */
    public final boolean m14107a(int i, int i2, T t) {
        boolean z;
        synchronized (this.f7335p) {
            if (this.f7341v != i) {
                z = false;
            } else {
                m14089b(i2, t);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m14089b(int i, T t) {
        boolean z = true;
        if ((i == 4) != (t != null)) {
            z = false;
        }
        C2662s.m13973b(z);
        synchronized (this.f7335p) {
            this.f7341v = i;
            this.f7338s = t;
            mo13911a(i, (int) t);
            switch (i) {
                case 1:
                    if (this.f7340u != null) {
                        this.f7333n.m14015a(this.f7330k.m14121a(), this.f7330k.m14120b(), this.f7330k.m14119c(), this.f7340u, m14087c(), this.f7330k.m14118d());
                        this.f7340u = null;
                        break;
                    }
                    break;
                case 2:
                case 3:
                    if (this.f7340u != null && this.f7330k != null) {
                        String m14121a = this.f7330k.m14121a();
                        String m14120b = this.f7330k.m14120b();
                        Log.e("GmsClient", new StringBuilder(String.valueOf(m14121a).length() + 70 + String.valueOf(m14120b).length()).append("Calling connect() while still connected, missing disconnect() for ").append(m14121a).append(" on ").append(m14120b).toString());
                        this.f7333n.m14015a(this.f7330k.m14121a(), this.f7330k.m14120b(), this.f7330k.m14119c(), this.f7340u, m14087c(), this.f7330k.m14118d());
                        this.f7324c.incrementAndGet();
                    }
                    this.f7340u = new ServiceConnectionC2633j(this.f7324c.get());
                    this.f7330k = (this.f7341v != 3 || m14073n() == null) ? new C2610am(m14074m(), mo2034a(), false, 129, m14064z()) : new C2610am(m14071p().getPackageName(), m14073n(), true, 129, false);
                    if (this.f7330k.m14118d() && mo2031d() < 17895000) {
                        String valueOf = String.valueOf(this.f7330k.m14121a());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                    }
                    if (!this.f7333n.mo14016a(new AbstractC2643i.C2644a(this.f7330k.m14121a(), this.f7330k.m14120b(), this.f7330k.m14119c(), this.f7330k.m14118d()), this.f7340u, m14087c())) {
                        String m14121a2 = this.f7330k.m14121a();
                        String m14120b2 = this.f7330k.m14120b();
                        Log.e("GmsClient", new StringBuilder(String.valueOf(m14121a2).length() + 34 + String.valueOf(m14120b2).length()).append("unable to connect to service: ").append(m14121a2).append(" on ").append(m14120b2).toString());
                        m14106a(16, (Bundle) null, this.f7324c.get());
                        break;
                    }
                    break;
                case 4:
                    m14104a((AbstractC2623c<T>) t);
                    break;
            }
        }
    }

    /* renamed from: c */
    private final String m14087c() {
        return this.f7345z == null ? this.f7331l.getClass().getName() : this.f7345z;
    }

    /* renamed from: c */
    public final void m14086c(int i) {
        int i2;
        if (m14110A()) {
            i2 = 5;
            this.f7320B = true;
        } else {
            i2 = 4;
        }
        this.f7322a.sendMessage(this.f7322a.obtainMessage(i2, this.f7324c.get(), 16));
    }

    /* renamed from: a */
    protected abstract T mo2033a(IBinder iBinder);

    /* renamed from: a */
    protected abstract String mo2034a();

    /* renamed from: a */
    protected void m14108a(int i) {
        this.f7325f = i;
        this.f7326g = System.currentTimeMillis();
    }

    /* renamed from: a */
    protected final void m14106a(int i, Bundle bundle, int i2) {
        this.f7322a.sendMessage(this.f7322a.obtainMessage(7, i2, -1, new C2634k(i, null)));
    }

    /* renamed from: a */
    protected void m14105a(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.f7322a.sendMessage(this.f7322a.obtainMessage(1, i2, -1, new C2635l(i, iBinder, bundle)));
    }

    /* renamed from: a */
    void mo13911a(int i, T t) {
    }

    /* renamed from: a */
    protected void m14104a(T t) {
        this.f7327h = System.currentTimeMillis();
    }

    /* renamed from: a */
    protected void m14103a(C2579b c2579b) {
        this.f7328i = c2579b.m14209c();
        this.f7329j = System.currentTimeMillis();
    }

    /* renamed from: a */
    public void m14101a(AbstractC2626c abstractC2626c) {
        this.f7323b = (AbstractC2626c) C2662s.m13980a(abstractC2626c, "Connection progress callbacks cannot be null.");
        m14089b(2, null);
    }

    /* renamed from: a */
    protected void m14100a(AbstractC2626c abstractC2626c, int i, PendingIntent pendingIntent) {
        this.f7323b = (AbstractC2626c) C2662s.m13980a(abstractC2626c, "Connection progress callbacks cannot be null.");
        this.f7322a.sendMessage(this.f7322a.obtainMessage(3, this.f7324c.get(), i, pendingIntent));
    }

    /* renamed from: a */
    public void m14099a(AbstractC2628e abstractC2628e) {
        abstractC2628e.mo14062a();
    }

    /* renamed from: a */
    public void m14091a(AbstractC2647l abstractC2647l, Set<Scope> set) {
        Bundle mo6529s = mo6529s();
        C2641g c2641g = new C2641g(this.f7344y);
        c2641g.f7383a = this.f7331l.getPackageName();
        c2641g.f7386d = mo6529s;
        if (set != null) {
            c2641g.f7385c = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (mo6530h()) {
            c2641g.f7387e = mo14019q() != null ? mo14019q() : new Account("<<default account>>", "com.google");
            if (abstractC2647l != null) {
                c2641g.f7384b = abstractC2647l.asBinder();
            }
        } else if (m14065x()) {
            c2641g.f7387e = mo14019q();
        }
        c2641g.f7388f = f7318e;
        c2641g.f7389g = m14070r();
        try {
            synchronized (this.f7336q) {
                if (this.f7337r != null) {
                    this.f7337r.mo13996a(new BinderC2632i(this, this.f7324c.get()), c2641g);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m14090b(1);
        } catch (RemoteException e2) {
            e = e2;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m14105a(8, (IBinder) null, (Bundle) null, this.f7324c.get());
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m14105a(8, (IBinder) null, (Bundle) null, this.f7324c.get());
        }
    }

    /* renamed from: b */
    protected abstract String mo2032b();

    /* renamed from: b */
    public void m14090b(int i) {
        this.f7322a.sendMessage(this.f7322a.obtainMessage(6, this.f7324c.get(), i));
    }

    /* renamed from: d */
    public int mo2031d() {
        return C2593f.f7273b;
    }

    /* renamed from: e */
    public void m14083e() {
        this.f7324c.incrementAndGet();
        synchronized (this.f7339t) {
            int size = this.f7339t.size();
            for (int i = 0; i < size; i++) {
                this.f7339t.get(i).m14057e();
            }
            this.f7339t.clear();
        }
        synchronized (this.f7336q) {
            this.f7337r = null;
        }
        m14089b(1, null);
    }

    /* renamed from: f */
    public boolean m14081f() {
        boolean z;
        synchronized (this.f7335p) {
            z = this.f7341v == 4;
        }
        return z;
    }

    /* renamed from: g */
    public boolean m14079g() {
        boolean z;
        synchronized (this.f7335p) {
            z = this.f7341v == 2 || this.f7341v == 3;
        }
        return z;
    }

    /* renamed from: h */
    public boolean mo6530h() {
        return false;
    }

    /* renamed from: i */
    public boolean m14077i() {
        return true;
    }

    /* renamed from: j */
    public String m14076j() {
        if (!m14081f() || this.f7330k == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return this.f7330k.m14120b();
    }

    /* renamed from: k */
    public final C2587d[] m14075k() {
        C2604ag c2604ag = this.f7321C;
        return c2604ag == null ? null : c2604ag.f7290b;
    }

    /* renamed from: m */
    protected String m14074m() {
        return "com.google.android.gms";
    }

    /* renamed from: n */
    protected String m14073n() {
        return null;
    }

    /* renamed from: o */
    public void m14072o() {
        int mo14163b = this.f7334o.mo14163b(this.f7331l, mo2031d());
        if (mo14163b == 0) {
            m14101a(new C2627d());
            return;
        }
        m14089b(1, null);
        m14100a(new C2627d(), mo14163b, (PendingIntent) null);
    }

    /* renamed from: p */
    public final Context m14071p() {
        return this.f7331l;
    }

    /* renamed from: q */
    public Account mo14019q() {
        return null;
    }

    /* renamed from: r */
    public C2587d[] m14070r() {
        return f7318e;
    }

    /* renamed from: s */
    protected Bundle mo6529s() {
        return new Bundle();
    }

    /* renamed from: t */
    protected final void m14069t() {
        if (!m14081f()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /* renamed from: u */
    public Bundle m14068u() {
        return null;
    }

    /* renamed from: v */
    public final T m14067v() {
        T t;
        synchronized (this.f7335p) {
            if (this.f7341v == 5) {
                throw new DeadObjectException();
            }
            m14069t();
            C2662s.m13976a(this.f7338s != null, "Client is connected but service is null");
            t = this.f7338s;
        }
        return t;
    }

    /* renamed from: w */
    protected boolean m14066w() {
        return false;
    }

    /* renamed from: x */
    public boolean m14065x() {
        return false;
    }

    /* renamed from: y */
    protected Set<Scope> mo14018y() {
        return Collections.EMPTY_SET;
    }

    /* renamed from: z */
    protected boolean m14064z() {
        return false;
    }
}
