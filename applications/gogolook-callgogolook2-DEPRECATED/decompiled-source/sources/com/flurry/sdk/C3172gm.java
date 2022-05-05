package com.flurry.sdk;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.PathShape;
import android.os.Build;
import android.widget.TextView;
import androidx.media2.exoplayer.external.extractor.p007ts.H262Reader;
/* renamed from: com.flurry.sdk.gm */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gm.class */
public final class C3172gm {

    /* renamed from: c */
    public static int f5207c;

    /* renamed from: d */
    public static int f5208d;

    /* renamed from: a */
    public TextView f5209a;

    /* renamed from: i */
    public int f5214i;

    /* renamed from: f */
    public Path f5211f = null;

    /* renamed from: g */
    public PathShape f5212g = null;

    /* renamed from: h */
    public ShapeDrawable f5213h = null;

    /* renamed from: b */
    public float f5210b = 0.0f;

    /* renamed from: j */
    public RectF f5215j = null;

    public C3172gm(Context context, int i, int i2) {
        this.f5209a = null;
        this.f5214i = 0;
        f5207c = C3442ky.m32483b(2);
        f5208d = C3442ky.m32483b(1);
        this.f5214i = i < i2 ? i / 2 : i2 / 2;
        this.f5209a = new TextView(context);
        this.f5209a.setTextColor(-1);
        this.f5209a.setTypeface(Typeface.MONOSPACE);
        this.f5209a.setTextSize(1, 12.0f);
        this.f5209a.setGravity(17);
    }

    /* renamed from: a */
    public static /* synthetic */ void m32939a(C3172gm gmVar, int i) {
        gmVar.f5215j = new RectF();
        RectF rectF = gmVar.f5215j;
        int i2 = f5207c;
        float f = i2;
        float f2 = i2;
        int i3 = gmVar.f5214i;
        rectF.set(f, f2, i3 - i2, i3 - i2);
        gmVar.f5211f = new Path();
        gmVar.f5211f.arcTo(gmVar.f5215j, -90.0f, ((-i) * gmVar.f5210b) + 1.0f, false);
        Path path = gmVar.f5211f;
        int i4 = gmVar.f5214i;
        gmVar.f5212g = new PathShape(path, i4, i4);
        gmVar.f5213h = new ShapeDrawable(gmVar.f5212g);
        gmVar.f5213h.setIntrinsicHeight(gmVar.f5214i * 2);
        gmVar.f5213h.setIntrinsicWidth(gmVar.f5214i * 2);
        gmVar.f5213h.getPaint().setStyle(Paint.Style.STROKE);
        gmVar.f5213h.getPaint().setColor(-1);
        gmVar.f5213h.getPaint().setStrokeWidth(f5208d);
        gmVar.f5213h.getPaint().setAntiAlias(true);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-16777216);
        gradientDrawable.setShape(1);
        gradientDrawable.setAlpha(H262Reader.START_USER_DATA);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, gmVar.f5213h});
        if (Build.VERSION.SDK_INT >= 16) {
            gmVar.f5209a.setBackground(layerDrawable);
        } else {
            gmVar.f5209a.setBackgroundDrawable(layerDrawable);
        }
    }
}
