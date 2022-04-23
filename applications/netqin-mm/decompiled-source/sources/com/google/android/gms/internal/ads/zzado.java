package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzado.class */
public final class zzado extends RelativeLayout {

    /* renamed from: b */
    public static final float[] f24032b = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: a */
    public AnimationDrawable f24033a;

    public zzado(Context context, zzadl zzadlVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Preconditions.m17288a(zzadlVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f24032b, null, null));
        shapeDrawable.getPaint().setColor(zzadlVar.m16853Q1());
        setLayoutParams(layoutParams);
        zzp.m17967e();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzadlVar.mo16841A0())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzadlVar.mo16841A0());
            textView.setTextColor(zzadlVar.m16852T1());
            textView.setTextSize(zzadlVar.m16851a2());
            zzwm.m11170a();
            int b = zzbbg.m15897b(context, 4);
            zzwm.m11170a();
            textView.setPadding(b, 0, zzbbg.m15897b(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<zzadq> d2 = zzadlVar.m16850d2();
        if (d2 != null && d2.size() > 1) {
            this.f24033a = new AnimationDrawable();
            for (zzadq zzadqVar : d2) {
                try {
                    this.f24033a.addFrame((Drawable) ObjectWrapper.m17021Q(zzadqVar.mo16833U1()), zzadlVar.m16849e2());
                } catch (Exception e) {
                    zzbbq.m15855b("Error while getting drawable.", e);
                }
            }
            zzp.m17967e();
            imageView.setBackground(this.f24033a);
        } else if (d2.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) ObjectWrapper.m17021Q(d2.get(0).mo16833U1()));
            } catch (Exception e2) {
                zzbbq.m15855b("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f24033a;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
