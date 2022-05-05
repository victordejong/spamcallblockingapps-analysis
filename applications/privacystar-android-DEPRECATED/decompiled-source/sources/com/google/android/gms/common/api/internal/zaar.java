package com.google.android.gms.common.api.internal;

import android.support.annotation.BinderThread;
import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zaj;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaar.class */
final class zaar extends zac {
    private final WeakReference<zaak> zagj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaar(zaak zaakVar) {
        this.zagj = new WeakReference<>(zaakVar);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zad
    @BinderThread
    public final void zab(zaj zajVar) {
        zabe zabeVar;
        zaak zaakVar = this.zagj.get();
        if (zaakVar != null) {
            zabeVar = zaakVar.zafs;
            zabeVar.zaa(new zaas(this, zaakVar, zaakVar, zajVar));
        }
    }
}
