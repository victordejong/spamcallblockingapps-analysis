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
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaec.class */
public final class zzaec extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f28596a = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: b  reason: collision with root package name */
    private AnimationDrawable f28597b;

    public zzaec(Context context, dd ddVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        o.a(ddVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f28596a, null, null));
        shapeDrawable.getPaint().setColor(ddVar.f26737c);
        setLayoutParams(layoutParams);
        zzr.zzkx();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(ddVar.f26735a)) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(ddVar.f26735a);
            textView.setTextColor(ddVar.f26738d);
            textView.setTextSize(ddVar.e);
            ekb.a();
            int a2 = yq.a(context, 4);
            ekb.a();
            textView.setPadding(a2, 0, yq.a(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<de> list = ddVar.f26736b;
        if (list != null && list.size() > 1) {
            this.f28597b = new AnimationDrawable();
            for (de deVar : list) {
                try {
                    this.f28597b.addFrame((Drawable) d.a(d.a(deVar.f26770a)), ddVar.f);
                } catch (Exception e) {
                    zzd.zzc("Error while getting drawable.", e);
                }
            }
            zzr.zzkx();
            imageView.setBackground(this.f28597b);
        } else if (list.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) d.a(d.a(list.get(0).f26770a)));
            } catch (Exception e2) {
                zzd.zzc("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f28597b;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
