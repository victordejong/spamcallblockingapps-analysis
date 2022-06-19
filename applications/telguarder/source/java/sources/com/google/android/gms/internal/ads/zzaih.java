package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaih.class */
public final class zzaih implements zzaif<Object> {
    private final Context context;

    public zzaih(Context context) {
        this.context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        if (!zzr.zzlp().zzy(this.context)) {
            return;
        }
        String str = map.get("eventName");
        String str2 = map.get("eventId");
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 94399:
                if (str.equals("_aa")) {
                    z = false;
                    break;
                }
                break;
            case 94401:
                if (str.equals("_ac")) {
                    z = true;
                    break;
                }
                break;
            case 94407:
                if (str.equals("_ai")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                zzr.zzlp().zzj(this.context, str2);
                return;
            case true:
                zzr.zzlp().zzg(this.context, str2);
                return;
            case true:
                zzr.zzlp().zzh(this.context, str2);
                return;
            default:
                zzd.zzev("logScionEvent gmsg contained unsupported eventName");
                return;
        }
    }
}
