package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.C2471a.AbstractC2475d;
import com.google.android.gms.common.api.internal.AbstractC2547e;
import com.google.android.gms.common.api.internal.AbstractC2557k;
import com.google.android.gms.common.internal.AbstractC2623c;
import com.google.android.gms.common.internal.AbstractC2647l;
import com.google.android.gms.common.internal.C2636d;
import com.google.android.gms.common.internal.C2662s;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a.class */
public final class C2471a<O extends AbstractC2475d> {

    /* renamed from: a */
    private final C2472a<?, O> f7041a;

    /* renamed from: c */
    private final C2484g<?> f7043c;

    /* renamed from: e */
    private final String f7045e;

    /* renamed from: b */
    private final C2486i<?, O> f7042b = null;

    /* renamed from: d */
    private final C2487j<?> f7044d = null;

    /* renamed from: com.google.android.gms.common.api.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$a.class */
    public static class C2472a<T extends AbstractC2483f, O> extends C2482e<T, O> {
        @Deprecated
        /* renamed from: a */
        public T mo2035a(Context context, Looper looper, C2636d c2636d, O o, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
            return m14454a(context, looper, c2636d, (C2636d) o, (AbstractC2547e) abstractC2493a, (AbstractC2557k) abstractC2494b);
        }

        /* renamed from: a */
        public T m14454a(Context context, Looper looper, C2636d c2636d, O o, AbstractC2547e abstractC2547e, AbstractC2557k abstractC2557k) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* renamed from: com.google.android.gms.common.api.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$b.class */
    public interface AbstractC2473b {
    }

    /* renamed from: com.google.android.gms.common.api.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$c.class */
    public static class C2474c<C extends AbstractC2473b> {
    }

    /* renamed from: com.google.android.gms.common.api.a$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d.class */
    public interface AbstractC2475d {

        /* renamed from: com.google.android.gms.common.api.a$d$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$a.class */
        public interface AbstractC2476a extends AbstractC2478c, AbstractC2480e {
            /* renamed from: a */
            Account m14453a();
        }

        /* renamed from: com.google.android.gms.common.api.a$d$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$b.class */
        public interface AbstractC2477b extends AbstractC2478c {
            /* renamed from: a */
            GoogleSignInAccount m14452a();
        }

        /* renamed from: com.google.android.gms.common.api.a$d$c */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$c.class */
        public interface AbstractC2478c extends AbstractC2475d {
        }

        /* renamed from: com.google.android.gms.common.api.a$d$d */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$d.class */
        public static final class C2479d implements AbstractC2480e {
            private C2479d() {
            }
        }

        /* renamed from: com.google.android.gms.common.api.a$d$e */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$e.class */
        public interface AbstractC2480e extends AbstractC2475d {
        }

        /* renamed from: com.google.android.gms.common.api.a$d$f */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$f.class */
        public interface AbstractC2481f extends AbstractC2478c, AbstractC2480e {
        }
    }

    /* renamed from: com.google.android.gms.common.api.a$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$e.class */
    public static class C2482e<T extends AbstractC2473b, O> {
    }

    /* renamed from: com.google.android.gms.common.api.a$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$f.class */
    public interface AbstractC2483f extends AbstractC2473b {
        /* renamed from: a */
        void m14451a(AbstractC2623c.AbstractC2626c abstractC2626c);

        /* renamed from: a */
        void m14450a(AbstractC2623c.AbstractC2628e abstractC2628e);

        /* renamed from: a */
        void m14449a(AbstractC2647l abstractC2647l, Set<Scope> set);

        /* renamed from: d */
        int mo2031d();

        /* renamed from: e */
        void m14448e();

        /* renamed from: f */
        boolean m14447f();

        /* renamed from: g */
        boolean m14446g();

        /* renamed from: h */
        boolean mo6530h();

        /* renamed from: i */
        boolean m14445i();

        /* renamed from: j */
        String m14444j();

        /* renamed from: k */
        C2587d[] m14443k();

        /* renamed from: l */
        Set<Scope> mo14020l();
    }

    /* renamed from: com.google.android.gms.common.api.a$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$g.class */
    public static final class C2484g<C extends AbstractC2483f> extends C2474c<C> {
    }

    /* renamed from: com.google.android.gms.common.api.a$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$h.class */
    public interface AbstractC2485h<T extends IInterface> extends AbstractC2473b {
        /* renamed from: a */
        T m14440a(IBinder iBinder);

        /* renamed from: a */
        String m14442a();

        /* renamed from: a */
        void m14441a(int i, T t);

        /* renamed from: b */
        String m14439b();
    }

    /* renamed from: com.google.android.gms.common.api.a$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$i.class */
    public static class C2486i<T extends AbstractC2485h<? extends IInterface>, O> extends C2482e<T, O> {
    }

    /* renamed from: com.google.android.gms.common.api.a$j */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$j.class */
    public static final class C2487j<C extends AbstractC2485h<? extends IInterface>> extends C2474c<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends AbstractC2483f> C2471a(String str, C2472a<C, O> c2472a, C2484g<C> c2484g) {
        C2662s.m13980a(c2472a, "Cannot construct an Api with a null ClientBuilder");
        C2662s.m13980a(c2484g, "Cannot construct an Api with a null ClientKey");
        this.f7045e = str;
        this.f7041a = c2472a;
        this.f7043c = c2484g;
    }

    /* renamed from: a */
    public final C2472a<?, O> m14457a() {
        C2662s.m13976a(this.f7041a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f7041a;
    }

    /* renamed from: b */
    public final C2474c<?> m14456b() {
        if (this.f7043c != null) {
            return this.f7043c;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    /* renamed from: c */
    public final String m14455c() {
        return this.f7045e;
    }
}
