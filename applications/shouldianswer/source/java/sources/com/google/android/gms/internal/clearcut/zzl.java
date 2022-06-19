package com.google.android.gms.internal.clearcut;

import android.os.IInterface;
import com.google.android.gms.clearcut.zzc;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzl.class */
public interface zzl extends IInterface {
    void zza(Status status);

    void zza(Status status, long j);

    void zza(Status status, zzc zzcVar);

    void zza(Status status, zze[] zzeVarArr);

    void zza(DataHolder dataHolder);

    void zzb(Status status);

    void zzb(Status status, long j);

    void zzb(Status status, zzc zzcVar);

    void zzc(Status status);
}
