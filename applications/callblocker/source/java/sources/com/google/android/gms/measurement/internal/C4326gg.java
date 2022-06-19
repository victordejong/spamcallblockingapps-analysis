package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.measurement.C3811b;
/* renamed from: com.google.android.gms.measurement.internal.gg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gg.class */
public final class C4326gg {

    /* renamed from: a */
    final Context f18980a;

    /* renamed from: b */
    String f18981b;

    /* renamed from: c */
    String f18982c;

    /* renamed from: d */
    String f18983d;

    /* renamed from: e */
    Boolean f18984e;

    /* renamed from: f */
    long f18985f;

    /* renamed from: g */
    C3811b f18986g;

    /* renamed from: h */
    boolean f18987h;

    /* renamed from: i */
    Long f18988i;

    public C4326gg(Context context, C3811b c3811b, Long l) {
        this.f18987h = true;
        C2662s.m13981a(context);
        Context applicationContext = context.getApplicationContext();
        C2662s.m13981a(applicationContext);
        this.f18980a = applicationContext;
        this.f18988i = l;
        if (c3811b != null) {
            this.f18986g = c3811b;
            this.f18981b = c3811b.f17875f;
            this.f18982c = c3811b.f17874e;
            this.f18983d = c3811b.f17873d;
            this.f18987h = c3811b.f17872c;
            this.f18985f = c3811b.f17871b;
            if (c3811b.f17876g == null) {
                return;
            }
            this.f18984e = Boolean.valueOf(c3811b.f17876g.getBoolean("dataCollectionDefaultEnabled", true));
        }
    }
}
