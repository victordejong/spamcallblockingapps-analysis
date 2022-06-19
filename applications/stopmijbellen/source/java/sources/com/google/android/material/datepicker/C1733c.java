package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import p134j4.C3260w0;
import p304z3.C5070b;
import p304z3.C5071c;
/* renamed from: com.google.android.material.datepicker.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/c.class */
public final class C1733c {

    /* renamed from: a */
    public final C1731b f6526a;

    /* renamed from: b */
    public final C1731b f6527b;

    /* renamed from: c */
    public final C1731b f6528c;

    /* renamed from: d */
    public final C1731b f6529d;

    /* renamed from: e */
    public final C1731b f6530e;

    /* renamed from: f */
    public final C1731b f6531f;

    /* renamed from: g */
    public final C1731b f6532g;

    /* renamed from: h */
    public final Paint f6533h;

    public C1733c(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C5070b.m73c(context, 2130969293, C1740g.class.getCanonicalName()), C3260w0.f11038s);
        this.f6526a = C1731b.m4636a(context, obtainStyledAttributes.getResourceId(3, 0));
        this.f6532g = C1731b.m4636a(context, obtainStyledAttributes.getResourceId(1, 0));
        this.f6527b = C1731b.m4636a(context, obtainStyledAttributes.getResourceId(2, 0));
        this.f6528c = C1731b.m4636a(context, obtainStyledAttributes.getResourceId(4, 0));
        ColorStateList m72a = C5071c.m72a(context, obtainStyledAttributes, 6);
        this.f6529d = C1731b.m4636a(context, obtainStyledAttributes.getResourceId(8, 0));
        this.f6530e = C1731b.m4636a(context, obtainStyledAttributes.getResourceId(7, 0));
        this.f6531f = C1731b.m4636a(context, obtainStyledAttributes.getResourceId(9, 0));
        Paint paint = new Paint();
        this.f6533h = paint;
        paint.setColor(m72a.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
