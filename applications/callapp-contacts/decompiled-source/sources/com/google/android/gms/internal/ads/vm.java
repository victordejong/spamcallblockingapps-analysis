package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vm.class */
public final class vm extends uo {

    /* renamed from: a  reason: collision with root package name */
    private final String f28436a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28437b;

    public vm(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public vm(zzavy zzavyVar) {
        this(zzavyVar != null ? zzavyVar.type : "", zzavyVar != null ? zzavyVar.zzean : 1);
    }

    public vm(String str, int i) {
        this.f28436a = str;
        this.f28437b = i;
    }

    @Override // com.google.android.gms.internal.ads.ul
    public final String a() throws RemoteException {
        return this.f28436a;
    }

    @Override // com.google.android.gms.internal.ads.ul
    public final int b() throws RemoteException {
        return this.f28437b;
    }
}
