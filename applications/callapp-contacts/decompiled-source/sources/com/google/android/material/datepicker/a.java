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
import androidx.core.e.d;
import androidx.core.view.v;
import com.google.android.material.a;
import com.google.android.material.h.c;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    final Rect f30419a;

    /* renamed from: b  reason: collision with root package name */
    private final ColorStateList f30420b;

    /* renamed from: c  reason: collision with root package name */
    private final ColorStateList f30421c;

    /* renamed from: d  reason: collision with root package name */
    private final ColorStateList f30422d;
    private final int e;
    private final m f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, m mVar, Rect rect) {
        d.a(rect.left);
        d.a(rect.top);
        d.a(rect.right);
        d.a(rect.bottom);
        this.f30419a = rect;
        this.f30420b = colorStateList2;
        this.f30421c = colorStateList;
        this.f30422d = colorStateList3;
        this.e = i;
        this.f = mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, int i) {
        d.a(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, a.l.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(a.l.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(a.l.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(a.l.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(a.l.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList a2 = c.a(context, obtainStyledAttributes, a.l.MaterialCalendarItem_itemFillColor);
        ColorStateList a3 = c.a(context, obtainStyledAttributes, a.l.MaterialCalendarItem_itemTextColor);
        ColorStateList a4 = c.a(context, obtainStyledAttributes, a.l.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.l.MaterialCalendarItem_itemStrokeWidth, 0);
        m a5 = m.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(a.l.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).a();
        obtainStyledAttributes.recycle();
        return new a(a2, a3, a4, dimensionPixelSize, a5, rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(TextView textView) {
        h hVar = new h();
        h hVar2 = new h();
        hVar.setShapeAppearanceModel(this.f);
        hVar2.setShapeAppearanceModel(this.f);
        hVar.g(this.f30421c);
        hVar.a(this.e, this.f30422d);
        textView.setTextColor(this.f30420b);
        Drawable drawable = hVar;
        if (Build.VERSION.SDK_INT >= 21) {
            drawable = new RippleDrawable(this.f30420b.withAlpha(30), hVar, hVar2);
        }
        v.a(textView, new InsetDrawable(drawable, this.f30419a.left, this.f30419a.top, this.f30419a.right, this.f30419a.bottom));
    }
}
