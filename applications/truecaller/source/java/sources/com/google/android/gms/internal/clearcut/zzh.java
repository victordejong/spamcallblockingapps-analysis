package com.google.android.gms.internal.clearcut;

import android.os.RemoteException;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzh.class */
public final class zzh extends BaseImplementation.ApiMethodImpl<Status, zzj> {
    private final zze zzao;

    public zzh(zze zzeVar, GoogleApiClient googleApiClient) {
        super(ClearcutLogger.f5580o, googleApiClient);
        this.zzao = zzeVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzj zzjVar) throws RemoteException {
        zzj zzjVar2 = zzjVar;
        zzi zziVar = new zzi(this);
        try {
            zze zzeVar = this.zzao;
            ClearcutLogger.zzb zzbVar = zzeVar.f5613j;
            if (zzbVar != null) {
                zzha zzhaVar = zzeVar.f5612i;
                if (zzhaVar.zzbjp.length == 0) {
                    zzhaVar.zzbjp = zzbVar.zza();
                }
            }
            zzha zzhaVar2 = zzeVar.f5612i;
            int zzas = zzhaVar2.zzas();
            byte[] bArr = new byte[zzas];
            zzfz.zza(zzhaVar2, bArr, 0, zzas);
            zzeVar.f5605b = bArr;
            ((zzn) zzjVar2.getService()).zza(zziVar, this.zzao);
        } catch (RuntimeException e) {
            setFailedResult(new Status(10, "MessageProducer"));
        }
    }
}
