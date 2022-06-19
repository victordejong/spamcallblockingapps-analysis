package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
/* renamed from: com.google.android.exoplayer2.ui.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/f.class */
final class C11507f {

    /* renamed from: A */
    int f38219A;

    /* renamed from: B */
    int f38220B;

    /* renamed from: C */
    int f38221C;

    /* renamed from: D */
    int f38222D;

    /* renamed from: E */
    StaticLayout f38223E;

    /* renamed from: F */
    StaticLayout f38224F;

    /* renamed from: G */
    int f38225G;

    /* renamed from: H */
    int f38226H;

    /* renamed from: I */
    int f38227I;

    /* renamed from: J */
    Rect f38228J;

    /* renamed from: a */
    final float f38229a;

    /* renamed from: b */
    final float f38230b;

    /* renamed from: c */
    final float f38231c;

    /* renamed from: d */
    final float f38232d;

    /* renamed from: e */
    final float f38233e;

    /* renamed from: f */
    final TextPaint f38234f;

    /* renamed from: g */
    final Paint f38235g;

    /* renamed from: h */
    final Paint f38236h;

    /* renamed from: i */
    CharSequence f38237i;

    /* renamed from: j */
    Layout.Alignment f38238j;

    /* renamed from: k */
    Bitmap f38239k;

    /* renamed from: l */
    float f38240l;

    /* renamed from: m */
    int f38241m;

    /* renamed from: n */
    int f38242n;

    /* renamed from: o */
    float f38243o;

    /* renamed from: p */
    int f38244p;

    /* renamed from: q */
    float f38245q;

    /* renamed from: r */
    float f38246r;

    /* renamed from: s */
    int f38247s;

    /* renamed from: t */
    int f38248t;

    /* renamed from: u */
    int f38249u;

    /* renamed from: v */
    int f38250v;

    /* renamed from: w */
    int f38251w;

    /* renamed from: x */
    float f38252x;

    /* renamed from: y */
    float f38253y;

    /* renamed from: z */
    float f38254z;

    public C11507f(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f38233e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f38232d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f38229a = round;
        this.f38230b = round;
        this.f38231c = round;
        TextPaint textPaint = new TextPaint();
        this.f38234f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f38235g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f38236h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }
}
