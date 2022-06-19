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
import androidx.core.p036e.C0833d;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
/* renamed from: com.google.android.material.datepicker.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/a.class */
final class C14512a {

    /* renamed from: a */
    final Rect f52952a;

    /* renamed from: b */
    private final ColorStateList f52953b;

    /* renamed from: c */
    private final ColorStateList f52954c;

    /* renamed from: d */
    private final ColorStateList f52955d;

    /* renamed from: e */
    private final int f52956e;

    /* renamed from: f */
    private final C14678m f52957f;

    private C14512a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, C14678m c14678m, Rect rect) {
        C0833d.m44411a(rect.left);
        C0833d.m44411a(rect.top);
        C0833d.m44411a(rect.right);
        C0833d.m44411a(rect.bottom);
        this.f52952a = rect;
        this.f52953b = colorStateList2;
        this.f52954c = colorStateList;
        this.f52955d = colorStateList3;
        this.f52956e = i;
        this.f52957f = c14678m;
    }

    /* renamed from: a */
    public static C14512a m10859a(Context context, int i) {
        C0833d.m44407a(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C14376a.C14388l.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(C14376a.C14388l.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(C14376a.C14388l.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(C14376a.C14388l.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(C14376a.C14388l.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList m10653a = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.MaterialCalendarItem_itemFillColor);
        ColorStateList m10653a2 = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.MaterialCalendarItem_itemTextColor);
        ColorStateList m10653a3 = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.MaterialCalendarItem_itemStrokeWidth, 0);
        C14678m m10421a = C14678m.m10428a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m10421a();
        obtainStyledAttributes.recycle();
        return new C14512a(m10653a, m10653a2, m10653a3, dimensionPixelSize, m10421a, rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.graphics.drawable.RippleDrawable] */
    /* renamed from: a */
    public final void m10858a(TextView textView) {
        C14670h c14670h = new C14670h();
        C14670h c14670h2 = new C14670h();
        c14670h.setShapeAppearanceModel(this.f52957f);
        c14670h2.setShapeAppearanceModel(this.f52957f);
        c14670h.m10456g(this.f52954c);
        c14670h.m10481a(this.f52956e, this.f52955d);
        textView.setTextColor(this.f52953b);
        if (Build.VERSION.SDK_INT >= 21) {
            c14670h = new RippleDrawable(this.f52953b.withAlpha(30), c14670h, c14670h2);
        }
        C0926v.m44128a(textView, new InsetDrawable((Drawable) c14670h, this.f52952a.left, this.f52952a.top, this.f52952a.right, this.f52952a.bottom));
    }
}
