package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zaj;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaar.class */
final class zaar extends zac {
    private final WeakReference<zaak> zagk;

    public zaar(zaak zaakVar) {
        this.zagk = new WeakReference<>(zaakVar);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zad
    public final void zab(zaj zajVar) {
        zabe zabeVar;
        zaak zaakVar = this.zagk.get();
        if (zaakVar == null) {
            return;
        }
        zabeVar = zaakVar.zaft;
        zabeVar.zaa(new zaas(this, zaakVar, zaakVar, zajVar));
    }
}
