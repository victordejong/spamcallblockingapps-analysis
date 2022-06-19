package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.auth.zzt;
import com.google.android.gms.internal.auth.zzu;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1647a.C24880a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/AccountTransfer.class */
public final class AccountTransfer {

    /* renamed from: a */
    public static final Api.ClientKey<zzu> f5364a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzu, zzn> f5365b;

    static {
        Api.ClientKey<zzu> clientKey = new Api.ClientKey<>();
        f5364a = clientKey;
        C24880a c24880a = new C24880a();
        f5365b = c24880a;
        new Api("AccountTransfer.ACCOUNT_TRANSFER_API", c24880a, clientKey);
        new zzt();
        new zzt();
    }

    private AccountTransfer() {
    }
}
