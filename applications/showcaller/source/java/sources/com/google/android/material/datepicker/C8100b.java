package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1918b;
import p078c.p084c.p085a.p096b.p105u.C1919c;
/* renamed from: com.google.android.material.datepicker.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/b.class */
public final class C8100b {

    /* renamed from: a */
    final C8099a f36631a;

    /* renamed from: b */
    final C8099a f36632b;

    /* renamed from: c */
    final C8099a f36633c;

    /* renamed from: d */
    final C8099a f36634d;

    /* renamed from: e */
    final C8099a f36635e;

    /* renamed from: f */
    final C8099a f36636f;

    /* renamed from: g */
    final C8099a f36637g;

    /* renamed from: h */
    final Paint f36638h;

    public C8100b(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C1918b.m28688c(context, C1886b.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), C1896l.MaterialCalendar);
        this.f36631a = C8099a.m4939a(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendar_dayStyle, 0));
        this.f36637g = C8099a.m4939a(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendar_dayInvalidStyle, 0));
        this.f36632b = C8099a.m4939a(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendar_daySelectedStyle, 0));
        this.f36633c = C8099a.m4939a(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList m28686a = C1919c.m28686a(context, obtainStyledAttributes, C1896l.MaterialCalendar_rangeFillColor);
        this.f36634d = C8099a.m4939a(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendar_yearStyle, 0));
        this.f36635e = C8099a.m4939a(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendar_yearSelectedStyle, 0));
        this.f36636f = C8099a.m4939a(context, obtainStyledAttributes.getResourceId(C1896l.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f36638h = paint;
        paint.setColor(m28686a.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
