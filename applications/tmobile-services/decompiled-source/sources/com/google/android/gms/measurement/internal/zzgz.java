package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzae;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgz.class */
public final class zzgz {

    /* renamed from: a */
    final Context f9385a;

    /* renamed from: b */
    String f9386b;

    /* renamed from: c */
    String f9387c;

    /* renamed from: d */
    String f9388d;

    /* renamed from: e */
    Boolean f9389e;

    /* renamed from: f */
    long f9390f;

    /* renamed from: g */
    zzae f9391g;

    /* renamed from: h */
    boolean f9392h;

    /* renamed from: i */
    Long f9393i;

    @VisibleForTesting
    public zzgz(Context context, zzae zzaeVar, Long l) {
        this.f9392h = true;
        Preconditions.m14523k(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.m14523k(applicationContext);
        this.f9385a = applicationContext;
        this.f9393i = l;
        if (zzaeVar != null) {
            this.f9391g = zzaeVar;
            this.f9386b = zzaeVar.f8175k;
            this.f9387c = zzaeVar.f8174j;
            this.f9388d = zzaeVar.f8173i;
            this.f9392h = zzaeVar.f8172h;
            this.f9390f = zzaeVar.f8171g;
            Bundle bundle = zzaeVar.f8176l;
            if (bundle != null) {
                this.f9389e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
