package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbet.class */
final class zzbet implements zzaif<zzbeb> {
    private final /* synthetic */ zzber zzetw;

    public zzbet(zzber zzberVar) {
        this.zzetw = zzberVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.zzetw) {
                    i = this.zzetw.zzetm;
                    if (i != parseInt) {
                        this.zzetw.zzetm = parseInt;
                        this.zzetw.requestLayout();
                    }
                }
            } catch (Exception e) {
                zzd.zzd("Exception occurred while getting webview content height", e);
            }
        }
    }
}
