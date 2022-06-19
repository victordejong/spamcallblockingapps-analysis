package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.C14376a;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p371h.C14598c;
/* renamed from: com.google.android.material.datepicker.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/b.class */
public final class C14513b {

    /* renamed from: a */
    final C14512a f52958a;

    /* renamed from: b */
    final C14512a f52959b;

    /* renamed from: c */
    final C14512a f52960c;

    /* renamed from: d */
    final C14512a f52961d;

    /* renamed from: e */
    final C14512a f52962e;

    /* renamed from: f */
    final C14512a f52963f;

    /* renamed from: g */
    final C14512a f52964g;

    /* renamed from: h */
    final Paint f52965h;

    public C14513b(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C14597b.m10657a(context, C14376a.C14378b.materialCalendarStyle, C14519f.class.getCanonicalName()), C14376a.C14388l.MaterialCalendar);
        this.f52958a = C14512a.m10859a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendar_dayStyle, 0));
        this.f52964g = C14512a.m10859a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendar_dayInvalidStyle, 0));
        this.f52959b = C14512a.m10859a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendar_daySelectedStyle, 0));
        this.f52960c = C14512a.m10859a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList m10653a = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.MaterialCalendar_rangeFillColor);
        this.f52961d = C14512a.m10859a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendar_yearStyle, 0));
        this.f52962e = C14512a.m10859a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendar_yearSelectedStyle, 0));
        this.f52963f = C14512a.m10859a(context, obtainStyledAttributes.getResourceId(C14376a.C14388l.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f52965h = paint;
        paint.setColor(m10653a.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
