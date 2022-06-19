package com.google.android.gms.internal.safetynet;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.safetynet.zzk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzl.class */
public final class zzl extends zzk.zzb {
    private final /* synthetic */ byte[] zzw;
    private final /* synthetic */ String zzx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzl(GoogleApiClient googleApiClient, byte[] bArr, String str) {
        super(googleApiClient);
        this.zzw = bArr;
        this.zzx = str;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzx zzxVar) throws RemoteException {
        zzx zzxVar2 = zzxVar;
        zzg zzgVar = this.zzaf;
        byte[] bArr = this.zzw;
        String str = this.zzx;
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = zzxVar2.zzb("com.google.android.safetynet.ATTEST_API_KEY");
        }
        ((zzi) zzxVar2.getService()).zza(zzgVar, bArr, str2);
    }
}
