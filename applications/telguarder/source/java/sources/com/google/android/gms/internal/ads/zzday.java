package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzday.class */
public final class zzday implements zzdfi<zzdaz> {
    private final Context context;
    private final zzayo zzbqd;
    private final zzdnp zzfwy;
    private final zzdfi<zzdfp> zzhao;

    public zzday(zzdch<zzdfp> zzdchVar, zzdnp zzdnpVar, Context context, zzayo zzayoVar) {
        this.zzhao = zzdchVar;
        this.zzfwy = zzdnpVar;
        this.context = context;
        this.zzbqd = zzayoVar;
    }

    public final /* synthetic */ zzdaz zza(zzdfp zzdfpVar) {
        boolean z;
        String str;
        float f;
        String str2;
        int i;
        int i2;
        zzvs[] zzvsVarArr;
        DisplayMetrics displayMetrics;
        zzvs zzvsVar = this.zzfwy.zzbpo;
        if (zzvsVar.zzcih != null) {
            zzvs[] zzvsVarArr2 = zzvsVar.zzcih;
            int length = zzvsVarArr2.length;
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
                zzvs zzvsVar2 = zzvsVarArr2[i3];
                boolean z6 = z2;
                String str4 = str3;
                if (!zzvsVar2.zzcii) {
                    z6 = z2;
                    str4 = str3;
                    if (!z2) {
                        str4 = zzvsVar2.zzacy;
                        z6 = true;
                    }
                }
                boolean z7 = z3;
                boolean z8 = z5;
                if (zzvsVar2.zzcii) {
                    z7 = z3;
                    z8 = z5;
                    if (!z3) {
                        z7 = true;
                        z8 = true;
                    }
                }
                if (z6) {
                    str = str4;
                    z = z8;
                    if (z7) {
                        break;
                    }
                }
                i3++;
                z2 = z6;
                z3 = z7;
                str3 = str4;
                z4 = z8;
            }
        } else {
            str = zzvsVar.zzacy;
            z = zzvsVar.zzcii;
        }
        Resources resources = this.context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            str2 = null;
            f = 0.0f;
            i2 = 0;
            i = 0;
        } else {
            f = displayMetrics.density;
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
            str2 = this.zzbqd.zzxs().zzyt();
        }
        StringBuilder sb = new StringBuilder();
        if (zzvsVar.zzcih != null) {
            boolean z9 = false;
            for (zzvs zzvsVar3 : zzvsVar.zzcih) {
                if (zzvsVar3.zzcii) {
                    z9 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    sb.append((zzvsVar3.width != -1 || f == 0.0f) ? zzvsVar3.width : (int) (zzvsVar3.widthPixels / f));
                    sb.append("x");
                    sb.append((zzvsVar3.height != -2 || f == 0.0f) ? zzvsVar3.height : (int) (zzvsVar3.heightPixels / f));
                }
            }
            if (z9) {
                if (sb.length() != 0) {
                    sb.insert(0, "|");
                }
                sb.insert(0, "320x50");
            }
        }
        return new zzdaz(zzvsVar, str, z, sb.toString(), f, i2, i, str2, this.zzfwy.zzhar);
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdaz> zzasy() {
        return zzdzk.zzb(this.zzhao.zzasy(), new zzdvz(this) { // from class: com.google.android.gms.internal.ads.zzdbb
            private final zzday zzhat;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhat = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                return this.zzhat.zza((zzdfp) obj);
            }
        }, zzazp.zzeih);
    }
}
