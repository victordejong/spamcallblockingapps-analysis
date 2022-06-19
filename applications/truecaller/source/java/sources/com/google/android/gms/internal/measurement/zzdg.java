package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdg.class */
public final class zzdg extends zzdt {
    public final /* synthetic */ String zza;
    public final /* synthetic */ Object zzb;
    public final /* synthetic */ zzee zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdg(zzee zzeeVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(zzeeVar, false);
        this.zzc = zzeeVar;
        this.zza = str;
        this.zzb = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzc.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.logHealthData(5, this.zza, new ObjectWrapper(this.zzb), new ObjectWrapper(null), new ObjectWrapper(null));
    }
}
