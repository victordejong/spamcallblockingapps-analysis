package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzatf;
import com.google.android.gms.internal.ads.zzawz;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zza.class */
public final class zza {
    private final Context context;
    private boolean zzboh;
    private zzawz zzboi;
    private zzatf zzboj;

    public zza(Context context, zzawz zzawzVar, zzatf zzatfVar) {
        this.context = context;
        this.zzboi = zzawzVar;
        this.zzboj = null;
        if (0 == 0) {
            this.zzboj = new zzatf();
        }
    }

    private final boolean zzjx() {
        zzawz zzawzVar = this.zzboi;
        return (zzawzVar != null && zzawzVar.zzwv().zzear) || this.zzboj.zzdxb;
    }

    public final void recordClick() {
        this.zzboh = true;
    }

    public final void zzbk(String str) {
        if (!zzjx()) {
            return;
        }
        if (str == null) {
            str = "";
        }
        zzawz zzawzVar = this.zzboi;
        if (zzawzVar != null) {
            zzawzVar.zza(str, null, 3);
        } else if (this.zzboj.zzdxb && this.zzboj.zzdxc != null) {
            for (String str2 : this.zzboj.zzdxc) {
                if (!TextUtils.isEmpty(str2)) {
                    String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    zzr.zzkr();
                    zzj.zzb(this.context, "", replace);
                }
            }
        }
    }

    public final boolean zzjy() {
        return !zzjx() || this.zzboh;
    }
}
