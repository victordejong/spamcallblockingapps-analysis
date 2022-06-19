package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.C1786io;
import com.google.android.gms.internal.ads.m03;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzr.class */
public final class zzr extends FrameLayout implements View.OnClickListener {

    /* renamed from: b */
    private final ImageButton f5519b;

    /* renamed from: c */
    private final AbstractC1390b f5520c;

    public zzr(Context context, C1401r c1401r, AbstractC1390b abstractC1390b) {
        super(context);
        this.f5520c = abstractC1390b;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.f5519b = imageButton;
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        m03.m6636a();
        int m7125s = C1786io.m7125s(context, c1401r.f5515a);
        m03.m6636a();
        int m7125s2 = C1786io.m7125s(context, 0);
        m03.m6636a();
        int m7125s3 = C1786io.m7125s(context, c1401r.f5516b);
        m03.m6636a();
        imageButton.setPadding(m7125s, m7125s2, m7125s3, C1786io.m7125s(context, c1401r.f5517c));
        imageButton.setContentDescription("Interstitial close button");
        m03.m6636a();
        int m7125s4 = C1786io.m7125s(context, c1401r.f5518d + c1401r.f5515a + c1401r.f5516b);
        m03.m6636a();
        addView(imageButton, new FrameLayout.LayoutParams(m7125s4, C1786io.m7125s(context, c1401r.f5518d + c1401r.f5517c), 17));
    }

    /* renamed from: a */
    public final void m8930a(boolean z) {
        ImageButton imageButton;
        int i;
        if (z) {
            imageButton = this.f5519b;
            i = 8;
        } else {
            imageButton = this.f5519b;
            i = 0;
        }
        imageButton.setVisibility(i);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC1390b abstractC1390b = this.f5520c;
        if (abstractC1390b != null) {
            abstractC1390b.m8940f();
        }
    }
}
