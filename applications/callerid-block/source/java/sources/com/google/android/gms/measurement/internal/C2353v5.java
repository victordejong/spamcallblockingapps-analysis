package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.zzz;
/* renamed from: com.google.android.gms.measurement.internal.v5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v5.class */
public final class C2353v5 {

    /* renamed from: a */
    final Context f10440a;

    /* renamed from: b */
    String f10441b;

    /* renamed from: c */
    String f10442c;

    /* renamed from: d */
    String f10443d;

    /* renamed from: e */
    Boolean f10444e;

    /* renamed from: f */
    long f10445f;

    /* renamed from: g */
    zzz f10446g;

    /* renamed from: h */
    boolean f10447h;

    /* renamed from: i */
    final Long f10448i;

    /* renamed from: j */
    String f10449j;

    public C2353v5(Context context, zzz zzzVar, Long l) {
        this.f10447h = true;
        C1581h.m8347h(context);
        Context applicationContext = context.getApplicationContext();
        C1581h.m8347h(applicationContext);
        this.f10440a = applicationContext;
        this.f10448i = l;
        if (zzzVar != null) {
            this.f10446g = zzzVar;
            this.f10441b = zzzVar.g;
            this.f10442c = zzzVar.f;
            this.f10443d = zzzVar.e;
            this.f10447h = zzzVar.d;
            this.f10445f = zzzVar.c;
            this.f10449j = zzzVar.i;
            Bundle bundle = zzzVar.h;
            if (bundle == null) {
                return;
            }
            this.f10444e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
        }
    }
}
