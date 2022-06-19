package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzems.class */
public final class zzems implements zzery<zzemt> {
    private final zzery<zzesd> zza;
    private final zzfar zzb;
    private final Context zzc;
    private final zzcge zzd;

    public zzems(zzeoh<zzesd> zzeohVar, zzfar zzfarVar, Context context, zzcge zzcgeVar) {
        this.zza = zzeohVar;
        this.zzb = zzfarVar;
        this.zzc = context;
        this.zzd = zzcgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzemt> zza() {
        return zzfsd.zzj(this.zza.zza(), new zzfln(this) { // from class: com.google.android.gms.internal.ads.zzemr
            private final zzems zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                return this.zza.zzb((zzesd) obj);
            }
        }, zzchg.zzf);
    }

    public final /* synthetic */ zzemt zzb(zzesd zzesdVar) {
        boolean z;
        String str;
        float f;
        String str2;
        int i;
        int i2;
        DisplayMetrics displayMetrics;
        zzbdl zzbdlVar = this.zzb.zze;
        zzbdl[] zzbdlVarArr = zzbdlVar.zzg;
        if (zzbdlVarArr != null) {
            int length = zzbdlVarArr.length;
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
                zzbdl zzbdlVar2 = zzbdlVarArr[i3];
                boolean z6 = zzbdlVar2.zzi;
                boolean z7 = z2;
                String str4 = str3;
                if (!z6) {
                    z7 = z2;
                    str4 = str3;
                    if (!z2) {
                        str4 = zzbdlVar2.zza;
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
            str = zzbdlVar.zza;
            z = zzbdlVar.zzi;
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
            str2 = this.zzd.zzp().zzz();
        }
        StringBuilder sb = new StringBuilder();
        zzbdl[] zzbdlVarArr2 = zzbdlVar.zzg;
        if (zzbdlVarArr2 != null) {
            boolean z10 = false;
            for (zzbdl zzbdlVar3 : zzbdlVarArr2) {
                if (zzbdlVar3.zzi) {
                    z10 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i4 = zzbdlVar3.zze;
                    int i5 = i4;
                    if (i4 == -1) {
                        i5 = f != 0.0f ? (int) (zzbdlVar3.zzf / f) : -1;
                    }
                    sb.append(i5);
                    sb.append("x");
                    int i6 = zzbdlVar3.zzb;
                    int i7 = i6;
                    if (i6 == -2) {
                        i7 = f != 0.0f ? (int) (zzbdlVar3.zzc / f) : -2;
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
        return new zzemt(zzbdlVar, str, z, sb.toString(), f, i, i2, str2, this.zzb.zzp);
    }
}
