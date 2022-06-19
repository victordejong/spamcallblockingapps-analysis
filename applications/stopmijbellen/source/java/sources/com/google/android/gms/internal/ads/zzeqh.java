package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqh.class */
public final class zzeqh implements zzevn<zzeqi> {
    private final zzevn<zzevs> zza;
    private final zzfef zzb;
    private final Context zzc;
    private final zzcik zzd;

    public zzeqh(zzerw<zzevs> zzerwVar, zzfef zzfefVar, Context context, zzcik zzcikVar) {
        this.zza = zzerwVar;
        this.zzb = zzfefVar;
        this.zzc = context;
        this.zzd = zzcikVar;
    }

    public final /* synthetic */ zzeqi zza(zzevs zzevsVar) {
        boolean z;
        String str;
        float f;
        String str2;
        int i;
        int i2;
        DisplayMetrics displayMetrics;
        zzbfi zzbfiVar = this.zzb.zze;
        zzbfi[] zzbfiVarArr = zzbfiVar.zzg;
        if (zzbfiVarArr != null) {
            int length = zzbfiVarArr.length;
            String str3 = null;
            int i3 = 0;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                boolean z5 = z4;
                str = str3;
                z = z5;
                if (i3 >= length) {
                    break;
                }
                zzbfi zzbfiVar2 = zzbfiVarArr[i3];
                boolean z6 = zzbfiVar2.zzi;
                boolean z7 = z2;
                String str4 = str3;
                if (!z6) {
                    z7 = z2;
                    str4 = str3;
                    if (!z2) {
                        str4 = zzbfiVar2.zza;
                        z7 = true;
                    }
                }
                boolean z8 = z3;
                boolean z9 = z5;
                if (z6) {
                    if (!z3) {
                        z8 = true;
                        z9 = true;
                    } else {
                        z8 = true;
                        z9 = z5;
                    }
                }
                if (z7) {
                    str = str4;
                    z = z9;
                    if (z8) {
                        break;
                    }
                }
                i3++;
                z2 = z7;
                z3 = z8;
                str3 = str4;
                z4 = z9;
            }
        } else {
            str = zzbfiVar.zza;
            z = zzbfiVar.zzi;
        }
        Resources resources = this.zzc.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            str2 = null;
            f = 0.0f;
            i = 0;
            i2 = 0;
        } else {
            f = displayMetrics.density;
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
            str2 = this.zzd.zzh().zzl();
        }
        StringBuilder sb = new StringBuilder();
        zzbfi[] zzbfiVarArr2 = zzbfiVar.zzg;
        if (zzbfiVarArr2 != null) {
            boolean z10 = false;
            for (zzbfi zzbfiVar3 : zzbfiVarArr2) {
                if (zzbfiVar3.zzi) {
                    z10 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i4 = zzbfiVar3.zze;
                    int i5 = i4;
                    if (i4 == -1) {
                        i5 = f != 0.0f ? (int) (zzbfiVar3.zzf / f) : -1;
                    }
                    sb.append(i5);
                    sb.append("x");
                    int i6 = zzbfiVar3.zzb;
                    int i7 = i6;
                    if (i6 == -2) {
                        i7 = f != 0.0f ? (int) (zzbfiVar3.zzc / f) : -2;
                    }
                    sb.append(i7);
                }
            }
            if (z10) {
                if (sb.length() != 0) {
                    sb.insert(0, "|");
                }
                sb.insert(0, "320x50");
            }
        }
        return new zzeqi(zzbfiVar, str, z, sb.toString(), f, i, i2, str2, this.zzb.zzp);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeqi> zzb() {
        return zzfwq.zzm(this.zza.zzb(), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzeqg
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                return zzeqh.this.zza((zzevs) obj);
            }
        }, zzcjm.zzf);
    }
}
