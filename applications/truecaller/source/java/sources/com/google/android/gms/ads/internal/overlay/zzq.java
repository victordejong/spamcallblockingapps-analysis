package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzcgm;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzq.class */
public final class zzq extends FrameLayout implements View.OnClickListener {
    private final ImageButton zza;
    private final zzz zzb;

    public zzq(Context context, zzp zzpVar, zzz zzzVar) {
        super(context);
        this.zzb = zzzVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.zza = imageButton;
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzber.zza();
        int zzs = zzcgm.zzs(context, zzpVar.zza);
        zzber.zza();
        int zzs2 = zzcgm.zzs(context, 0);
        zzber.zza();
        int zzs3 = zzcgm.zzs(context, zzpVar.zzb);
        zzber.zza();
        imageButton.setPadding(zzs, zzs2, zzs3, zzcgm.zzs(context, zzpVar.zzc));
        imageButton.setContentDescription("Interstitial close button");
        zzber.zza();
        int zzs4 = zzcgm.zzs(context, zzpVar.zzd + zzpVar.zza + zzpVar.zzb);
        zzber.zza();
        addView(imageButton, new FrameLayout.LayoutParams(zzs4, zzcgm.zzs(context, zzpVar.zzd + zzpVar.zzc), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzz zzzVar = this.zzb;
        if (zzzVar != null) {
            zzzVar.zzd();
        }
    }

    public final void zza(boolean z) {
        if (z) {
            this.zza.setVisibility(8);
        } else {
            this.zza.setVisibility(0);
        }
    }
}
