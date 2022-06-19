package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzwr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzp.class */
public final class zzp extends FrameLayout implements View.OnClickListener {
    private final ImageButton zzdtg;
    private final zzz zzdth;

    public zzp(Context context, zzs zzsVar, zzz zzzVar) {
        super(context);
        this.zzdth = zzzVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.zzdtg = imageButton;
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzwr.zzqn();
        int zze = zzaza.zze(context, zzsVar.paddingLeft);
        zzwr.zzqn();
        int zze2 = zzaza.zze(context, 0);
        zzwr.zzqn();
        int zze3 = zzaza.zze(context, zzsVar.paddingRight);
        zzwr.zzqn();
        imageButton.setPadding(zze, zze2, zze3, zzaza.zze(context, zzsVar.paddingBottom));
        imageButton.setContentDescription("Interstitial close button");
        zzwr.zzqn();
        int zze4 = zzaza.zze(context, zzsVar.size + zzsVar.paddingLeft + zzsVar.paddingRight);
        zzwr.zzqn();
        addView(imageButton, new FrameLayout.LayoutParams(zze4, zzaza.zze(context, zzsVar.size + zzsVar.paddingBottom), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzz zzzVar = this.zzdth;
        if (zzzVar != null) {
            zzzVar.zzvv();
        }
    }

    public final void zzam(boolean z) {
        if (z) {
            this.zzdtg.setVisibility(8);
        } else {
            this.zzdtg.setVisibility(0);
        }
    }
}
