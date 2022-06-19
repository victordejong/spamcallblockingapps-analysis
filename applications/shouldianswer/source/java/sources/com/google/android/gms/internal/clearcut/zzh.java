package com.google.android.gms.internal.clearcut;

import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzh.class */
public final class zzh extends BaseImplementation.ApiMethodImpl<Status, zzj> {
    private final zze zzao;

    public zzh(zze zzeVar, GoogleApiClient googleApiClient) {
        super(ClearcutLogger.API, googleApiClient);
        this.zzao = zzeVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzj zzjVar) {
        zzj zzjVar2 = zzjVar;
        zzi zziVar = new zzi(this);
        try {
            zze zzeVar = this.zzao;
            if (zzeVar.zzt != null && zzeVar.zzaa.zzbjp.length == 0) {
                zzeVar.zzaa.zzbjp = zzeVar.zzt.zza();
            }
            if (zzeVar.zzan != null && zzeVar.zzaa.zzbjw.length == 0) {
                zzeVar.zzaa.zzbjw = zzeVar.zzan.zza();
            }
            zzha zzhaVar = zzeVar.zzaa;
            byte[] bArr = new byte[zzhaVar.zzas()];
            zzfz.zza(zzhaVar, bArr, 0, bArr.length);
            zzeVar.zzah = bArr;
            ((zzn) zzjVar2.getService()).zza(zziVar, this.zzao);
        } catch (RuntimeException e) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
            setFailedResult(new Status(10, "MessageProducer"));
        }
    }
}
