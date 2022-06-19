package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwj.class */
public final class zzcwj implements zzcvr {
    private final zzebt zza;

    public zzcwj(zzebt zzebtVar) {
        this.zza = zzebtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvr
    public final void zza(Map<String, String> map) {
        String str = map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzl(str.equals("true"));
    }
}
