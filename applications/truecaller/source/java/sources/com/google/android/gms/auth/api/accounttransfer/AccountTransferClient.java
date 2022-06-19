package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.auth.zzu;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1647a.C24881b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/AccountTransferClient.class */
public class AccountTransferClient extends GoogleApi<zzn> {

    /* renamed from: a */
    public static final Api.ClientKey<zzu> f5366a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzu, zzn> f5367b;

    static {
        Api.ClientKey<zzu> clientKey = new Api.ClientKey<>();
        f5366a = clientKey;
        C24881b c24881b = new C24881b();
        f5367b = c24881b;
        new Api("AccountTransfer.ACCOUNT_TRANSFER_API", c24881b, clientKey);
    }
}
