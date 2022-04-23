package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzwm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzo.class */
public final class zzo extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    public final ImageButton f22778a;

    /* renamed from: b */
    public final zzw f22779b;

    public zzo(Context context, zzr zzrVar, zzw zzwVar) {
        super(context);
        this.f22779b = zzwVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.f22778a = imageButton;
        imageButton.setImageResource(17301527);
        this.f22778a.setBackgroundColor(0);
        this.f22778a.setOnClickListener(this);
        ImageButton imageButton2 = this.f22778a;
        zzwm.m11170a();
        int b = zzbbg.m15897b(context, zzrVar.f22780a);
        zzwm.m11170a();
        int b2 = zzbbg.m15897b(context, 0);
        zzwm.m11170a();
        int b3 = zzbbg.m15897b(context, zzrVar.f22781b);
        zzwm.m11170a();
        imageButton2.setPadding(b, b2, b3, zzbbg.m15897b(context, zzrVar.f22782c));
        this.f22778a.setContentDescription("Interstitial close button");
        ImageButton imageButton3 = this.f22778a;
        zzwm.m11170a();
        int b4 = zzbbg.m15897b(context, zzrVar.f22783d + zzrVar.f22780a + zzrVar.f22781b);
        zzwm.m11170a();
        addView(imageButton3, new FrameLayout.LayoutParams(b4, zzbbg.m15897b(context, zzrVar.f22783d + zzrVar.f22782c), 17));
    }

    /* renamed from: a */
    public final void m18001a(boolean z) {
        if (z) {
            this.f22778a.setVisibility(8);
        } else {
            this.f22778a.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzw zzwVar = this.f22779b;
        if (zzwVar != null) {
            zzwVar.mo13573Y();
        }
    }
}
