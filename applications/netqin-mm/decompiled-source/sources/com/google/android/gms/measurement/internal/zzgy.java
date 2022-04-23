package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzae;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgy.class */
public final class zzgy {

    /* renamed from: a */
    public final Context f30047a;

    /* renamed from: b */
    public String f30048b;

    /* renamed from: c */
    public String f30049c;

    /* renamed from: d */
    public String f30050d;

    /* renamed from: e */
    public Boolean f30051e;

    /* renamed from: f */
    public long f30052f;

    /* renamed from: g */
    public zzae f30053g;

    /* renamed from: h */
    public boolean f30054h;

    /* renamed from: i */
    public Long f30055i;

    @VisibleForTesting
    public zzgy(Context context, zzae zzaeVar, Long l) {
        this.f30054h = true;
        Preconditions.m17288a(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.m17288a(applicationContext);
        this.f30047a = applicationContext;
        this.f30055i = l;
        if (zzaeVar != null) {
            this.f30053g = zzaeVar;
            this.f30048b = zzaeVar.f29407f;
            this.f30049c = zzaeVar.f29406e;
            this.f30050d = zzaeVar.f29405d;
            this.f30054h = zzaeVar.f29404c;
            this.f30052f = zzaeVar.f29403b;
            Bundle bundle = zzaeVar.f29408g;
            if (bundle != null) {
                this.f30051e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
