package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzj.class */
public final class zzj extends RelativeLayout {
    @VisibleForTesting
    private zzad zzdsj;
    @VisibleForTesting
    public boolean zzdsk;

    public zzj(Context context, String str, String str2) {
        super(context);
        zzad zzadVar = new zzad(context, str);
        this.zzdsj = zzadVar;
        zzadVar.zzu(str2);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.zzdsk) {
            this.zzdsj.zzd(motionEvent);
            return false;
        }
        return false;
    }
}
