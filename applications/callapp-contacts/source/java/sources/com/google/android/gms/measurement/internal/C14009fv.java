package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.zzz;
/* renamed from: com.google.android.gms.measurement.internal.fv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fv.class */
public final class C14009fv {

    /* renamed from: a */
    final Context f51649a;

    /* renamed from: b */
    String f51650b;

    /* renamed from: c */
    String f51651c;

    /* renamed from: d */
    String f51652d;

    /* renamed from: e */
    Boolean f51653e;

    /* renamed from: f */
    long f51654f;

    /* renamed from: g */
    zzz f51655g;

    /* renamed from: h */
    boolean f51656h;

    /* renamed from: i */
    final Long f51657i;

    /* renamed from: j */
    String f51658j;

    public C14009fv(Context context, zzz zzzVar, Long l) {
        this.f51656h = true;
        C12045o.m19162a(context);
        Context applicationContext = context.getApplicationContext();
        C12045o.m19162a(applicationContext);
        this.f51649a = applicationContext;
        this.f51657i = l;
        if (zzzVar != null) {
            this.f51655g = zzzVar;
            this.f51650b = zzzVar.zzf;
            this.f51651c = zzzVar.zze;
            this.f51652d = zzzVar.zzd;
            this.f51656h = zzzVar.zzc;
            this.f51654f = zzzVar.zzb;
            this.f51658j = zzzVar.zzh;
            Bundle bundle = zzzVar.zzg;
            if (bundle == null) {
                return;
            }
            this.f51653e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
        }
    }
}
