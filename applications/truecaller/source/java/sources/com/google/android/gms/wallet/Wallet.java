package com.google.android.gms.wallet;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.wallet.zzab;
import com.google.android.gms.internal.wallet.zzac;
import com.google.android.gms.internal.wallet.zzae;
import com.google.android.gms.internal.wallet.zzv;
import e.m.a.f.s.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/Wallet.class */
public final class Wallet {
    @RecentlyNonNull

    /* renamed from: a */
    public static final Api<WalletOptions> f6551a;

    /* renamed from: b */
    public static final Api.ClientKey<zzab> f6552b;

    /* renamed from: c */
    public static final Api.AbstractClientBuilder<zzab, WalletOptions> f6553c;

    static {
        Api.ClientKey<zzab> clientKey = new Api.ClientKey<>();
        f6552b = clientKey;
        b bVar = new b();
        f6553c = bVar;
        f6551a = new Api<>("Wallet.API", bVar, clientKey);
        new zzv();
        new zzae();
        new zzac();
    }

    private Wallet() {
    }
}
