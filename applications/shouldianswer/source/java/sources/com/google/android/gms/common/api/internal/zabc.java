package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabc.class */
public final class zabc extends zabr {
    private WeakReference<zaaw> zahm;

    public zabc(zaaw zaawVar) {
        this.zahm = new WeakReference<>(zaawVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zas() {
        zaaw zaawVar = this.zahm.get();
        if (zaawVar == null) {
            return;
        }
        zaawVar.resume();
    }
}
