package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcr.class */
public final class zzcr extends zzdt {
    public final /* synthetic */ Activity zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzee zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcr(zzee zzeeVar, Activity activity, String str, String str2) {
        super(zzeeVar, true);
        this.zzd = zzeeVar;
        this.zza = activity;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzd.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.setCurrentScreen(new ObjectWrapper(this.zza), this.zzb, this.zzc, this.zzh);
    }
}
