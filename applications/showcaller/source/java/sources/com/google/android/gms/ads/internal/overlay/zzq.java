package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.xh0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzq.class */
public final class zzq extends FrameLayout implements View.OnClickListener {

    /* renamed from: d */
    private final ImageButton f18388d;

    /* renamed from: e */
    private final AbstractC5663y f18389e;

    public zzq(Context context, C5654p c5654p, AbstractC5663y abstractC5663y) {
        super(context);
        this.f18389e = abstractC5663y;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.f18388d = imageButton;
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        C7118wr.m9485a();
        int m9161q = xh0.m9161q(context, c5654p.f18370a);
        C7118wr.m9485a();
        int m9161q2 = xh0.m9161q(context, 0);
        C7118wr.m9485a();
        int m9161q3 = xh0.m9161q(context, c5654p.f18371b);
        C7118wr.m9485a();
        imageButton.setPadding(m9161q, m9161q2, m9161q3, xh0.m9161q(context, c5654p.f18372c));
        imageButton.setContentDescription("Interstitial close button");
        C7118wr.m9485a();
        int m9161q4 = xh0.m9161q(context, c5654p.f18373d + c5654p.f18370a + c5654p.f18371b);
        C7118wr.m9485a();
        addView(imageButton, new FrameLayout.LayoutParams(m9161q4, xh0.m9161q(context, c5654p.f18373d + c5654p.f18372c), 17));
    }

    /* renamed from: a */
    public final void m18184a(boolean z) {
        if (z) {
            this.f18388d.setVisibility(8);
        } else {
            this.f18388d.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC5663y abstractC5663y = this.f18389e;
        if (abstractC5663y != null) {
            abstractC5663y.mo9641e();
        }
    }
}
