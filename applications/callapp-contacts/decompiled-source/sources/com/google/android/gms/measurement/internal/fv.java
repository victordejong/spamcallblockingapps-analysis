package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.zzz;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fv.class */
public final class fv {

    /* renamed from: a  reason: collision with root package name */
    final Context f29658a;

    /* renamed from: b  reason: collision with root package name */
    String f29659b;

    /* renamed from: c  reason: collision with root package name */
    String f29660c;

    /* renamed from: d  reason: collision with root package name */
    String f29661d;
    Boolean e;
    long f;
    zzz g;
    boolean h;
    final Long i;
    String j;

    public fv(Context context, zzz zzzVar, Long l) {
        this.h = true;
        o.a(context);
        Context applicationContext = context.getApplicationContext();
        o.a(applicationContext);
        this.f29658a = applicationContext;
        this.i = l;
        if (zzzVar != null) {
            this.g = zzzVar;
            this.f29659b = zzzVar.zzf;
            this.f29660c = zzzVar.zze;
            this.f29661d = zzzVar.zzd;
            this.h = zzzVar.zzc;
            this.f = zzzVar.zzb;
            this.j = zzzVar.zzh;
            Bundle bundle = zzzVar.zzg;
            if (bundle != null) {
                this.e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
