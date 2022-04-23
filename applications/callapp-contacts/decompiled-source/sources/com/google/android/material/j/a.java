package com.google.android.material.j;

import android.graphics.Paint;
import android.graphics.Path;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/j/a.class */
public final class a {
    public static final int[] g = new int[3];
    public static final float[] h = {BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};
    public static final int[] i = new int[4];
    public static final float[] j = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    public final Paint f30667a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f30668b;

    /* renamed from: c  reason: collision with root package name */
    public final Paint f30669c;

    /* renamed from: d  reason: collision with root package name */
    public int f30670d;
    public int e;
    public int f;
    public final Path k;
    public Paint l;

    public a() {
        this(-16777216);
    }

    public a(int i2) {
        this.k = new Path();
        this.l = new Paint();
        this.f30667a = new Paint();
        a(i2);
        this.l.setColor(0);
        Paint paint = new Paint(4);
        this.f30668b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f30669c = new Paint(paint);
    }

    public final void a(int i2) {
        this.f30670d = androidx.core.graphics.a.b(i2, 68);
        this.e = androidx.core.graphics.a.b(i2, 20);
        this.f = androidx.core.graphics.a.b(i2, 0);
        this.f30667a.setColor(this.f30670d);
    }
}
