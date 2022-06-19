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
import androidx.core.p025g.C0527f;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
/* renamed from: com.google.android.material.datepicker.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/b.class */
final class C4598b {

    /* renamed from: a */
    private final Rect f20040a;

    /* renamed from: b */
    private final ColorStateList f20041b;

    /* renamed from: c */
    private final ColorStateList f20042c;

    /* renamed from: d */
    private final ColorStateList f20043d;

    /* renamed from: e */
    private final int f20044e;

    /* renamed from: f */
    private final C4743k f20045f;

    private C4598b(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, C4743k c4743k, Rect rect) {
        C0527f.m20645a(rect.left);
        C0527f.m20645a(rect.top);
        C0527f.m20645a(rect.right);
        C0527f.m20645a(rect.bottom);
        this.f20040a = rect;
        this.f20041b = colorStateList2;
        this.f20042c = colorStateList;
        this.f20043d = colorStateList3;
        this.f20044e = i;
        this.f20045f = c4743k;
    }

    /* renamed from: a */
    public static C4598b m3218a(Context context, int i) {
        C0527f.m20642a(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C4492a.C4504l.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(C4492a.C4504l.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(C4492a.C4504l.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(C4492a.C4504l.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(C4492a.C4504l.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList m2784a = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.MaterialCalendarItem_itemFillColor);
        ColorStateList m2784a2 = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.MaterialCalendarItem_itemTextColor);
        ColorStateList m2784a3 = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.MaterialCalendarItem_itemStrokeWidth, 0);
        C4743k m2654a = C4743k.m2676a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m2654a();
        obtainStyledAttributes.recycle();
        return new C4598b(m2784a, m2784a2, m2784a3, dimensionPixelSize, m2654a, rect);
    }

    /* renamed from: a */
    public int m3219a() {
        return this.f20040a.top;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.graphics.drawable.RippleDrawable] */
    /* renamed from: a */
    public void m3217a(TextView textView) {
        C4736g c4736g = new C4736g();
        C4736g c4736g2 = new C4736g();
        c4736g.setShapeAppearanceModel(this.f20045f);
        c4736g2.setShapeAppearanceModel(this.f20045f);
        c4736g.m2697f(this.f20042c);
        c4736g.m2726a(this.f20044e, this.f20043d);
        textView.setTextColor(this.f20041b);
        if (Build.VERSION.SDK_INT >= 21) {
            c4736g = new RippleDrawable(this.f20041b.withAlpha(30), c4736g, c4736g2);
        }
        C0595u.m20350a(textView, new InsetDrawable((Drawable) c4736g, this.f20040a.left, this.f20040a.top, this.f20040a.right, this.f20040a.bottom));
    }

    /* renamed from: b */
    public int m3216b() {
        return this.f20040a.bottom;
    }
}
