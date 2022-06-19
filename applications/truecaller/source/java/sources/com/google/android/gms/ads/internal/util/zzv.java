package com.google.android.gms.ads.internal.util;

import android.os.Environment;
import android.os.StatFs;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzv.class */
public class zzv extends zzu {
    @Override // com.google.android.gms.ads.internal.util.zzad
    public boolean zzg(View view) {
        return super.zzg(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final int zzh() {
        return 14;
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final long zzi() {
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }
}
