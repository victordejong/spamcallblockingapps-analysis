package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/f.class */
final class f {
    int A;
    int B;
    int C;
    int D;
    StaticLayout E;
    StaticLayout F;
    int G;
    int H;
    int I;
    Rect J;

    /* renamed from: a  reason: collision with root package name */
    final float f22055a;

    /* renamed from: b  reason: collision with root package name */
    final float f22056b;

    /* renamed from: c  reason: collision with root package name */
    final float f22057c;

    /* renamed from: d  reason: collision with root package name */
    final float f22058d;
    final float e;
    final TextPaint f;
    final Paint g;
    final Paint h;
    CharSequence i;
    Layout.Alignment j;
    Bitmap k;
    float l;
    int m;
    int n;
    float o;
    int p;
    float q;
    float r;
    int s;
    int t;
    int u;
    int v;
    int w;
    float x;
    float y;
    float z;

    public f(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f22058d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f22055a = round;
        this.f22056b = round;
        this.f22057c = round;
        TextPaint textPaint = new TextPaint();
        this.f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }
}
