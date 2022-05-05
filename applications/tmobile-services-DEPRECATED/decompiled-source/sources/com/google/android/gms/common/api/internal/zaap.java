package com.google.android.gms.common.api.internal;

import androidx.annotation.BinderThread;
import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zak;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaap.class */
final class zaap extends zad {

    /* renamed from: a */
    private final WeakReference<zaak> f7172a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaap(zaak zaakVar) {
        this.f7172a = new WeakReference<>(zaakVar);
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    @BinderThread
    /* renamed from: E */
    public final void mo10849E(zak zakVar) {
        zabe zabeVar;
        zaak zaakVar = this.f7172a.get();
        if (zaakVar != null) {
            zabeVar = zaakVar.f7143a;
            zabeVar.m14793f(new zaas(this, zaakVar, zaakVar, zakVar));
        }
    }
}
