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
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/CalendarItemStyle.class */
final class CalendarItemStyle {
    @NonNull

    /* renamed from: a */
    private final Rect f10501a;

    /* renamed from: b */
    private final ColorStateList f10502b;

    /* renamed from: c */
    private final ColorStateList f10503c;

    /* renamed from: d */
    private final ColorStateList f10504d;

    /* renamed from: e */
    private final int f10505e;

    /* renamed from: f */
    private final ShapeAppearanceModel f10506f;

    private CalendarItemStyle(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, ShapeAppearanceModel shapeAppearanceModel, @NonNull Rect rect) {
        Preconditions.m19338c(rect.left);
        Preconditions.m19338c(rect.top);
        Preconditions.m19338c(rect.right);
        Preconditions.m19338c(rect.bottom);
        this.f10501a = rect;
        this.f10502b = colorStateList2;
        this.f10503c = colorStateList;
        this.f10504d = colorStateList3;
        this.f10505e = i;
        this.f10506f = shapeAppearanceModel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public static CalendarItemStyle m9993a(@NonNull Context context, @StyleRes int i) {
        Preconditions.m19339b(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C1027R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(C1027R.styleable.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(C1027R.styleable.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(C1027R.styleable.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(C1027R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList a = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList a2 = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList a3 = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        ShapeAppearanceModel m = ShapeAppearanceModel.m9276b(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m9232m();
        obtainStyledAttributes.recycle();
        return new CalendarItemStyle(a, a2, a3, dimensionPixelSize, m, rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int m9992b() {
        return this.f10501a.bottom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m9991c() {
        return this.f10501a.top;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m9990d(@NonNull TextView textView) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        materialShapeDrawable.setShapeAppearanceModel(this.f10506f);
        materialShapeDrawable2.setShapeAppearanceModel(this.f10506f);
        materialShapeDrawable.m9328W(this.f10503c);
        materialShapeDrawable.m9310h0(this.f10505e, this.f10504d);
        textView.setTextColor(this.f10502b);
        Drawable drawable = materialShapeDrawable;
        if (Build.VERSION.SDK_INT >= 21) {
            drawable = new RippleDrawable(this.f10502b.withAlpha(30), materialShapeDrawable, materialShapeDrawable2);
        }
        Rect rect = this.f10501a;
        ViewCompat.m19177q0(textView, new InsetDrawable(drawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
