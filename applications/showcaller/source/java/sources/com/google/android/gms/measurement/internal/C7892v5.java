package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.zzz;
/* renamed from: com.google.android.gms.measurement.internal.v5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/v5.class */
public final class C7892v5 {

    /* renamed from: a */
    final Context f35737a;

    /* renamed from: b */
    String f35738b;

    /* renamed from: c */
    String f35739c;

    /* renamed from: d */
    String f35740d;

    /* renamed from: e */
    Boolean f35741e;

    /* renamed from: f */
    long f35742f;

    /* renamed from: g */
    zzz f35743g;

    /* renamed from: h */
    boolean f35744h;

    /* renamed from: i */
    final Long f35745i;

    /* renamed from: j */
    String f35746j;

    public C7892v5(Context context, zzz zzzVar, Long l) {
        this.f35744h = true;
        C6155o.m17018j(context);
        Context applicationContext = context.getApplicationContext();
        C6155o.m17018j(applicationContext);
        this.f35737a = applicationContext;
        this.f35745i = l;
        if (zzzVar != null) {
            this.f35743g = zzzVar;
            this.f35738b = zzzVar.f34953i;
            this.f35739c = zzzVar.f34952h;
            this.f35740d = zzzVar.f34951g;
            this.f35744h = zzzVar.f34950f;
            this.f35742f = zzzVar.f34949e;
            this.f35746j = zzzVar.f34955k;
            Bundle bundle = zzzVar.f34954j;
            if (bundle == null) {
                return;
            }
            this.f35741e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
        }
    }
}
