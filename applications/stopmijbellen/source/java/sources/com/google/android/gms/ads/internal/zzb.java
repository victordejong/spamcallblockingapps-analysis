package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.internal.ads.zzcde;
import com.google.android.gms.internal.ads.zzcgf;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzb.class */
public final class zzb {
    private final Context zza;
    private boolean zzb;
    private final zzcgf zzc;
    private final zzcde zzd = new zzcde(false, Collections.emptyList());

    public zzb(Context context, zzcgf zzcgfVar, zzcde zzcdeVar) {
        this.zza = context;
        this.zzc = zzcgfVar;
    }

    private final boolean zzd() {
        zzcgf zzcgfVar = this.zzc;
        return (zzcgfVar != null && zzcgfVar.zza().zzf) || this.zzd.zza;
    }

    public final void zza() {
        this.zzb = true;
    }

    public final void zzb(String str) {
        List<String> list;
        if (!zzd()) {
            return;
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        zzcgf zzcgfVar = this.zzc;
        if (zzcgfVar != null) {
            zzcgfVar.zzd(str2, null, 3);
            return;
        }
        zzcde zzcdeVar = this.zzd;
        if (!zzcdeVar.zza || (list = zzcdeVar.zzb) == null) {
            return;
        }
        for (String str3 : list) {
            if (!TextUtils.isEmpty(str3)) {
                String replace = str3.replace("{NAVIGATION_URL}", Uri.encode(str2));
                zzt.zzp();
                zzt.zzO(this.zza, "", replace);
            }
        }
    }

    public final boolean zzc() {
        return !zzd() || this.zzb;
    }
}
