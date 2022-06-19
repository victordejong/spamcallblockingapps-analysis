package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzjo.class */
public final /* synthetic */ class zzjo implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzjr f6449a;

    /* renamed from: b */
    public final /* synthetic */ zzeh f6450b;

    /* renamed from: c */
    public final /* synthetic */ JobParameters f6451c;

    public /* synthetic */ zzjo(zzjr zzjrVar, zzeh zzehVar, JobParameters jobParameters) {
        this.f6449a = zzjrVar;
        this.f6450b = zzehVar;
        this.f6451c = jobParameters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjr zzjrVar = this.f6449a;
        zzeh zzehVar = this.f6450b;
        JobParameters jobParameters = this.f6451c;
        Objects.requireNonNull(zzjrVar);
        zzehVar.n.m38590a("AppMeasurementJobService processed last upload request.");
        ((zzjq) zzjrVar.f6452a).m38559b(jobParameters, false);
    }
}
