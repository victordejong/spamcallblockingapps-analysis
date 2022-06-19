package com.google.android.gms.auth.api;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zbd;
import com.google.android.gms.auth.api.signin.internal.zbe;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.auth_api.zbl;
import com.google.android.gms.internal.auth_api.zbo;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.C24891d;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.C24892e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/Auth.class */
public final class Auth {
    @RecentlyNonNull

    /* renamed from: a */
    public static final Api<AuthCredentialsOptions> f5346a;
    @RecentlyNonNull

    /* renamed from: b */
    public static final Api<GoogleSignInOptions> f5347b;
    @RecentlyNonNull
    @Deprecated
    @ShowFirstParty
    @KeepForSdk

    /* renamed from: c */
    public static final ProxyApi f5348c = AuthProxy.f5362d;
    @RecentlyNonNull

    /* renamed from: d */
    public static final GoogleSignInApi f5349d = new zbd();
    @RecentlyNonNull

    /* renamed from: e */
    public static final Api.ClientKey<zbo> f5350e;
    @RecentlyNonNull

    /* renamed from: f */
    public static final Api.ClientKey<zbe> f5351f;

    /* renamed from: g */
    public static final Api.AbstractClientBuilder<zbo, AuthCredentialsOptions> f5352g;

    /* renamed from: h */
    public static final Api.AbstractClientBuilder<zbe, GoogleSignInOptions> f5353h;

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/Auth$AuthCredentialsOptions.class */
    public static class AuthCredentialsOptions implements Api.ApiOptions.Optional {
        @RecentlyNonNull

        /* renamed from: c */
        public static final AuthCredentialsOptions f5354c = new AuthCredentialsOptions(new Builder());

        /* renamed from: a */
        public final boolean f5355a;

        /* renamed from: b */
        public final String f5356b;

        @Deprecated
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder.class */
        public static class Builder {
            @RecentlyNonNull

            /* renamed from: a */
            public Boolean f5357a;
            @RecentlyNullable

            /* renamed from: b */
            public String f5358b;

            public Builder() {
                this.f5357a = Boolean.FALSE;
            }

            @ShowFirstParty
            public Builder(@RecentlyNonNull AuthCredentialsOptions authCredentialsOptions) {
                this.f5357a = Boolean.FALSE;
                AuthCredentialsOptions authCredentialsOptions2 = AuthCredentialsOptions.f5354c;
                Objects.requireNonNull(authCredentialsOptions);
                this.f5357a = Boolean.valueOf(authCredentialsOptions.f5355a);
                this.f5358b = authCredentialsOptions.f5356b;
            }
        }

        public AuthCredentialsOptions(@RecentlyNonNull Builder builder) {
            this.f5355a = builder.f5357a.booleanValue();
            this.f5356b = builder.f5358b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AuthCredentialsOptions)) {
                return false;
            }
            AuthCredentialsOptions authCredentialsOptions = (AuthCredentialsOptions) obj;
            Objects.requireNonNull(authCredentialsOptions);
            return com.google.android.gms.common.internal.Objects.m38910a(null, null) && this.f5355a == authCredentialsOptions.f5355a && com.google.android.gms.common.internal.Objects.m38910a(this.f5356b, authCredentialsOptions.f5356b);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{null, Boolean.valueOf(this.f5355a), this.f5356b});
        }
    }

    static {
        Api.ClientKey<zbo> clientKey = new Api.ClientKey<>();
        f5350e = clientKey;
        Api.ClientKey<zbe> clientKey2 = new Api.ClientKey<>();
        f5351f = clientKey2;
        C24891d c24891d = new C24891d();
        f5352g = c24891d;
        C24892e c24892e = new C24892e();
        f5353h = c24892e;
        Api<AuthProxyOptions> api = AuthProxy.f5361c;
        f5346a = new Api<>("Auth.CREDENTIALS_API", c24891d, clientKey);
        f5347b = new Api<>("Auth.GOOGLE_SIGN_IN_API", c24892e, clientKey2);
        new zbl();
    }

    private Auth() {
    }
}
