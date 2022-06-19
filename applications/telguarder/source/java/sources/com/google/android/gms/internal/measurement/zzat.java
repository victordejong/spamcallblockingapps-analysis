package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzat.class */
public final class zzat extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ Object zzb;
    final /* synthetic */ zzbr zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzat(zzbr zzbrVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(zzbrVar, false);
        this.zzc = zzbrVar;
        this.zza = str;
        this.zzb = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzc.zzk;
        zzpVar.logHealthData(5, this.zza, ObjectWrapper.wrap(this.zzb), ObjectWrapper.wrap(null), ObjectWrapper.wrap(null));
    }
}
