package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.signin.internal.SignInClientImpl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/zab.class */
public final class zab {

    /* renamed from: a */
    private static final Api.ClientKey<SignInClientImpl> f9823a = new Api.ClientKey<>();
    @ShowFirstParty

    /* renamed from: b */
    private static final Api.ClientKey<SignInClientImpl> f9824b = new Api.ClientKey<>();

    /* renamed from: c */
    public static final Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> f9825c = new zaa();

    /* renamed from: d */
    private static final Api.AbstractClientBuilder<SignInClientImpl, Object> f9826d = new zad();

    static {
        new Scope("profile");
        new Scope("email");
        new Api("SignIn.API", f9825c, f9823a);
        new Api("SignIn.INTERNAL_API", f9826d, f9824b);
    }
}
