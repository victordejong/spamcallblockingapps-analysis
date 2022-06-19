package p000;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.d71;
import p000.k61;
import p000.m91;
import p000.n91;
import p000.w91;
/* renamed from: ra1 */
/* loaded from: classes3-dex2jar.jar:ra1.class */
public class ra1 implements m91.AbstractC1469b {

    /* renamed from: a */
    public static final String f8039a = "ra1";

    /* renamed from: b */
    public static ScheduledExecutorService f8040b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: c */
    public static ScheduledFuture<?> f8041c = null;

    /* renamed from: d */
    public static AbstractC1647e f8042d = null;

    /* renamed from: f */
    public static Handler f8043f = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    public static boolean f8044g = false;

    /* renamed from: h */
    public static WeakReference<AbstractC1648f> f8045h;

    /* renamed from: ra1$a */
    /* loaded from: classes3-dex2jar.jar:ra1$a.class */
    public static final class RunnableC1642a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1648f f8046a;

        public RunnableC1642a(AbstractC1648f abstractC1648f) {
            this.f8046a = abstractC1648f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8046a.m645a();
        }
    }

    /* renamed from: ra1$b */
    /* loaded from: classes3-dex2jar.jar:ra1$b.class */
    public static final class RunnableC1643b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1648f f8047a;

        /* renamed from: b */
        public final /* synthetic */ i91 f8048b;

        /* renamed from: c */
        public final /* synthetic */ n91.C1485b f8049c;

        /* renamed from: d */
        public final /* synthetic */ String f8050d;

        /* renamed from: f */
        public final /* synthetic */ int f8051f;

        /* renamed from: g */
        public final /* synthetic */ boolean f8052g;

        /* renamed from: h */
        public final /* synthetic */ boolean f8053h;

        public RunnableC1643b(AbstractC1648f abstractC1648f, i91 i91Var, n91.C1485b c1485b, String str, int i, boolean z, boolean z2) {
            this.f8047a = abstractC1648f;
            this.f8048b = i91Var;
            this.f8049c = c1485b;
            this.f8050d = str;
            this.f8051f = i;
            this.f8052g = z;
            this.f8053h = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8047a.m644b(this.f8048b, this.f8049c, this.f8050d, this.f8051f, this.f8052g, this.f8053h);
        }
    }

    /* renamed from: ra1$c */
    /* loaded from: classes3-dex2jar.jar:ra1$c.class */
    public static final class RunnableC1644c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ i91 f8054a;

        /* renamed from: b */
        public final /* synthetic */ int f8055b;

        /* renamed from: c */
        public final /* synthetic */ n91.C1485b f8056c;

        /* renamed from: d */
        public final /* synthetic */ Context f8057d;

        /* renamed from: f */
        public final /* synthetic */ AbstractC1648f f8058f;

        /* renamed from: g */
        public final /* synthetic */ boolean f8059g;

        /* renamed from: h */
        public final /* synthetic */ boolean f8060h;

        /* renamed from: ra1$c$a */
        /* loaded from: classes3-dex2jar.jar:ra1$c$a.class */
        public class RunnableC1645a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ d71.C1280b f8061a;

            public RunnableC1645a(d71.C1280b c1280b) {
                RunnableC1644c.this = r4;
                this.f8061a = c1280b;
            }

            /* JADX WARN: Removed duplicated region for block: B:35:0x0115  */
            /* JADX WARN: Removed duplicated region for block: B:57:0x01dc  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x01f9 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:61:0x01fa  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 647
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p000.ra1.RunnableC1644c.RunnableC1645a.run():void");
            }
        }

        public RunnableC1644c(i91 i91Var, int i, n91.C1485b c1485b, Context context, AbstractC1648f abstractC1648f, boolean z, boolean z2) {
            this.f8054a = i91Var;
            this.f8055b = i;
            this.f8056c = c1485b;
            this.f8057d = context;
            this.f8058f = abstractC1648f;
            this.f8059g = z;
            this.f8060h = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!ra1.f8044g) {
                return;
            }
            v61 v61Var = new v61();
            v61Var.m2788b(this.f8054a, true);
            try {
                d71.C1280b c1280b = k61.m1449m(v61Var).f5783a.get(this.f8054a.toString());
                if (!TextUtils.isEmpty(c1280b.f5787c)) {
                    z91.m37v(this.f8054a, c1280b.f5787c);
                }
                ra1.f8043f.post(new RunnableC1645a(c1280b));
            } catch (k61.C1456a e) {
                j91.m1504l(ra1.f8039a, "Lookup failed", e);
                Bundle bundle = new Bundle();
                bundle.putString("Personification", "Enhanced");
                w91.m275c(this, w91.EnumC1708a.LOOKUP_FAILURE, bundle);
            }
        }
    }

    /* renamed from: ra1$d */
    /* loaded from: classes3-dex2jar.jar:ra1$d.class */
    public static final class RunnableC1646d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1648f f8063a;

        public RunnableC1646d(AbstractC1648f abstractC1648f) {
            this.f8063a = abstractC1648f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8063a.m645a();
        }
    }

    /* renamed from: ra1$e */
    /* loaded from: classes3-dex2jar.jar:ra1$e.class */
    public interface AbstractC1647e {
        /* renamed from: a */
        AbstractC1648f mo646a();
    }

    /* renamed from: ra1$f */
    /* loaded from: classes3-dex2jar.jar:ra1$f.class */
    public interface AbstractC1648f {
        /* renamed from: a */
        void m645a();

        /* renamed from: b */
        void m644b(i91 i91Var, n91.C1485b c1485b, String str, int i, boolean z, boolean z2);

        /* renamed from: c */
        boolean m643c();

        /* renamed from: d */
        void m642d();
    }

    /* renamed from: d */
    public static void m653d() {
        j91.m1499q(ra1.class.getCanonicalName(), "cancel()");
        f8044g = false;
        WeakReference<AbstractC1648f> weakReference = f8045h;
        AbstractC1648f abstractC1648f = weakReference != null ? weakReference.get() : null;
        if (abstractC1648f != null) {
            f8043f.post(new RunnableC1646d(abstractC1648f));
        }
        f8045h = null;
        ScheduledFuture<?> scheduledFuture = f8041c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            f8041c = null;
        }
    }

    /* renamed from: e */
    public static void m652e(i91 i91Var, n91.C1485b c1485b, int i, Context context, AbstractC1648f abstractC1648f, boolean z, boolean z2) {
        f8041c = f8040b.schedule(new RunnableC1644c(i91Var, i, c1485b, context, abstractC1648f, z, z2), 0L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: g */
    public static void m650g(AbstractC1647e abstractC1647e) {
        f8042d = abstractC1647e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a4, code lost:
        if (r12.isEmpty() != false) goto L71;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m649h(p000.i91 r11, p000.n91.C1485b r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ra1.m649h(i91, n91$b, boolean):void");
    }

    /* renamed from: j */
    public static boolean m647j() {
        AbstractC1647e abstractC1647e;
        return r71.m715g() && (abstractC1647e = f8042d) != null && abstractC1647e.mo646a().m643c();
    }

    /* renamed from: f */
    public void m651f() {
        m91.m1278d(this, EnumSet.of(m91.EnumC1470c.GET_CALLER_COMPLETE), new Class[0]);
    }

    @Override // p000.m91.AbstractC1469b
    /* renamed from: i */
    public void mo648i(m91.EnumC1470c enumC1470c, Class<?> cls, Object obj) {
        AbstractC1648f abstractC1648f;
        WeakReference<AbstractC1648f> weakReference = f8045h;
        if (weakReference == null || (abstractC1648f = weakReference.get()) == null) {
            return;
        }
        abstractC1648f.m642d();
    }
}
