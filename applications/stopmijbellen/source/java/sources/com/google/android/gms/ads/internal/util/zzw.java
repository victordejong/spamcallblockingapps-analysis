package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.os.Environment;
import android.os.StatFs;
import android.view.View;
@TargetApi(18)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzw.class */
public class zzw extends zzv {
    @Override // com.google.android.gms.ads.internal.util.zzae
    public final int zzg() {
        return 14;
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final long zzh() {
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public boolean zzi(View view) {
        return super.zzi(view) || view.getWindowId() != null;
    }
}
