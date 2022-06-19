package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zak;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaao.class */
final class zaao extends zac {
    private final WeakReference<zaar> zaa;

    public zaao(zaar zaarVar) {
        this.zaa = new WeakReference<>(zaarVar);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void zab(zak zakVar) {
        zabd zabdVar;
        zaar zaarVar = this.zaa.get();
        if (zaarVar == null) {
            return;
        }
        zabdVar = zaarVar.zaa;
        zabdVar.zar(new zaan(this, zaarVar, zaarVar, zakVar));
    }
}
