package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.a;
import com.google.android.material.h.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final a f30423a;

    /* renamed from: b  reason: collision with root package name */
    final a f30424b;

    /* renamed from: c  reason: collision with root package name */
    final a f30425c;

    /* renamed from: d  reason: collision with root package name */
    final a f30426d;
    final a e;
    final a f;
    final a g;
    final Paint h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.h.b.a(context, a.b.materialCalendarStyle, f.class.getCanonicalName()), a.l.MaterialCalendar);
        this.f30423a = a.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendar_dayStyle, 0));
        this.g = a.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendar_dayInvalidStyle, 0));
        this.f30424b = a.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendar_daySelectedStyle, 0));
        this.f30425c = a.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList a2 = c.a(context, obtainStyledAttributes, a.l.MaterialCalendar_rangeFillColor);
        this.f30426d = a.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendar_yearStyle, 0));
        this.e = a.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendar_yearSelectedStyle, 0));
        this.f = a.a(context, obtainStyledAttributes.getResourceId(a.l.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.h = paint;
        paint.setColor(a2.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
