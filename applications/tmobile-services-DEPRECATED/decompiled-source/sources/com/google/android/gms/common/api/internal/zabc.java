package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabc.class */
public final class zabc extends zabp {

    /* renamed from: a */
    private WeakReference<zaaw> f7214a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabc(zaaw zaawVar) {
        this.f7214a = new WeakReference<>(zaawVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabp
    /* renamed from: a */
    public final void mo14716a() {
        zaaw zaawVar = this.f7214a.get();
        if (zaawVar != null) {
            zaawVar.m14812o();
        }
    }
}
