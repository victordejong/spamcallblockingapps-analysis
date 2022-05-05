package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfh.class */
public final class zzfh {

    /* renamed from: a */
    private final String f9223a;

    /* renamed from: b */
    private final long f9224b;

    /* renamed from: c */
    private boolean f9225c;

    /* renamed from: d */
    private long f9226d;

    /* renamed from: e */
    private final /* synthetic */ zzfd f9227e;

    public zzfh(zzfd zzfdVar, String str, long j) {
        this.f9227e = zzfdVar;
        Preconditions.m14527g(str);
        this.f9223a = str;
        this.f9224b = j;
    }

    @WorkerThread
    /* renamed from: a */
    public final long m11433a() {
        if (!this.f9225c) {
            this.f9225c = true;
            this.f9226d = this.f9227e.m11460C().getLong(this.f9223a, this.f9224b);
        }
        return this.f9226d;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m11432b(long j) {
        SharedPreferences.Editor edit = this.f9227e.m11460C().edit();
        edit.putLong(this.f9223a, j);
        edit.apply();
        this.f9226d = j;
    }
}
