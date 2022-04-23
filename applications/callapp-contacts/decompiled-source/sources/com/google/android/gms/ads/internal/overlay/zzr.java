package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.yq;
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
        ekb.a();
        int a2 = yq.a(context, zzqVar.paddingLeft);
        ekb.a();
        int a3 = yq.a(context, 0);
        ekb.a();
        int a4 = yq.a(context, zzqVar.paddingRight);
        ekb.a();
        imageButton.setPadding(a2, a3, a4, yq.a(context, zzqVar.paddingBottom));
        imageButton.setContentDescription("Interstitial close button");
        ekb.a();
        int a5 = yq.a(context, zzqVar.size + zzqVar.paddingLeft + zzqVar.paddingRight);
        ekb.a();
        addView(imageButton, new FrameLayout.LayoutParams(a5, yq.a(context, zzqVar.size + zzqVar.paddingBottom), 17));
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
