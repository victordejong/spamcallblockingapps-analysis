package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaao.class */
final class zaao extends zabf {
    private final /* synthetic */ ConnectionResult zagm;
    private final /* synthetic */ zaan zagn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaao(zaan zaanVar, zabd zabdVar, ConnectionResult connectionResult) {
        super(zabdVar);
        this.zagn = zaanVar;
        this.zagm = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zaan() {
        this.zagn.zagj.zae(this.zagm);
    }
}
