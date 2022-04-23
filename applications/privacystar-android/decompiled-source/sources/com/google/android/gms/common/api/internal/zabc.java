package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabc.class */
public final class zabc extends zabr {
    private WeakReference<zaaw> zahl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabc(zaaw zaawVar) {
        this.zahl = new WeakReference<>(zaawVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zas() {
        zaaw zaawVar = this.zahl.get();
        if (zaawVar != null) {
            zaawVar.resume();
        }
    }
}
