package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcx.class */
public final class zzcx extends zzdt {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Context zzc;
    public final /* synthetic */ Bundle zzd;
    public final /* synthetic */ zzee zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcx(zzee zzeeVar, String str, String str2, Context context, Bundle bundle) {
        super(zzeeVar, true);
        this.zze = zzeeVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = context;
        this.zzd = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() {
        boolean zzV;
        String str;
        String str2;
        String str3;
        zzcc zzccVar;
        int m38739b;
        zzcc zzccVar2;
        String str4;
        String unused;
        try {
            zzee zzeeVar = this.zze;
            zzV = zzee.zzV(this.zza, this.zzb);
            if (zzV) {
                str3 = this.zzb;
                str2 = this.zza;
                str4 = this.zze.zzd;
                str = str4;
            } else {
                str3 = null;
                str2 = null;
                str = null;
            }
            Objects.requireNonNull(this.zzc, "null reference");
            zzee zzeeVar2 = this.zze;
            zzeeVar2.zzj = zzeeVar2.zzf(this.zzc, true);
            zzccVar = this.zze.zzj;
            if (zzccVar == null) {
                unused = this.zze.zzd;
                return;
            }
            int m38740a = DynamiteModule.m38740a(this.zzc, ModuleDescriptor.MODULE_ID);
            zzcl zzclVar = new zzcl(55005L, Math.max(m38740a, m38739b), DynamiteModule.m38739b(this.zzc, ModuleDescriptor.MODULE_ID) < m38740a, str, str2, str3, this.zzd, C26232y.m2311q2(this.zzc));
            zzccVar2 = this.zze.zzj;
            Objects.requireNonNull(zzccVar2, "null reference");
            zzccVar2.initialize(new ObjectWrapper(this.zzc), zzclVar, this.zzh);
        } catch (Exception e) {
            this.zze.zzS(e, true, false);
        }
    }
}
