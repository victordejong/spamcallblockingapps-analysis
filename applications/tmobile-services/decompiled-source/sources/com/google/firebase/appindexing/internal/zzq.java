package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.icing.zzaa;
import com.google.android.gms.internal.icing.zzaj;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzq.class */
final class zzq extends zzs {
    private final /* synthetic */ zza[] zzfm;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzq(zzn zznVar, zza[] zzaVarArr) {
        super(null);
        this.zzfm = zzaVarArr;
    }

    @Override // com.google.firebase.appindexing.internal.zzs
    protected final void zza(zzaa zzaaVar) throws RemoteException {
        zzaaVar.mo14057f0(new zzaj.zzc(this), this.zzfm);
    }
}
