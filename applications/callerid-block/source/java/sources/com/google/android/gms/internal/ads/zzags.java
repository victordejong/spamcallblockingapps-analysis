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
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.dynamic.b;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzags.class */
public final class zzags extends RelativeLayout {

    /* renamed from: c */
    private static final float[] f9460c = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: b */
    private AnimationDrawable f9461b;

    public zzags(Context context, p5 p5Var, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        C1581h.m8347h(p5Var);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f9460c, null, null));
        shapeDrawable.getPaint().setColor(p5Var.a());
        setLayoutParams(layoutParams);
        C1407r.m8918f();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(p5Var.b())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(p5Var.b());
            textView.setTextColor(p5Var.d());
            textView.setTextSize(p5Var.A6());
            m03.m6636a();
            int m7125s = C1786io.m7125s(context, 4);
            m03.m6636a();
            textView.setPadding(m7125s, 0, C1786io.m7125s(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<r5> f = p5Var.f();
        if (f != null && f.size() > 1) {
            this.f9461b = new AnimationDrawable();
            for (r5 r5Var : f) {
                try {
                    this.f9461b.addFrame((Drawable) b.M1(r5Var.b()), p5Var.B6());
                } catch (Exception e) {
                    C1894po.m6182d("Error while getting drawable.", e);
                }
            }
            C1407r.m8918f();
            imageView.setBackground(this.f9461b);
        } else if (f.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) b.M1(((r5) f.get(0)).b()));
            } catch (Exception e2) {
                C1894po.m6182d("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f9461b;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
