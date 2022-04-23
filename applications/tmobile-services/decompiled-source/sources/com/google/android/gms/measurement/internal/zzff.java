package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzff.class */
public final class zzff {

    /* renamed from: a */
    private final String f9213a;

    /* renamed from: b */
    private final boolean f9214b;

    /* renamed from: c */
    private boolean f9215c;

    /* renamed from: d */
    private boolean f9216d;

    /* renamed from: e */
    private final /* synthetic */ zzfd f9217e;

    public zzff(zzfd zzfdVar, String str, boolean z) {
        this.f9217e = zzfdVar;
        Preconditions.m14527g(str);
        this.f9213a = str;
        this.f9214b = z;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m11439a(boolean z) {
        SharedPreferences.Editor edit = this.f9217e.m11460C().edit();
        edit.putBoolean(this.f9213a, z);
        edit.apply();
        this.f9216d = z;
    }

    @WorkerThread
    /* renamed from: b */
    public final boolean m11438b() {
        if (!this.f9215c) {
            this.f9215c = true;
            this.f9216d = this.f9217e.m11460C().getBoolean(this.f9213a, this.f9214b);
        }
        return this.f9216d;
    }
}
