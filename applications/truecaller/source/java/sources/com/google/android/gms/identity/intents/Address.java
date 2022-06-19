package com.google.android.gms.identity.intents;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.identity.zze;
import p193e.p1577m.p1578a.p1642f.p1664i.p1665a.C25018a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/Address.class */
public final class Address {

    /* renamed from: a */
    public static final Api.ClientKey<zze> f6202a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zze, AddressOptions> f6203b;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/Address$AddressOptions.class */
    public static final class AddressOptions implements Api.ApiOptions.HasOptions {
    }

    static {
        Api.ClientKey<zze> clientKey = new Api.ClientKey<>();
        f6202a = clientKey;
        C25018a c25018a = new C25018a();
        f6203b = c25018a;
        new Api("Address.API", c25018a, clientKey);
    }
}
