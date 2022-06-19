package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.C5984a.AbstractC5988d;
import com.google.android.gms.common.api.internal.AbstractC6019d;
import com.google.android.gms.common.api.internal.AbstractC6052o;
import com.google.android.gms.common.api.internal.AbstractC6056q;
import com.google.android.gms.common.api.internal.BinderC6062s0;
import com.google.android.gms.common.api.internal.C6009a;
import com.google.android.gms.common.api.internal.C6012b;
import com.google.android.gms.common.api.internal.C6017c0;
import com.google.android.gms.common.api.internal.C6025f;
import com.google.android.gms.common.api.internal.C6029g0;
import com.google.android.gms.common.api.internal.C6063t;
import com.google.android.gms.common.api.internal.ServiceConnectionC6037j;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.internal.C6121e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.api.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c.class */
public abstract class AbstractC5996c<O extends C5984a.AbstractC5988d> implements AbstractC6002e<O> {

    /* renamed from: a */
    private final Context f19183a;

    /* renamed from: b */
    private final String f19184b;

    /* renamed from: c */
    private final C5984a<O> f19185c;

    /* renamed from: d */
    private final O f19186d;

    /* renamed from: e */
    private final C6012b<O> f19187e;

    /* renamed from: f */
    private final Looper f19188f;

    /* renamed from: g */
    private final int f19189g;
    @NotOnlyInitialized

    /* renamed from: h */
    private final AbstractC5999d f19190h;

    /* renamed from: i */
    private final AbstractC6052o f19191i;
    @RecentlyNonNull

    /* renamed from: j */
    protected final C6025f f19192j;

    /* renamed from: com.google.android.gms.common.api.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c$a.class */
    public static class C5997a {
        @RecentlyNonNull

        /* renamed from: a */
        public static final C5997a f19193a = new C5998a().m17461a();
        @RecentlyNonNull

        /* renamed from: b */
        public final AbstractC6052o f19194b;
        @RecentlyNonNull

        /* renamed from: c */
        public final Looper f19195c;

        /* renamed from: com.google.android.gms.common.api.c$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c$a$a.class */
        public static class C5998a {

            /* renamed from: a */
            private AbstractC6052o f19196a;

            /* renamed from: b */
            private Looper f19197b;

            @RecentlyNonNull
            /* renamed from: a */
            public C5997a m17461a() {
                if (this.f19196a == null) {
                    this.f19196a = new C6009a();
                }
                if (this.f19197b == null) {
                    this.f19197b = Looper.getMainLooper();
                }
                return new C5997a(this.f19196a, this.f19197b);
            }

            @RecentlyNonNull
            /* renamed from: b */
            public C5998a m17460b(@RecentlyNonNull Looper looper) {
                C6155o.m17017k(looper, "Looper must not be null.");
                this.f19197b = looper;
                return this;
            }

            @RecentlyNonNull
            /* renamed from: c */
            public C5998a m17459c(@RecentlyNonNull AbstractC6052o abstractC6052o) {
                C6155o.m17017k(abstractC6052o, "StatusExceptionMapper must not be null.");
                this.f19196a = abstractC6052o;
                return this;
            }
        }

        private C5997a(AbstractC6052o abstractC6052o, Account account, Looper looper) {
            this.f19194b = abstractC6052o;
            this.f19195c = looper;
        }
    }

    public AbstractC5996c(@RecentlyNonNull Activity activity, @RecentlyNonNull C5984a<O> c5984a, @RecentlyNonNull O o, @RecentlyNonNull C5997a c5997a) {
        C6155o.m17017k(activity, "Null activity is not permitted.");
        C6155o.m17017k(c5984a, "Api must not be null.");
        C6155o.m17017k(c5997a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = activity.getApplicationContext();
        this.f19183a = applicationContext;
        String m17462r = m17462r(activity);
        this.f19184b = m17462r;
        this.f19185c = c5984a;
        this.f19186d = o;
        this.f19188f = c5997a.f19195c;
        C6012b<O> m17436a = C6012b.m17436a(c5984a, o, m17462r);
        this.f19187e = m17436a;
        this.f19190h = new C6029g0(this);
        C6025f m17356n = C6025f.m17356n(applicationContext);
        this.f19192j = m17356n;
        this.f19189g = m17356n.m17355o();
        this.f19191i = c5997a.f19194b;
        if (!(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            C6063t.m17263t(activity, m17356n, m17436a);
        }
        m17356n.m17354p(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC5996c(@androidx.annotation.RecentlyNonNull android.app.Activity r7, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.C5984a<O> r8, @androidx.annotation.RecentlyNonNull O r9, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.internal.AbstractC6052o r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.c$a$a r0 = new com.google.android.gms.common.api.c$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.c$a$a r0 = r0.m17459c(r1)
            r0 = r11
            r1 = r7
            android.os.Looper r1 = r1.getMainLooper()
            com.google.android.gms.common.api.c$a$a r0 = r0.m17460b(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.c$a r4 = r4.m17461a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.AbstractC5996c.<init>(android.app.Activity, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.o):void");
    }

    public AbstractC5996c(@RecentlyNonNull Context context, @RecentlyNonNull C5984a<O> c5984a, @RecentlyNonNull O o, @RecentlyNonNull C5997a c5997a) {
        C6155o.m17017k(context, "Null context is not permitted.");
        C6155o.m17017k(c5984a, "Api must not be null.");
        C6155o.m17017k(c5997a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        this.f19183a = applicationContext;
        String m17462r = m17462r(context);
        this.f19184b = m17462r;
        this.f19185c = c5984a;
        this.f19186d = o;
        this.f19188f = c5997a.f19195c;
        this.f19187e = C6012b.m17436a(c5984a, o, m17462r);
        this.f19190h = new C6029g0(this);
        C6025f m17356n = C6025f.m17356n(applicationContext);
        this.f19192j = m17356n;
        this.f19189g = m17356n.m17355o();
        this.f19191i = c5997a.f19194b;
        m17356n.m17354p(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC5996c(@androidx.annotation.RecentlyNonNull android.content.Context r7, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.C5984a<O> r8, @androidx.annotation.RecentlyNonNull O r9, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.internal.AbstractC6052o r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.c$a$a r0 = new com.google.android.gms.common.api.c$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.c$a$a r0 = r0.m17459c(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.c$a r4 = r4.m17461a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.AbstractC5996c.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.o):void");
    }

    /* renamed from: p */
    private final <A extends C5984a.AbstractC5986b, T extends AbstractC6019d<? extends AbstractC6007i, A>> T m17464p(int i, T t) {
        t.m17445i();
        this.f19192j.m17349u(this, i, t);
        return t;
    }

    /* renamed from: q */
    private final <TResult, A extends C5984a.AbstractC5986b> AbstractC7966g<TResult> m17463q(int i, AbstractC6056q<A, TResult> abstractC6056q) {
        C7968h c7968h = new C7968h();
        this.f19192j.m17348v(this, i, abstractC6056q, c7968h, this.f19191i);
        return c7968h.m5807a();
    }

    /* renamed from: r */
    private static String m17462r(Object obj) {
        if (C6237o.m16771m()) {
            try {
                return (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.AbstractC6002e
    @RecentlyNonNull
    /* renamed from: c */
    public final C6012b<O> mo17455c() {
        return this.f19187e;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public AbstractC5999d m17476d() {
        return this.f19190h;
    }

    @RecentlyNonNull
    /* renamed from: e */
    protected C6121e.C6122a m17475e() {
        Account account;
        Set set;
        GoogleSignInAccount m17478N;
        C6121e.C6122a c6122a = new C6121e.C6122a();
        O o = this.f19186d;
        if (!(o instanceof C5984a.AbstractC5988d.AbstractC5990b) || (m17478N = ((C5984a.AbstractC5988d.AbstractC5990b) o).m17478N()) == null) {
            O o2 = this.f19186d;
            account = o2 instanceof C5984a.AbstractC5988d.AbstractC5989a ? ((C5984a.AbstractC5988d.AbstractC5989a) o2).m17479P() : null;
        } else {
            account = m17478N.m17664P();
        }
        c6122a.m17072c(account);
        O o3 = this.f19186d;
        if (o3 instanceof C5984a.AbstractC5988d.AbstractC5990b) {
            GoogleSignInAccount m17478N2 = ((C5984a.AbstractC5988d.AbstractC5990b) o3).m17478N();
            set = m17478N2 == null ? Collections.emptySet() : m17478N2.m17656r0();
        } else {
            set = Collections.emptySet();
        }
        c6122a.m17071d(set);
        c6122a.m17070e(this.f19183a.getClass().getName());
        c6122a.m17073b(this.f19183a.getPackageName());
        return c6122a;
    }

    @RecentlyNonNull
    /* renamed from: f */
    public <TResult, A extends C5984a.AbstractC5986b> AbstractC7966g<TResult> m17474f(@RecentlyNonNull AbstractC6056q<A, TResult> abstractC6056q) {
        return m17463q(2, abstractC6056q);
    }

    @RecentlyNonNull
    /* renamed from: g */
    public <TResult, A extends C5984a.AbstractC5986b> AbstractC7966g<TResult> m17473g(@RecentlyNonNull AbstractC6056q<A, TResult> abstractC6056q) {
        return m17463q(0, abstractC6056q);
    }

    @RecentlyNonNull
    /* renamed from: h */
    public <A extends C5984a.AbstractC5986b, T extends AbstractC6019d<? extends AbstractC6007i, A>> T m17472h(@RecentlyNonNull T t) {
        m17464p(1, t);
        return t;
    }

    @RecentlyNonNull
    /* renamed from: i */
    public O m17471i() {
        return this.f19186d;
    }

    @RecentlyNonNull
    /* renamed from: j */
    public Context m17470j() {
        return this.f19183a;
    }

    @RecentlyNullable
    /* renamed from: k */
    protected String m17469k() {
        return this.f19184b;
    }

    @RecentlyNonNull
    /* renamed from: l */
    public Looper m17468l() {
        return this.f19188f;
    }

    /* renamed from: m */
    public final C5984a.AbstractC5993f m17467m(Looper looper, C6017c0<O> c6017c0) {
        C5984a.AbstractC5993f mo17480a = ((C5984a.AbstractC5985a) C6155o.m17018j(this.f19185c.m17483a())).mo17480a(this.f19183a, looper, m17475e().m17074a(), this.f19186d, c6017c0, c6017c0);
        String m17469k = m17469k();
        if (m17469k != null && (mo17480a instanceof AbstractC6113d)) {
            ((AbstractC6113d) mo17480a).m17123O(m17469k);
        }
        if (m17469k != null && (mo17480a instanceof ServiceConnectionC6037j)) {
            ((ServiceConnectionC6037j) mo17480a).m17308q(m17469k);
        }
        return mo17480a;
    }

    /* renamed from: n */
    public final int m17466n() {
        return this.f19189g;
    }

    /* renamed from: o */
    public final BinderC6062s0 m17465o(Context context, Handler handler) {
        return new BinderC6062s0(context, handler, m17475e().m17074a());
    }
}
