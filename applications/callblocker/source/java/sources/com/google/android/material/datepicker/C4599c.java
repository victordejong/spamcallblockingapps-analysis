package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.C4492a;
import com.google.android.material.p156n.C4717b;
import com.google.android.material.p156n.C4718c;
/* renamed from: com.google.android.material.datepicker.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/c.class */
public final class C4599c {

    /* renamed from: a */
    final C4598b f20046a;

    /* renamed from: b */
    final C4598b f20047b;

    /* renamed from: c */
    final C4598b f20048c;

    /* renamed from: d */
    final C4598b f20049d;

    /* renamed from: e */
    final C4598b f20050e;

    /* renamed from: f */
    final C4598b f20051f;

    /* renamed from: g */
    final C4598b f20052g;

    /* renamed from: h */
    final Paint f20053h = new Paint();

    public C4599c(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C4717b.m2787a(context, C4492a.C4494b.materialCalendarStyle, C4605h.class.getCanonicalName()), C4492a.C4504l.MaterialCalendar);
        this.f20046a = C4598b.m3218a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendar_dayStyle, 0));
        this.f20052g = C4598b.m3218a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendar_dayInvalidStyle, 0));
        this.f20047b = C4598b.m3218a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendar_daySelectedStyle, 0));
        this.f20048c = C4598b.m3218a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList m2784a = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.MaterialCalendar_rangeFillColor);
        this.f20049d = C4598b.m3218a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendar_yearStyle, 0));
        this.f20050e = C4598b.m3218a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendar_yearSelectedStyle, 0));
        this.f20051f = C4598b.m3218a(context, obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialCalendar_yearTodayStyle, 0));
        this.f20053h.setColor(m2784a.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
