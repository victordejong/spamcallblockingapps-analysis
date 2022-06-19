package com.google.android.gms.ads.internal.util;

import android.os.Environment;
import android.os.StatFs;
import android.view.View;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzwr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzv.class */
public class zzv extends zzw {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public boolean isAttachedToWindow(View view) {
        return super.isAttachedToWindow(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzzc() {
        return 14;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final long zzzg() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcss)).booleanValue()) {
            return -1L;
        }
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }
}
