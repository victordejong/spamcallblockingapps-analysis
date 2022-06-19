package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaay.class */
public final class zaay extends zabq {
    private final WeakReference<zaaz> zaa;

    public zaay(zaaz zaazVar) {
        this.zaa = new WeakReference<>(zaazVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabq
    public final void zaa() {
        zaaz zaazVar = this.zaa.get();
        if (zaazVar == null) {
            return;
        }
        zaaz.zah(zaazVar);
    }
}
