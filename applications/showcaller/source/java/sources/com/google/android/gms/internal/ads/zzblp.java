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
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblp.class */
public final class zzblp extends RelativeLayout {

    /* renamed from: d */
    private static final float[] f33715d = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: e */
    private AnimationDrawable f33716e;

    public zzblp(Context context, BinderC6866py binderC6866py, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        C6155o.m17018j(binderC6866py);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f33715d, null, null));
        shapeDrawable.getPaint().setColor(binderC6866py.m12091a());
        setLayoutParams(layoutParams);
        C5667s.m18158f();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(binderC6866py.mo8662b())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(binderC6866py.mo8662b());
            textView.setTextColor(binderC6866py.m12090d());
            textView.setTextSize(binderC6866py.m12093F6());
            C7118wr.m9485a();
            int m9161q = xh0.m9161q(context, 4);
            C7118wr.m9485a();
            textView.setPadding(m9161q, 0, xh0.m9161q(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<BinderC6940ry> m12089e = binderC6866py.m12089e();
        if (m12089e != null && m12089e.size() > 1) {
            this.f33716e = new AnimationDrawable();
            for (BinderC6940ry binderC6940ry : m12089e) {
                try {
                    this.f33716e.addFrame((Drawable) BinderC6255b.m16745J0(binderC6940ry.mo11257b()), binderC6866py.m12092G6());
                } catch (Exception e) {
                    ei0.m15466d("Error while getting drawable.", e);
                }
            }
            C5667s.m18158f();
            imageView.setBackground(this.f33716e);
        } else if (m12089e.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) BinderC6255b.m16745J0(m12089e.get(0).mo11257b()));
            } catch (Exception e2) {
                ei0.m15466d("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f33716e;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
