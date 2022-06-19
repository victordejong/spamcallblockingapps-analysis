package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.google.android.gms.ads.impl.C1666R;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzcis;
import com.google.android.gms.internal.ads.zzciz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzr.class */
public final class zzr extends FrameLayout implements View.OnClickListener {
    private final ImageButton zza;
    private final zzaa zzb;

    public zzr(Context context, zzq zzqVar, zzaa zzaaVar) {
        super(context);
        this.zzb = zzaaVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.zza = imageButton;
        zzc();
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzbgo.zzb();
        int zzs = zzcis.zzs(context, zzqVar.zza);
        zzbgo.zzb();
        int zzs2 = zzcis.zzs(context, 0);
        zzbgo.zzb();
        int zzs3 = zzcis.zzs(context, zzqVar.zzb);
        zzbgo.zzb();
        imageButton.setPadding(zzs, zzs2, zzs3, zzcis.zzs(context, zzqVar.zzc));
        imageButton.setContentDescription("Interstitial close button");
        zzbgo.zzb();
        int zzs4 = zzcis.zzs(context, zzqVar.zzd + zzqVar.zza + zzqVar.zzb);
        zzbgo.zzb();
        addView(imageButton, new FrameLayout.LayoutParams(zzs4, zzcis.zzs(context, zzqVar.zzd + zzqVar.zzc), 17));
        long longValue = ((Long) zzbgq.zzc().zzb(zzblj.zzaQ)).longValue();
        if (longValue <= 0) {
            return;
        }
        zzp zzpVar = ((Boolean) zzbgq.zzc().zzb(zzblj.zzaR)).booleanValue() ? new zzp(this) : null;
        imageButton.setAlpha(0.0f);
        imageButton.animate().alpha(1.0f).setDuration(longValue).setListener(zzpVar);
    }

    private final void zzc() {
        Drawable drawable;
        String str = (String) zzbgq.zzc().zzb(zzblj.zzaP);
        if (!PlatformVersion.isAtLeastLollipop() || TextUtils.isEmpty(str) || "default".equals(str)) {
            this.zza.setImageResource(17301527);
            return;
        }
        Resources zzd = zzt.zzo().zzd();
        if (zzd == null) {
            this.zza.setImageResource(17301527);
            return;
        }
        try {
            if ("white".equals(str)) {
                drawable = zzd.getDrawable(C1666R.C1667drawable.admob_close_button_white_circle_black_cross);
            } else {
                drawable = null;
                if ("black".equals(str)) {
                    drawable = zzd.getDrawable(C1666R.C1667drawable.admob_close_button_black_circle_white_cross);
                }
            }
        } catch (Resources.NotFoundException e) {
            zzciz.zze("Close button resource not found, falling back to default.");
            drawable = null;
        }
        if (drawable == null) {
            this.zza.setImageResource(17301527);
            return;
        }
        this.zza.setImageDrawable(drawable);
        this.zza.setScaleType(ImageView.ScaleType.CENTER);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzaa zzaaVar = this.zzb;
        if (zzaaVar != null) {
            zzaaVar.zzbR();
        }
    }

    public final void zzb(boolean z) {
        if (!z) {
            this.zza.setVisibility(0);
            return;
        }
        this.zza.setVisibility(8);
        if (((Long) zzbgq.zzc().zzb(zzblj.zzaQ)).longValue() <= 0) {
            return;
        }
        this.zza.animate().cancel();
        this.zza.clearAnimation();
    }
}
