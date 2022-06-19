package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzcax;
import com.google.android.gms.internal.ads.zzcdy;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzb.class */
public final class zzb {
    private final Context zza;
    private boolean zzb;
    private final zzcdy zzc;
    private final zzcax zzd = new zzcax(false, Collections.emptyList());

    public zzb(Context context, zzcdy zzcdyVar, zzcax zzcaxVar) {
        this.zza = context;
        this.zzc = zzcdyVar;
    }

    private final boolean zzd() {
        zzcdy zzcdyVar = this.zzc;
        return (zzcdyVar != null && zzcdyVar.zzb().zzf) || this.zzd.zza;
    }

    public final void zza() {
        this.zzb = true;
    }

    public final boolean zzb() {
        return !zzd() || this.zzb;
    }

    public final void zzc(String str) {
        List<String> list;
        if (!zzd()) {
            return;
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        zzcdy zzcdyVar = this.zzc;
        if (zzcdyVar != null) {
            zzcdyVar.zzf(str2, null, 3);
            return;
        }
        zzcax zzcaxVar = this.zzd;
        if (!zzcaxVar.zza || (list = zzcaxVar.zzb) == null) {
            return;
        }
        for (String str3 : list) {
            if (!TextUtils.isEmpty(str3)) {
                String replace = str3.replace("{NAVIGATION_URL}", Uri.encode(str2));
                zzt.zzc();
                zzs.zzN(this.zza, "", replace);
            }
        }
    }
}
