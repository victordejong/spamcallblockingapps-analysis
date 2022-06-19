package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.signin.internal.SignInClientImpl;
import com.razorpay.AnalyticsConstants;
import e.m.a.f.o.a;
import e.m.a.f.o.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/signin/zad.class */
public final class zad {

    /* renamed from: a */
    public static final Api.ClientKey<SignInClientImpl> f6466a;
    @ShowFirstParty

    /* renamed from: b */
    public static final Api.ClientKey<SignInClientImpl> f6467b;

    /* renamed from: c */
    public static final Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> f6468c;

    /* renamed from: d */
    public static final Api.AbstractClientBuilder<SignInClientImpl, zac> f6469d;

    /* renamed from: e */
    public static final Api<SignInOptions> f6470e;

    static {
        Api.ClientKey<SignInClientImpl> clientKey = new Api.ClientKey<>();
        f6466a = clientKey;
        Api.ClientKey<SignInClientImpl> clientKey2 = new Api.ClientKey<>();
        f6467b = clientKey2;
        a aVar = new a();
        f6468c = aVar;
        b bVar = new b();
        f6469d = bVar;
        new Scope("profile");
        new Scope(AnalyticsConstants.EMAIL);
        f6470e = new Api<>("SignIn.API", aVar, clientKey);
        new Api("SignIn.INTERNAL_API", bVar, clientKey2);
    }
}
