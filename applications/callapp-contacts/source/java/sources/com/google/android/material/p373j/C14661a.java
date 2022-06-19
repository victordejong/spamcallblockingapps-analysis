package com.google.android.material.p373j;

import android.graphics.Paint;
import android.graphics.Path;
import androidx.core.graphics.C0834a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.material.j.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/j/a.class */
public final class C14661a {

    /* renamed from: g */
    public static final int[] f53456g = new int[3];

    /* renamed from: h */
    public static final float[] f53457h = {BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};

    /* renamed from: i */
    public static final int[] f53458i = new int[4];

    /* renamed from: j */
    public static final float[] f53459j = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};

    /* renamed from: a */
    public final Paint f53460a;

    /* renamed from: b */
    public final Paint f53461b;

    /* renamed from: c */
    public final Paint f53462c;

    /* renamed from: d */
    public int f53463d;

    /* renamed from: e */
    public int f53464e;

    /* renamed from: f */
    public int f53465f;

    /* renamed from: k */
    public final Path f53466k;

    /* renamed from: l */
    public Paint f53467l;

    public C14661a() {
        this(-16777216);
    }

    public C14661a(int i) {
        this.f53466k = new Path();
        this.f53467l = new Paint();
        this.f53460a = new Paint();
        m10488a(i);
        this.f53467l.setColor(0);
        Paint paint = new Paint(4);
        this.f53461b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f53462c = new Paint(paint);
    }

    /* renamed from: a */
    public final void m10488a(int i) {
        this.f53463d = C0834a.m44396b(i, 68);
        this.f53464e = C0834a.m44396b(i, 20);
        this.f53465f = C0834a.m44396b(i, 0);
        this.f53460a.setColor(this.f53463d);
    }
}
