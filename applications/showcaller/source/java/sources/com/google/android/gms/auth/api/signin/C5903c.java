package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.C5921i;
import com.google.android.gms.auth.p268b.C5938a;
import com.google.android.gms.common.C6084b;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.api.AbstractC5996c;
import com.google.android.gms.common.api.internal.AbstractC6052o;
import com.google.android.gms.common.api.internal.C6009a;
import com.google.android.gms.common.internal.C6151n;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.AbstractC7966g;
/* renamed from: com.google.android.gms.auth.api.signin.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/c.class */
public class C5903c extends AbstractC5996c<GoogleSignInOptions> {

    /* renamed from: k */
    private static final C5905b f19015k = new C5905b(null);

    /* renamed from: l */
    private static int f19016l = C5904a.f19017a;

    /* renamed from: com.google.android.gms.auth.api.signin.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/c$a.class */
    public static final class C5904a {

        /* renamed from: a */
        public static final int f19017a = 1;

        /* renamed from: b */
        public static final int f19018b = 2;

        /* renamed from: c */
        public static final int f19019c = 3;

        /* renamed from: d */
        public static final int f19020d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f19021e = {1, 2, 3, 4};

        /* renamed from: a */
        public static int[] m17614a() {
            return (int[]) f19021e.clone();
        }
    }

    /* renamed from: com.google.android.gms.auth.api.signin.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/c$b.class */
    private static final class C5905b implements C6151n.AbstractC6152a<C5906d, GoogleSignInAccount> {
        private C5905b() {
        }

        /* synthetic */ C5905b(C5911i c5911i) {
            this();
        }

        @Override // com.google.android.gms.common.internal.C6151n.AbstractC6152a
        /* renamed from: a */
        public final /* synthetic */ GoogleSignInAccount mo17028a(C5906d c5906d) {
            return c5906d.m17613a();
        }
    }

    public C5903c(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, C5938a.f19064g, googleSignInOptions, (AbstractC6052o) new C6009a());
    }

    public C5903c(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, C5938a.f19064g, googleSignInOptions, new C6009a());
    }

    /* renamed from: v */
    private final int m17615v() {
        int i;
        synchronized (this) {
            if (f19016l == C5904a.f19017a) {
                Context m17470j = m17470j();
                C6084b m17237m = C6084b.m17237m();
                int mo17219h = m17237m.mo17219h(m17470j, C6094e.f19409a);
                if (mo17219h == 0) {
                    f19016l = C5904a.f19020d;
                } else if (m17237m.mo17225b(m17470j, mo17219h, null) != null || DynamiteModule.m16743a(m17470j, "com.google.android.gms.auth.api.fallback") == 0) {
                    f19016l = C5904a.f19018b;
                } else {
                    f19016l = C5904a.f19019c;
                }
            }
            i = f19016l;
        }
        return i;
    }

    /* renamed from: s */
    public Intent m17618s() {
        Context m17470j = m17470j();
        int i = C5911i.f19025a[m17615v() - 1];
        return i != 1 ? i != 2 ? C5921i.m17580g(m17470j, m17471i()) : C5921i.m17585b(m17470j, m17471i()) : C5921i.m17582e(m17470j, m17471i());
    }

    /* renamed from: t */
    public AbstractC7966g<Void> m17617t() {
        return C6151n.m17029b(C5921i.m17581f(m17476d(), m17470j(), m17615v() == C5904a.f19019c));
    }

    /* renamed from: u */
    public AbstractC7966g<Void> m17616u() {
        return C6151n.m17029b(C5921i.m17584c(m17476d(), m17470j(), m17615v() == C5904a.f19019c));
    }
}
