package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.widget.TextView;
import p020b.p041h.p049k.C1597h;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* renamed from: com.google.android.material.datepicker.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/a.class */
final class C8099a {

    /* renamed from: a */
    private final Rect f36625a;

    /* renamed from: b */
    private final ColorStateList f36626b;

    /* renamed from: c */
    private final ColorStateList f36627c;

    /* renamed from: d */
    private final ColorStateList f36628d;

    /* renamed from: e */
    private final int f36629e;

    /* renamed from: f */
    private final C1946m f36630f;

    private C8099a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, C1946m c1946m, Rect rect) {
        C1597h.m29661c(rect.left);
        C1597h.m29661c(rect.top);
        C1597h.m29661c(rect.right);
        C1597h.m29661c(rect.bottom);
        this.f36625a = rect;
        this.f36626b = colorStateList2;
        this.f36627c = colorStateList;
        this.f36628d = colorStateList3;
        this.f36629e = i;
        this.f36630f = c1946m;
    }

    /* renamed from: a */
    public static C8099a m4939a(Context context, int i) {
        C1597h.m29663a(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C1896l.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(C1896l.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(C1896l.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(C1896l.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(C1896l.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList m28686a = C1919c.m28686a(context, obtainStyledAttributes, C1896l.MaterialCalendarItem_itemFillColor);
        ColorStateList m28686a2 = C1919c.m28686a(context, obtainStyledAttributes, C1896l.MaterialCalendarItem_itemTextColor);
        ColorStateList m28686a3 = C1919c.m28686a(context, obtainStyledAttributes, C1896l.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1896l.MaterialCalendarItem_itemStrokeWidth, 0);
        C1946m m28528m = C1946m.m28574b(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(C1896l.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m28528m();
        obtainStyledAttributes.recycle();
        return new C8099a(m28686a, m28686a2, m28686a3, dimensionPixelSize, m28528m, rect);
    }

    /* renamed from: b */
    public int m4938b() {
        return this.f36625a.bottom;
    }

    /* renamed from: c */
    public int m4937c() {
        return this.f36625a.top;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.graphics.drawable.RippleDrawable] */
    /* renamed from: d */
    public void m4936d(TextView textView) {
        C1938h c1938h = new C1938h();
        C1938h c1938h2 = new C1938h();
        c1938h.setShapeAppearanceModel(this.f36630f);
        c1938h2.setShapeAppearanceModel(this.f36630f);
        c1938h.m28625a0(this.f36627c);
        c1938h.m28605k0(this.f36629e, this.f36628d);
        textView.setTextColor(this.f36626b);
        if (Build.VERSION.SDK_INT >= 21) {
            c1938h = new RippleDrawable(this.f36626b.withAlpha(30), c1938h, c1938h2);
        }
        Rect rect = this.f36625a;
        C1679w.m29267u0(textView, new InsetDrawable((Drawable) c1938h, rect.left, rect.top, rect.right, rect.bottom));
    }
}
