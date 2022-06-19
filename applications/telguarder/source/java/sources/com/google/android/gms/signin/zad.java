package com.google.android.gms.signin;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.internal.SignInClientImpl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/zad.class */
public final class zad {
    public static final Api.ClientKey<SignInClientImpl> zaa;
    public static final Api.ClientKey<SignInClientImpl> zab;
    public static final Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> zac;
    static final Api.AbstractClientBuilder<SignInClientImpl, zac> zad;
    public static final Scope zae = new Scope(Scopes.PROFILE);
    public static final Scope zaf = new Scope("email");
    public static final Api<SignInOptions> zag;
    public static final Api<zac> zah;

    static {
        Api.ClientKey<SignInClientImpl> clientKey = new Api.ClientKey<>();
        zaa = clientKey;
        Api.ClientKey<SignInClientImpl> clientKey2 = new Api.ClientKey<>();
        zab = clientKey2;
        zaa zaaVar = new zaa();
        zac = zaaVar;
        zab zabVar = new zab();
        zad = zabVar;
        zag = new Api<>("SignIn.API", zaaVar, clientKey);
        zah = new Api<>("SignIn.INTERNAL_API", zabVar, clientKey2);
    }
}
