package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.credentials.AbstractC11695a;
import com.google.android.gms.auth.api.proxy.AbstractC11725a;
import com.google.android.gms.auth.api.signin.AbstractC11730b;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.C11747g;
import com.google.android.gms.auth.api.signin.internal.C11748h;
import com.google.android.gms.common.api.AbstractC11821d;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.internal.auth_api.C13138g;
import com.google.android.gms.internal.auth_api.C13139h;
import java.util.Arrays;
/* renamed from: com.google.android.gms.auth.api.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/a.class */
public final class C11682a {

    /* renamed from: a */
    public static final C11808a.C11818g<C13139h> f38978a;

    /* renamed from: b */
    public static final C11808a.C11818g<C11747g> f38979b;

    /* renamed from: d */
    public static final C11808a<C11683a> f38981d;

    /* renamed from: e */
    public static final C11808a<GoogleSignInOptions> f38982e;

    /* renamed from: i */
    private static final C11808a.AbstractC11809a<C13139h, C11683a> f38986i;

    /* renamed from: j */
    private static final C11808a.AbstractC11809a<C11747g, GoogleSignInOptions> f38987j;
    @Deprecated

    /* renamed from: c */
    public static final C11808a<C11691c> f38980c = C11690b.f38995a;
    @Deprecated

    /* renamed from: f */
    public static final AbstractC11725a f38983f = C11690b.f38996b;

    /* renamed from: g */
    public static final AbstractC11695a f38984g = new C13138g();

    /* renamed from: h */
    public static final AbstractC11730b f38985h = new C11748h();

    @Deprecated
    /* renamed from: com.google.android.gms.auth.api.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/a$a.class */
    public static class C11683a implements AbstractC11821d {

        /* renamed from: a */
        public static final C11683a f38988a = new C11684a().mo19573a();

        /* renamed from: b */
        public final String f38989b;

        /* renamed from: c */
        public final boolean f38990c;

        /* renamed from: d */
        public final String f38991d;

        @Deprecated
        /* renamed from: com.google.android.gms.auth.api.a$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/a$a$a.class */
        public static class C11684a {

            /* renamed from: a */
            protected String f38992a;

            /* renamed from: b */
            protected Boolean f38993b;

            /* renamed from: c */
            protected String f38994c;

            public C11684a() {
                this.f38993b = Boolean.FALSE;
            }

            public C11684a(C11683a c11683a) {
                this.f38993b = Boolean.FALSE;
                this.f38992a = c11683a.f38989b;
                this.f38993b = Boolean.valueOf(c11683a.f38990c);
                this.f38994c = c11683a.f38991d;
            }

            /* renamed from: a */
            public C11684a mo19572a(String str) {
                this.f38994c = str;
                return this;
            }

            /* renamed from: a */
            public C11683a mo19573a() {
                return new C11683a(this);
            }
        }

        public C11683a(C11684a c11684a) {
            this.f38989b = c11684a.f38992a;
            this.f38990c = c11684a.f38993b.booleanValue();
            this.f38991d = c11684a.f38994c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C11683a)) {
                return false;
            }
            C11683a c11683a = (C11683a) obj;
            return C12041m.m19168a(this.f38989b, c11683a.f38989b) && this.f38990c == c11683a.f38990c && C12041m.m19168a(this.f38991d, c11683a.f38991d);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.f38989b, Boolean.valueOf(this.f38990c), this.f38991d});
        }
    }

    static {
        C11808a.C11818g<C13139h> c11818g = new C11808a.C11818g<>();
        f38978a = c11818g;
        C11808a.C11818g<C11747g> c11818g2 = new C11808a.C11818g<>();
        f38979b = c11818g2;
        C11709e c11709e = new C11709e();
        f38986i = c11709e;
        C11710f c11710f = new C11710f();
        f38987j = c11710f;
        f38981d = new C11808a<>("Auth.CREDENTIALS_API", c11709e, c11818g);
        f38982e = new C11808a<>("Auth.GOOGLE_SIGN_IN_API", c11710f, c11818g2);
    }

    private C11682a() {
    }
}
