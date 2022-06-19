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
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.bf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bf.class */
public final class C2829bf extends RelativeLayout {

    /* renamed from: a */
    private static final float[] f11127a = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: b */
    private AnimationDrawable f11128b;

    public C2829bf(Context context, BinderC2830bg binderC2830bg, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        C2662s.m13981a(binderC2830bg);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f11127a, null, null));
        shapeDrawable.getPaint().setColor(binderC2830bg.m11984d());
        setLayoutParams(layoutParams);
        C2341q.m14742e();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(binderC2830bg.mo11738a())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(binderC2830bg.mo11738a());
            textView.setTextColor(binderC2830bg.m11983e());
            textView.setTextSize(binderC2830bg.m11982f());
            dyx.m8162a();
            int m6801a = C3634xr.m6801a(context, 4);
            dyx.m8162a();
            textView.setPadding(m6801a, 0, C3634xr.m6801a(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<BinderC2831bh> m11985c = binderC2830bg.m11985c();
        if (m11985c != null && m11985c.size() > 1) {
            this.f11128b = new AnimationDrawable();
            for (BinderC2831bh binderC2831bh : m11985c) {
                try {
                    this.f11128b.addFrame((Drawable) BinderC2734b.m13795a(binderC2831bh.mo11584a()), binderC2830bg.m11981g());
                } catch (Exception e) {
                    C3556uu.m6748c("Error while getting drawable.", e);
                }
            }
            C2341q.m14742e();
            imageView.setBackground(this.f11128b);
        } else if (m11985c.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) BinderC2734b.m13795a(m11985c.get(0).mo11584a()));
            } catch (Exception e2) {
                C3556uu.m6748c("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        if (this.f11128b != null) {
            this.f11128b.start();
        }
        super.onAttachedToWindow();
    }
}
