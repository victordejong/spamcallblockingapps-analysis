package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import com.google.android.gms.common.api.zac;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacr.class */
public final class zacr implements IBinder.DeathRecipient, zacs {
    private final WeakReference<BasePendingResult<?>> zalb;
    private final WeakReference<zac> zalc;
    private final WeakReference<IBinder> zald;

    private zacr(BasePendingResult<?> basePendingResult, zac zacVar, IBinder iBinder) {
        this.zalc = new WeakReference<>(zacVar);
        this.zalb = new WeakReference<>(basePendingResult);
        this.zald = new WeakReference<>(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zacr(BasePendingResult basePendingResult, zac zacVar, IBinder iBinder, zacq zacqVar) {
        this(basePendingResult, null, iBinder);
    }

    private final void zaby() {
        BasePendingResult<?> basePendingResult = this.zalb.get();
        zac zacVar = this.zalc.get();
        if (!(zacVar == null || basePendingResult == null)) {
            zacVar.remove(basePendingResult.zam().intValue());
        }
        IBinder iBinder = this.zald.get();
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
            }
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        zaby();
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void zac(BasePendingResult<?> basePendingResult) {
        zaby();
    }
}
