package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.icing.zzab;
import com.google.android.gms.internal.icing.zzai;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzp.class */
final class zzp extends zzr {
    private final /* synthetic */ zza[] zzda;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzp(zzo zzoVar, zza[] zzaVarArr) {
        super(null);
        this.zzda = zzaVarArr;
    }

    @Override // com.google.firebase.appindexing.internal.zzr
    protected final void zza(zzab zzabVar) throws RemoteException {
        zzabVar.zza(new zzai.zzd(this), this.zzda);
    }
}
