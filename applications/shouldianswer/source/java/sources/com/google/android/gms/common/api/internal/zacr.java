package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import com.google.android.gms.common.api.zac;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacr.class */
public final class zacr implements IBinder.DeathRecipient, zacs {
    private final WeakReference<BasePendingResult<?>> zalc;
    private final WeakReference<zac> zald;
    private final WeakReference<IBinder> zale;

    private zacr(BasePendingResult<?> basePendingResult, zac zacVar, IBinder iBinder) {
        this.zald = new WeakReference<>(zacVar);
        this.zalc = new WeakReference<>(basePendingResult);
        this.zale = new WeakReference<>(iBinder);
    }

    public /* synthetic */ zacr(BasePendingResult basePendingResult, zac zacVar, IBinder iBinder, zacq zacqVar) {
        this(basePendingResult, null, iBinder);
    }

    private final void zaby() {
        BasePendingResult<?> basePendingResult = this.zalc.get();
        zac zacVar = this.zald.get();
        if (zacVar != null && basePendingResult != null) {
            zacVar.remove(basePendingResult.zam().intValue());
        }
        IBinder iBinder = this.zale.get();
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
