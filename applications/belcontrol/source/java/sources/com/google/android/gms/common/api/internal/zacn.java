package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacn.class */
public final class zacn {
    public static final Status zaa = new Status(8, "The connection to Google Play services was lost");
    @VisibleForTesting
    public final Set<BasePendingResult<?>> zab = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final zaco zac = new zacm(this);

    public final void zaa() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zab.toArray(new BasePendingResult[0])) {
            basePendingResult.zaa((zaco) null);
            if (basePendingResult.zaa()) {
                this.zab.remove(basePendingResult);
            }
        }
    }

    public final void zaa(BasePendingResult<? extends Result> basePendingResult) {
        this.zab.add(basePendingResult);
        basePendingResult.zaa(this.zac);
    }
}
