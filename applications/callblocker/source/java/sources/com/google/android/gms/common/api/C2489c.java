package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.C2471a.AbstractC2475d;
import com.google.android.gms.common.api.internal.AbstractC2560n;
import com.google.android.gms.common.api.internal.AbstractC2562p;
import com.google.android.gms.common.api.internal.BinderC2518an;
import com.google.android.gms.common.api.internal.C2504a;
import com.google.android.gms.common.api.internal.C2508ad;
import com.google.android.gms.common.api.internal.C2531b;
import com.google.android.gms.common.api.internal.C2545d;
import com.google.android.gms.common.api.internal.C2548f;
import com.google.android.gms.common.api.internal.C2567u;
import com.google.android.gms.common.internal.C2636d;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4470h;
import java.util.Collections;
/* renamed from: com.google.android.gms.common.api.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c.class */
public class C2489c<O extends C2471a.AbstractC2475d> {

    /* renamed from: a */
    protected final C2548f f7046a;

    /* renamed from: b */
    private final Context f7047b;

    /* renamed from: c */
    private final C2471a<O> f7048c;

    /* renamed from: d */
    private final O f7049d;

    /* renamed from: e */
    private final C2531b<O> f7050e;

    /* renamed from: f */
    private final Looper f7051f;

    /* renamed from: g */
    private final int f7052g;

    /* renamed from: h */
    private final AbstractC2492d f7053h;

    /* renamed from: i */
    private final AbstractC2560n f7054i;

    /* renamed from: com.google.android.gms.common.api.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c$a.class */
    public static class C2490a {

        /* renamed from: a */
        public static final C2490a f7055a = new C2491a().m14424a();

        /* renamed from: b */
        public final AbstractC2560n f7056b;

        /* renamed from: c */
        public final Looper f7057c;

        /* renamed from: com.google.android.gms.common.api.c$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c$a$a.class */
        public static class C2491a {

            /* renamed from: a */
            private AbstractC2560n f7058a;

            /* renamed from: b */
            private Looper f7059b;

            /* renamed from: a */
            public C2491a m14423a(Looper looper) {
                C2662s.m13980a(looper, "Looper must not be null.");
                this.f7059b = looper;
                return this;
            }

            /* renamed from: a */
            public C2491a m14422a(AbstractC2560n abstractC2560n) {
                C2662s.m13980a(abstractC2560n, "StatusExceptionMapper must not be null.");
                this.f7058a = abstractC2560n;
                return this;
            }

            /* renamed from: a */
            public C2490a m14424a() {
                if (this.f7058a == null) {
                    this.f7058a = new C2504a();
                }
                if (this.f7059b == null) {
                    this.f7059b = Looper.getMainLooper();
                }
                return new C2490a(this.f7058a, this.f7059b);
            }
        }

        private C2490a(AbstractC2560n abstractC2560n, Account account, Looper looper) {
            this.f7056b = abstractC2560n;
            this.f7057c = looper;
        }
    }

    public C2489c(Activity activity, C2471a<O> c2471a, O o, C2490a c2490a) {
        C2662s.m13980a(activity, "Null activity is not permitted.");
        C2662s.m13980a(c2471a, "Api must not be null.");
        C2662s.m13980a(c2490a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f7047b = activity.getApplicationContext();
        this.f7048c = c2471a;
        this.f7049d = o;
        this.f7051f = c2490a.f7057c;
        this.f7050e = C2531b.m14356a(this.f7048c, this.f7049d);
        this.f7053h = new C2508ad(this);
        this.f7046a = C2548f.m14319a(this.f7047b);
        this.f7052g = this.f7046a.m14312b();
        this.f7054i = c2490a.f7056b;
        if (!(activity instanceof GoogleApiActivity)) {
            C2567u.m14227a(activity, this.f7046a, (C2531b<?>) this.f7050e);
        }
        this.f7046a.m14318a((C2489c<?>) this);
    }

    @Deprecated
    public C2489c(Activity activity, C2471a<O> c2471a, O o, AbstractC2560n abstractC2560n) {
        this(activity, (C2471a) c2471a, (C2471a.AbstractC2475d) o, new C2490a.C2491a().m14422a(abstractC2560n).m14423a(activity.getMainLooper()).m14424a());
    }

    public C2489c(Context context, C2471a<O> c2471a, O o, C2490a c2490a) {
        C2662s.m13980a(context, "Null context is not permitted.");
        C2662s.m13980a(c2471a, "Api must not be null.");
        C2662s.m13980a(c2490a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f7047b = context.getApplicationContext();
        this.f7048c = c2471a;
        this.f7049d = o;
        this.f7051f = c2490a.f7057c;
        this.f7050e = C2531b.m14356a(this.f7048c, this.f7049d);
        this.f7053h = new C2508ad(this);
        this.f7046a = C2548f.m14319a(this.f7047b);
        this.f7052g = this.f7046a.m14312b();
        this.f7054i = c2490a.f7056b;
        this.f7046a.m14318a((C2489c<?>) this);
    }

    @Deprecated
    public C2489c(Context context, C2471a<O> c2471a, O o, AbstractC2560n abstractC2560n) {
        this(context, c2471a, o, new C2490a.C2491a().m14422a(abstractC2560n).m14424a());
    }

    /* renamed from: a */
    private final <A extends C2471a.AbstractC2473b, T extends C2545d.AbstractC2546a<? extends AbstractC2500h, A>> T m14437a(int i, T t) {
        t.m14410c();
        this.f7046a.m14317a(this, i, t);
        return t;
    }

    /* renamed from: a */
    private final <TResult, A extends C2471a.AbstractC2473b> AbstractC4469g<TResult> m14436a(int i, AbstractC2562p<A, TResult> abstractC2562p) {
        C4470h c4470h = new C4470h();
        this.f7046a.m14316a(this, i, abstractC2562p, c4470h, this.f7054i);
        return c4470h.m3889a();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.common.api.a$f] */
    /* renamed from: a */
    public C2471a.AbstractC2483f m14434a(Looper looper, C2548f.C2549a<O> c2549a) {
        return this.f7048c.m14457a().mo2035a(this.f7047b, looper, m14425j().m14041a(), (C2636d) this.f7049d, (AbstractC2492d.AbstractC2493a) c2549a, (AbstractC2492d.AbstractC2494b) c2549a);
    }

    /* renamed from: a */
    public BinderC2518an m14435a(Context context, Handler handler) {
        return new BinderC2518an(context, handler, m14425j().m14041a());
    }

    /* renamed from: a */
    public <A extends C2471a.AbstractC2473b, T extends C2545d.AbstractC2546a<? extends AbstractC2500h, A>> T m14433a(T t) {
        return (T) m14437a(1, (int) t);
    }

    /* renamed from: a */
    public <TResult, A extends C2471a.AbstractC2473b> AbstractC4469g<TResult> m14432a(AbstractC2562p<A, TResult> abstractC2562p) {
        return m14436a(1, abstractC2562p);
    }

    /* renamed from: d */
    public O m14431d() {
        return this.f7049d;
    }

    /* renamed from: e */
    public C2531b<O> m14430e() {
        return this.f7050e;
    }

    /* renamed from: f */
    public final int m14429f() {
        return this.f7052g;
    }

    /* renamed from: g */
    public AbstractC2492d m14428g() {
        return this.f7053h;
    }

    /* renamed from: h */
    public Looper m14427h() {
        return this.f7051f;
    }

    /* renamed from: i */
    public Context m14426i() {
        return this.f7047b;
    }

    /* renamed from: j */
    protected C2636d.C2637a m14425j() {
        GoogleSignInAccount m14452a;
        GoogleSignInAccount m14452a2;
        return new C2636d.C2637a().m14040a((!(this.f7049d instanceof C2471a.AbstractC2475d.AbstractC2477b) || (m14452a2 = ((C2471a.AbstractC2475d.AbstractC2477b) this.f7049d).m14452a()) == null) ? this.f7049d instanceof C2471a.AbstractC2475d.AbstractC2476a ? ((C2471a.AbstractC2475d.AbstractC2476a) this.f7049d).m14453a() : null : m14452a2.m14592d()).m14038a((!(this.f7049d instanceof C2471a.AbstractC2475d.AbstractC2477b) || (m14452a = ((C2471a.AbstractC2475d.AbstractC2477b) this.f7049d).m14452a()) == null) ? Collections.emptySet() : m14452a.m14585k()).m14037b(this.f7047b.getClass().getName()).m14039a(this.f7047b.getPackageName());
    }
}
