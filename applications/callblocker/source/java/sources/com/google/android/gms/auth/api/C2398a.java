package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.auth.api.p125a.AbstractC2401a;
import com.google.android.gms.auth.api.p126b.AbstractC2403a;
import com.google.android.gms.auth.api.signin.AbstractC2410b;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.C2427g;
import com.google.android.gms.auth.api.signin.internal.C2430j;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.internal.p135b.C3704g;
import com.google.android.gms.internal.p135b.C3705h;
/* renamed from: com.google.android.gms.auth.api.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/a.class */
public final class C2398a {

    /* renamed from: a */
    public static final C2471a.C2484g<C3705h> f6862a = new C2471a.C2484g<>();

    /* renamed from: b */
    public static final C2471a.C2484g<C2430j> f6863b = new C2471a.C2484g<>();

    /* renamed from: i */
    private static final C2471a.C2472a<C3705h, C2399a> f6870i = new C2406e();

    /* renamed from: j */
    private static final C2471a.C2472a<C2430j, GoogleSignInOptions> f6871j = new C2407f();
    @Deprecated

    /* renamed from: c */
    public static final C2471a<C2404c> f6864c = C2402b.f6879a;

    /* renamed from: d */
    public static final C2471a<C2399a> f6865d = new C2471a<>("Auth.CREDENTIALS_API", f6870i, f6862a);

    /* renamed from: e */
    public static final C2471a<GoogleSignInOptions> f6866e = new C2471a<>("Auth.GOOGLE_SIGN_IN_API", f6871j, f6863b);
    @Deprecated

    /* renamed from: f */
    public static final AbstractC2403a f6867f = C2402b.f6880b;

    /* renamed from: g */
    public static final AbstractC2401a f6868g = new C3704g();

    /* renamed from: h */
    public static final AbstractC2410b f6869h = new C2427g();

    @Deprecated
    /* renamed from: com.google.android.gms.auth.api.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/a$a.class */
    public static class C2399a implements C2471a.AbstractC2475d.AbstractC2481f {

        /* renamed from: a */
        public static final C2399a f6872a = new C2400a().m14600a();

        /* renamed from: b */
        private final String f6873b;

        /* renamed from: c */
        private final boolean f6874c;

        /* renamed from: d */
        private final String f6875d;

        @Deprecated
        /* renamed from: com.google.android.gms.auth.api.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/a$a$a.class */
        public static class C2400a {

            /* renamed from: a */
            protected String f6876a;

            /* renamed from: b */
            protected Boolean f6877b;

            /* renamed from: c */
            protected String f6878c;

            public C2400a() {
                this.f6877b = false;
            }

            public C2400a(C2399a c2399a) {
                this.f6877b = false;
                this.f6876a = c2399a.f6873b;
                this.f6877b = Boolean.valueOf(c2399a.f6874c);
                this.f6878c = c2399a.f6875d;
            }

            /* renamed from: a */
            public C2400a m14599a(String str) {
                this.f6878c = str;
                return this;
            }

            /* renamed from: a */
            public C2399a m14600a() {
                return new C2399a(this);
            }
        }

        public C2399a(C2400a c2400a) {
            this.f6873b = c2400a.f6876a;
            this.f6874c = c2400a.f6877b.booleanValue();
            this.f6875d = c2400a.f6878c;
        }

        /* renamed from: a */
        public final Bundle m14604a() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.f6873b);
            bundle.putBoolean("force_save_dialog", this.f6874c);
            bundle.putString("log_session_id", this.f6875d);
            return bundle;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj != this) {
                if (!(obj instanceof C2399a)) {
                    z = false;
                } else {
                    C2399a c2399a = (C2399a) obj;
                    if (!C2657q.m13992a(this.f6873b, c2399a.f6873b) || this.f6874c != c2399a.f6874c || !C2657q.m13992a(this.f6875d, c2399a.f6875d)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C2657q.m13991a(this.f6873b, Boolean.valueOf(this.f6874c), this.f6875d);
        }
    }
}
