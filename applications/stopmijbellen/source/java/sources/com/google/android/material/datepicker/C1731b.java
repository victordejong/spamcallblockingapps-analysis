package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.widget.TextView;
import java.util.WeakHashMap;
import p029c4.C0817a;
import p029c4.C0822f;
import p029c4.C0827i;
import p124i4.C3102d;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
import p304z3.C5071c;
/* renamed from: com.google.android.material.datepicker.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/b.class */
public final class C1731b {

    /* renamed from: a */
    public final Rect f6518a;

    /* renamed from: b */
    public final ColorStateList f6519b;

    /* renamed from: c */
    public final ColorStateList f6520c;

    /* renamed from: d */
    public final ColorStateList f6521d;

    /* renamed from: e */
    public final int f6522e;

    /* renamed from: f */
    public final C0827i f6523f;

    public C1731b(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, C0827i c0827i, Rect rect) {
        C3102d.m2630i(rect.left);
        C3102d.m2630i(rect.top);
        C3102d.m2630i(rect.right);
        C3102d.m2630i(rect.bottom);
        this.f6518a = rect;
        this.f6519b = colorStateList2;
        this.f6520c = colorStateList;
        this.f6521d = colorStateList3;
        this.f6522e = i;
        this.f6523f = c0827i;
    }

    /* renamed from: a */
    public static C1731b m4636a(Context context, int i) {
        C3102d.m2631h(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C3260w0.f11039t);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList m72a = C5071c.m72a(context, obtainStyledAttributes, 4);
        ColorStateList m72a2 = C5071c.m72a(context, obtainStyledAttributes, 9);
        ColorStateList m72a3 = C5071c.m72a(context, obtainStyledAttributes, 7);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        C0827i m7299a = C0827i.m7305a(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0), new C0817a(0)).m7299a();
        obtainStyledAttributes.recycle();
        return new C1731b(m72a, m72a2, m72a3, dimensionPixelSize, m7299a, rect);
    }

    /* renamed from: b */
    public void m4635b(TextView textView) {
        C0822f c0822f = new C0822f();
        C0822f c0822f2 = new C0822f();
        c0822f.setShapeAppearanceModel(this.f6523f);
        c0822f2.setShapeAppearanceModel(this.f6523f);
        c0822f.m7314q(this.f6520c);
        c0822f.m7311t(this.f6522e, this.f6521d);
        textView.setTextColor(this.f6519b);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f6519b.withAlpha(30), c0822f, c0822f2);
        Rect rect = this.f6518a;
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2077q(textView, insetDrawable);
    }
}
