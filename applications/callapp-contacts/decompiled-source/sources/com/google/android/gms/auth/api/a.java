package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.b;
import com.google.android.gms.auth.api.signin.internal.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.auth_api.h;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a.g<h> f22450a;

    /* renamed from: b  reason: collision with root package name */
    public static final a.g<g> f22451b;

    /* renamed from: d  reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<C0450a> f22453d;
    public static final com.google.android.gms.common.api.a<GoogleSignInOptions> e;
    private static final a.AbstractC0453a<h, C0450a> i;
    private static final a.AbstractC0453a<g, GoogleSignInOptions> j;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<c> f22452c = b.f22461a;
    @Deprecated
    public static final com.google.android.gms.auth.api.proxy.a f = b.f22462b;
    public static final com.google.android.gms.auth.api.credentials.a g = new com.google.android.gms.internal.auth_api.g();
    public static final b h = new com.google.android.gms.auth.api.signin.internal.h();

    @Deprecated
    /* renamed from: com.google.android.gms.auth.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/a$a.class */
    public static class C0450a implements d {

        /* renamed from: a  reason: collision with root package name */
        public static final C0450a f22454a = new C0451a().a();

        /* renamed from: b  reason: collision with root package name */
        public final String f22455b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f22456c;

        /* renamed from: d  reason: collision with root package name */
        public final String f22457d;

        @Deprecated
        /* renamed from: com.google.android.gms.auth.api.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/a$a$a.class */
        public static class C0451a {

            /* renamed from: a  reason: collision with root package name */
            protected String f22458a;

            /* renamed from: b  reason: collision with root package name */
            protected Boolean f22459b;

            /* renamed from: c  reason: collision with root package name */
            protected String f22460c;

            public C0451a() {
                this.f22459b = Boolean.FALSE;
            }

            public C0451a(C0450a aVar) {
                this.f22459b = Boolean.FALSE;
                this.f22458a = aVar.f22455b;
                this.f22459b = Boolean.valueOf(aVar.f22456c);
                this.f22460c = aVar.f22457d;
            }

            public C0451a a(String str) {
                this.f22460c = str;
                return this;
            }

            public C0450a a() {
                return new C0450a(this);
            }
        }

        public C0450a(C0451a aVar) {
            this.f22455b = aVar.f22458a;
            this.f22456c = aVar.f22459b.booleanValue();
            this.f22457d = aVar.f22460c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0450a)) {
                return false;
            }
            C0450a aVar = (C0450a) obj;
            return m.a(this.f22455b, aVar.f22455b) && this.f22456c == aVar.f22456c && m.a(this.f22457d, aVar.f22457d);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.f22455b, Boolean.valueOf(this.f22456c), this.f22457d});
        }
    }

    static {
        a.g<h> gVar = new a.g<>();
        f22450a = gVar;
        a.g<g> gVar2 = new a.g<>();
        f22451b = gVar2;
        e eVar = new e();
        i = eVar;
        f fVar = new f();
        j = fVar;
        f22453d = new com.google.android.gms.common.api.a<>("Auth.CREDENTIALS_API", eVar, gVar);
        e = new com.google.android.gms.common.api.a<>("Auth.GOOGLE_SIGN_IN_API", fVar, gVar2);
    }

    private a() {
    }
}
