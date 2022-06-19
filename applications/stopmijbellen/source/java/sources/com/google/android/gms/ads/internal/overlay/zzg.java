package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzaw;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzg.class */
public final class zzg extends RelativeLayout {
    @VisibleForTesting
    public final zzaw zza;
    @VisibleForTesting
    public boolean zzb;

    public zzg(Context context, String str, String str2, String str3) {
        super(context);
        zzaw zzawVar = new zzaw(context, str);
        this.zza = zzawVar;
        zzawVar.zzo(str2);
        zzawVar.zzn(str3);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.zzb) {
            this.zza.zzm(motionEvent);
            return false;
        }
        return false;
    }
}
