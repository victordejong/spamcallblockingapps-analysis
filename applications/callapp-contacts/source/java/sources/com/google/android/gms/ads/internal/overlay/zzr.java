package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.C13077yq;
import com.google.android.gms.internal.ads.ekb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzr.class */
public final class zzr extends FrameLayout implements View.OnClickListener {
    private final ImageButton zzduq;
    private final zzab zzdur;

    public zzr(Context context, zzq zzqVar, zzab zzabVar) {
        super(context);
        this.zzdur = zzabVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.zzduq = imageButton;
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        ekb.m14835a();
        int m13950a = C13077yq.m13950a(context, zzqVar.paddingLeft);
        ekb.m14835a();
        int m13950a2 = C13077yq.m13950a(context, 0);
        ekb.m14835a();
        int m13950a3 = C13077yq.m13950a(context, zzqVar.paddingRight);
        ekb.m14835a();
        imageButton.setPadding(m13950a, m13950a2, m13950a3, C13077yq.m13950a(context, zzqVar.paddingBottom));
        imageButton.setContentDescription("Interstitial close button");
        ekb.m14835a();
        int m13950a4 = C13077yq.m13950a(context, zzqVar.size + zzqVar.paddingLeft + zzqVar.paddingRight);
        ekb.m14835a();
        addView(imageButton, new FrameLayout.LayoutParams(m13950a4, C13077yq.m13950a(context, zzqVar.size + zzqVar.paddingBottom), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzab zzabVar = this.zzdur;
        if (zzabVar != null) {
            zzabVar.zzwg();
        }
    }

    public final void zzap(boolean z) {
        if (z) {
            this.zzduq.setVisibility(8);
        } else {
            this.zzduq.setVisibility(0);
        }
    }
}
