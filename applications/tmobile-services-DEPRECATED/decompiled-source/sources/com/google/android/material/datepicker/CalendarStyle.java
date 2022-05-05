package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.google.android.material.C1027R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/CalendarStyle.class */
public final class CalendarStyle {
    @NonNull

    /* renamed from: a */
    final CalendarItemStyle f10507a;
    @NonNull

    /* renamed from: b */
    final CalendarItemStyle f10508b;
    @NonNull

    /* renamed from: c */
    final CalendarItemStyle f10509c;
    @NonNull

    /* renamed from: d */
    final CalendarItemStyle f10510d;
    @NonNull

    /* renamed from: e */
    final CalendarItemStyle f10511e;
    @NonNull

    /* renamed from: f */
    final CalendarItemStyle f10512f;
    @NonNull

    /* renamed from: g */
    final CalendarItemStyle f10513g;
    @NonNull

    /* renamed from: h */
    final Paint f10514h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CalendarStyle(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.m9396c(context, C1027R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), C1027R.styleable.MaterialCalendar);
        this.f10507a = CalendarItemStyle.m9993a(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendar_dayStyle, 0));
        this.f10513g = CalendarItemStyle.m9993a(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f10508b = CalendarItemStyle.m9993a(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f10509c = CalendarItemStyle.m9993a(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList a = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.MaterialCalendar_rangeFillColor);
        this.f10510d = CalendarItemStyle.m9993a(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendar_yearStyle, 0));
        this.f10511e = CalendarItemStyle.m9993a(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f10512f = CalendarItemStyle.m9993a(context, obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f10514h = paint;
        paint.setColor(a.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
