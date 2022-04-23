package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions.class */
public final class SignInOptions implements Api.ApiOptions.Optional {

    /* renamed from: j */
    public static final SignInOptions f30215j = new SignInOptions(false, false, null, false, null, null, false, null, null);

    /* renamed from: a */
    public final boolean f30216a = false;

    /* renamed from: b */
    public final boolean f30217b = false;

    /* renamed from: c */
    public final String f30218c = null;

    /* renamed from: d */
    public final boolean f30219d = false;

    /* renamed from: g */
    public final boolean f30222g = false;

    /* renamed from: e */
    public final String f30220e = null;

    /* renamed from: f */
    public final String f30221f = null;

    /* renamed from: h */
    public final Long f30223h = null;

    /* renamed from: i */
    public final Long f30224i = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions$zaa.class */
    public static final class zaa {
    }

    static {
        new zaa();
    }

    public SignInOptions(boolean z, boolean z2, String str, boolean z3, String str2, String str3, boolean z4, Long l, Long l2) {
    }

    /* renamed from: c */
    public final boolean m8655c() {
        return this.f30216a;
    }

    /* renamed from: d */
    public final boolean m8654d() {
        return this.f30217b;
    }

    /* renamed from: e */
    public final String m8653e() {
        return this.f30218c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SignInOptions)) {
            return false;
        }
        SignInOptions signInOptions = (SignInOptions) obj;
        return this.f30216a == signInOptions.f30216a && this.f30217b == signInOptions.f30217b && Objects.m17295a(this.f30218c, signInOptions.f30218c) && this.f30219d == signInOptions.f30219d && this.f30222g == signInOptions.f30222g && Objects.m17295a(this.f30220e, signInOptions.f30220e) && Objects.m17295a(this.f30221f, signInOptions.f30221f) && Objects.m17295a(this.f30223h, signInOptions.f30223h) && Objects.m17295a(this.f30224i, signInOptions.f30224i);
    }

    /* renamed from: f */
    public final boolean m8652f() {
        return this.f30219d;
    }

    /* renamed from: g */
    public final String m8651g() {
        return this.f30220e;
    }

    /* renamed from: h */
    public final String m8650h() {
        return this.f30221f;
    }

    public final int hashCode() {
        return Objects.m17294a(Boolean.valueOf(this.f30216a), Boolean.valueOf(this.f30217b), this.f30218c, Boolean.valueOf(this.f30219d), Boolean.valueOf(this.f30222g), this.f30220e, this.f30221f, this.f30223h, this.f30224i);
    }

    /* renamed from: i */
    public final boolean m8649i() {
        return this.f30222g;
    }

    /* renamed from: j */
    public final Long m8648j() {
        return this.f30223h;
    }

    /* renamed from: k */
    public final Long m8647k() {
        return this.f30224i;
    }
}
