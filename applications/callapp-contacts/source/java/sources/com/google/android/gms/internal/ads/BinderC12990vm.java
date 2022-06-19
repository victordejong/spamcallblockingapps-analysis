package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* renamed from: com.google.android.gms.internal.ads.vm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vm.class */
public final class BinderC12990vm extends AbstractBinderC12965uo {

    /* renamed from: a */
    private final String f49918a;

    /* renamed from: b */
    private final int f49919b;

    public BinderC12990vm(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public BinderC12990vm(zzavy zzavyVar) {
        this(zzavyVar != null ? zzavyVar.type : "", zzavyVar != null ? zzavyVar.zzean : 1);
    }

    public BinderC12990vm(String str, int i) {
        this.f49918a = str;
        this.f49919b = i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12962ul
    /* renamed from: a */
    public final String mo14076a() throws RemoteException {
        return this.f49918a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12962ul
    /* renamed from: b */
    public final int mo14075b() throws RemoteException {
        return this.f49919b;
    }
}
