package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzab.class */
public final class zzab implements zzac {
    private final /* synthetic */ zzy zzbai;
    private Long zzbaj;
    private final /* synthetic */ boolean zzbak;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(zzy zzyVar, boolean z) {
        this.zzbai = zzyVar;
        this.zzbak = z;
    }

    @Override // com.google.android.gms.tagmanager.zzac
    public final boolean zzb(Container container) {
        Clock clock;
        zzai zzaiVar;
        if (!this.zzbak) {
            return !container.isDefault();
        }
        long lastRefreshTime = container.getLastRefreshTime();
        if (this.zzbaj == null) {
            zzaiVar = this.zzbai.zzazz;
            this.zzbaj = Long.valueOf(zzaiVar.zznq());
        }
        long longValue = lastRefreshTime + this.zzbaj.longValue();
        clock = this.zzbai.zzrz;
        return longValue >= clock.currentTimeMillis();
    }
}
