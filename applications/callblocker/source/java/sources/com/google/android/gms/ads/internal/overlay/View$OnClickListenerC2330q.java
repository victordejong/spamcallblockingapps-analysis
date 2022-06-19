package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.C3634xr;
import com.google.android.gms.internal.ads.dyx;
/* renamed from: com.google.android.gms.ads.internal.overlay.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/q.class */
public final class View$OnClickListenerC2330q extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    private final ImageButton f6734a;

    /* renamed from: b */
    private final AbstractC2338y f6735b;

    public View$OnClickListenerC2330q(Context context, C2329p c2329p, AbstractC2338y abstractC2338y) {
        super(context);
        this.f6735b = abstractC2338y;
        setOnClickListener(this);
        this.f6734a = new ImageButton(context);
        this.f6734a.setImageResource(17301527);
        this.f6734a.setBackgroundColor(0);
        this.f6734a.setOnClickListener(this);
        ImageButton imageButton = this.f6734a;
        dyx.m8162a();
        int m6801a = C3634xr.m6801a(context, c2329p.f6729a);
        dyx.m8162a();
        int m6801a2 = C3634xr.m6801a(context, 0);
        dyx.m8162a();
        int m6801a3 = C3634xr.m6801a(context, c2329p.f6730b);
        dyx.m8162a();
        imageButton.setPadding(m6801a, m6801a2, m6801a3, C3634xr.m6801a(context, c2329p.f6732d));
        this.f6734a.setContentDescription("Interstitial close button");
        ImageButton imageButton2 = this.f6734a;
        dyx.m8162a();
        int m6801a4 = C3634xr.m6801a(context, c2329p.f6733e + c2329p.f6729a + c2329p.f6730b);
        dyx.m8162a();
        addView(imageButton2, new FrameLayout.LayoutParams(m6801a4, C3634xr.m6801a(context, c2329p.f6733e + c2329p.f6732d), 17));
    }

    /* renamed from: a */
    public final void m14750a(boolean z) {
        if (z) {
            this.f6734a.setVisibility(8);
        } else {
            this.f6734a.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f6735b != null) {
            this.f6735b.mo11460j_();
        }
    }
}
