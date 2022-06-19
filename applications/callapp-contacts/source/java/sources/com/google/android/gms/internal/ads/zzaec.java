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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaec.class */
public final class zzaec extends RelativeLayout {

    /* renamed from: a */
    private static final float[] f50144a = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: b */
    private AnimationDrawable f50145b;

    public zzaec(Context context, BinderC12321dd binderC12321dd, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        C12045o.m19162a(binderC12321dd);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f50144a, null, null));
        shapeDrawable.getPaint().setColor(binderC12321dd.f46960c);
        setLayoutParams(layoutParams);
        zzr.zzkx();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(binderC12321dd.f46958a)) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(binderC12321dd.f46958a);
            textView.setTextColor(binderC12321dd.f46961d);
            textView.setTextSize(binderC12321dd.f46962e);
            ekb.m14835a();
            int m13950a = C13077yq.m13950a(context, 4);
            ekb.m14835a();
            textView.setPadding(m13950a, 0, C13077yq.m13950a(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<BinderC12325de> list = binderC12321dd.f46959b;
        if (list != null && list.size() > 1) {
            this.f50145b = new AnimationDrawable();
            for (BinderC12325de binderC12325de : list) {
                try {
                    this.f50145b.addFrame((Drawable) BinderC12129d.m18980a(BinderC12129d.m18979a(binderC12325de.f47008a)), binderC12321dd.f46963f);
                } catch (Exception e) {
                    zzd.zzc("Error while getting drawable.", e);
                }
            }
            zzr.zzkx();
            imageView.setBackground(this.f50145b);
        } else if (list.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) BinderC12129d.m18980a(BinderC12129d.m18979a(list.get(0).f47008a)));
            } catch (Exception e2) {
                zzd.zzc("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f50145b;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
