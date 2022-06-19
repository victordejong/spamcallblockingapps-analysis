package com.google.android.gms.auth.p268b;

import android.os.Bundle;
import com.google.android.gms.auth.api.credentials.AbstractC5881a;
import com.google.android.gms.auth.api.proxy.AbstractC5897a;
import com.google.android.gms.auth.api.signin.AbstractC5902b;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.C5919g;
import com.google.android.gms.auth.api.signin.internal.C5920h;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.internal.auth_api.C7276f;
import com.google.android.gms.internal.auth_api.C7277g;
/* renamed from: com.google.android.gms.auth.b.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/b/a.class */
public final class C5938a {

    /* renamed from: a */
    public static final C5984a.C5994g<C7277g> f19058a;

    /* renamed from: b */
    public static final C5984a.C5994g<C5919g> f19059b;

    /* renamed from: c */
    private static final C5984a.AbstractC5985a<C7277g, C5939a> f19060c;

    /* renamed from: d */
    private static final C5984a.AbstractC5985a<C5919g, GoogleSignInOptions> f19061d;

    /* renamed from: f */
    public static final C5984a<C5939a> f19063f;

    /* renamed from: g */
    public static final C5984a<GoogleSignInOptions> f19064g;
    @Deprecated

    /* renamed from: e */
    public static final C5984a<C5942c> f19062e = C5941b.f19077c;
    @Deprecated

    /* renamed from: h */
    public static final AbstractC5897a f19065h = C5941b.f19078d;

    /* renamed from: i */
    public static final AbstractC5881a f19066i = new C7276f();

    /* renamed from: j */
    public static final AbstractC5902b f19067j = new C5920h();

    @Deprecated
    /* renamed from: com.google.android.gms.auth.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/b/a$a.class */
    public static class C5939a implements C5984a.AbstractC5988d {

        /* renamed from: d */
        public static final C5939a f19068d = new C5940a().m17562b();

        /* renamed from: e */
        private final String f19069e;

        /* renamed from: f */
        private final boolean f19070f;

        /* renamed from: g */
        private final String f19071g;

        @Deprecated
        /* renamed from: com.google.android.gms.auth.b.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/b/a$a$a.class */
        public static class C5940a {

            /* renamed from: a */
            protected String f19072a;

            /* renamed from: b */
            protected Boolean f19073b;

            /* renamed from: c */
            protected String f19074c;

            public C5940a() {
                this.f19073b = Boolean.FALSE;
            }

            public C5940a(C5939a c5939a) {
                this.f19073b = Boolean.FALSE;
                this.f19072a = c5939a.f19069e;
                this.f19073b = Boolean.valueOf(c5939a.f19070f);
                this.f19074c = c5939a.f19071g;
            }

            /* renamed from: a */
            public C5940a m17563a(String str) {
                this.f19074c = str;
                return this;
            }

            /* renamed from: b */
            public C5939a m17562b() {
                return new C5939a(this);
            }
        }

        public C5939a(C5940a c5940a) {
            this.f19069e = c5940a.f19072a;
            this.f19070f = c5940a.f19073b.booleanValue();
            this.f19071g = c5940a.f19074c;
        }

        /* renamed from: a */
        public final Bundle m17567a() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.f19069e);
            bundle.putBoolean("force_save_dialog", this.f19070f);
            bundle.putString("log_session_id", this.f19071g);
            return bundle;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C5939a)) {
                return false;
            }
            C5939a c5939a = (C5939a) obj;
            return C6147m.m17044a(this.f19069e, c5939a.f19069e) && this.f19070f == c5939a.f19070f && C6147m.m17044a(this.f19071g, c5939a.f19071g);
        }

        public int hashCode() {
            return C6147m.m17043b(this.f19069e, Boolean.valueOf(this.f19070f), this.f19071g);
        }
    }

    static {
        C5984a.C5994g<C7277g> c5994g = new C5984a.C5994g<>();
        f19058a = c5994g;
        C5984a.C5994g<C5919g> c5994g2 = new C5984a.C5994g<>();
        f19059b = c5994g2;
        C5944e c5944e = new C5944e();
        f19060c = c5944e;
        C5945f c5945f = new C5945f();
        f19061d = c5945f;
        f19063f = new C5984a<>("Auth.CREDENTIALS_API", c5944e, c5994g);
        f19064g = new C5984a<>("Auth.GOOGLE_SIGN_IN_API", c5945f, c5994g2);
    }
}
