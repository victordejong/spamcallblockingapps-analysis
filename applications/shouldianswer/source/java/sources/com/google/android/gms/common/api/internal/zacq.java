package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacq.class */
public final class zacq implements zacs {
    private final /* synthetic */ zacp zalb;

    public zacq(zacp zacpVar) {
        this.zalb = zacpVar;
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void zac(BasePendingResult<?> basePendingResult) {
        this.zalb.zakz.remove(basePendingResult);
    }
}
