package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.C2398a;
import com.google.android.gms.auth.api.signin.internal.C2429i;
import com.google.android.gms.common.C2591e;
import com.google.android.gms.common.api.C2489c;
import com.google.android.gms.common.api.internal.AbstractC2560n;
import com.google.android.gms.common.api.internal.C2504a;
import com.google.android.gms.common.internal.C2659r;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.AbstractC4469g;
/* renamed from: com.google.android.gms.auth.api.signin.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/c.class */
public class C2411c extends C2489c<GoogleSignInOptions> {

    /* renamed from: b */
    private static final C2412a f6928b = new C2412a(null);

    /* renamed from: c */
    private static int f6929c = C2413b.f6930a;

    /* renamed from: com.google.android.gms.auth.api.signin.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/c$a.class */
    private static final class C2412a implements C2659r.AbstractC2660a<C2414d, GoogleSignInAccount> {
        private C2412a() {
        }

        /* synthetic */ C2412a(C2419i c2419i) {
            this();
        }

        @Override // com.google.android.gms.common.internal.C2659r.AbstractC2660a
        /* renamed from: a */
        public final /* synthetic */ GoogleSignInAccount mo13987a(C2414d c2414d) {
            return c2414d.m14544a();
        }
    }

    /* renamed from: com.google.android.gms.auth.api.signin.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/c$b.class */
    public static final class C2413b {

        /* renamed from: a */
        public static final int f6930a = 1;

        /* renamed from: b */
        public static final int f6931b = 2;

        /* renamed from: c */
        public static final int f6932c = 3;

        /* renamed from: d */
        public static final int f6933d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f6934e = {f6930a, f6931b, f6932c, f6933d};

        /* renamed from: a */
        public static int[] m14545a() {
            return (int[]) f6934e.clone();
        }
    }

    public C2411c(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, C2398a.f6866e, googleSignInOptions, (AbstractC2560n) new C2504a());
    }

    public C2411c(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, C2398a.f6866e, googleSignInOptions, new C2504a());
    }

    /* renamed from: k */
    private final int m14546k() {
        int i;
        synchronized (this) {
            if (f6929c == C2413b.f6930a) {
                Context i2 = m14426i();
                C2591e m14185a = C2591e.m14185a();
                int mo14163b = m14185a.mo14163b(i2, 12451000);
                if (mo14163b == 0) {
                    f6929c = C2413b.f6933d;
                } else if (m14185a.mo14167a(i2, mo14163b, (String) null) != null || DynamiteModule.m13790a(i2, "com.google.android.gms.auth.api.fallback") == 0) {
                    f6929c = C2413b.f6931b;
                } else {
                    f6929c = C2413b.f6932c;
                }
            }
            i = f6929c;
        }
        return i;
    }

    /* renamed from: a */
    public Intent m14549a() {
        Intent m14515a;
        Context i = m14426i();
        switch (C2419i.f6938a[m14546k() - 1]) {
            case 1:
                m14515a = C2429i.m14512b(i, m14431d());
                break;
            case 2:
                m14515a = C2429i.m14515a(i, m14431d());
                break;
            default:
                m14515a = C2429i.m14510c(i, m14431d());
                break;
        }
        return m14515a;
    }

    /* renamed from: b */
    public AbstractC4469g<Void> m14548b() {
        return C2659r.m13989a(C2429i.m14513a(m14428g(), m14426i(), m14546k() == C2413b.f6932c));
    }

    /* renamed from: c */
    public AbstractC4469g<Void> m14547c() {
        return C2659r.m13989a(C2429i.m14511b(m14428g(), m14426i(), m14546k() == C2413b.f6932c));
    }
}
