package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaac.class */
public final class zaac implements PendingResult.StatusListener {
    private final /* synthetic */ BasePendingResult zafl;
    private final /* synthetic */ zaab zafm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaac(zaab zaabVar, BasePendingResult basePendingResult) {
        this.zafm = zaabVar;
        this.zafl = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Map map;
        map = this.zafm.zafj;
        map.remove(this.zafl);
    }
}
