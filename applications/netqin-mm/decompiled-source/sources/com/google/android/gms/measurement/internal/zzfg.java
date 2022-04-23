package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfg.class */
public final class zzfg {

    /* renamed from: a */
    public final String f29959a;

    /* renamed from: b */
    public final long f29960b;

    /* renamed from: c */
    public boolean f29961c;

    /* renamed from: d */
    public long f29962d;

    /* renamed from: e */
    public final /* synthetic */ C4737k3 f29963e;

    public zzfg(C4737k3 k3Var, String str, long j) {
        this.f29963e = k3Var;
        Preconditions.m17281b(str);
        this.f29959a = str;
        this.f29960b = j;
    }

    /* renamed from: a */
    public final long m9131a() {
        if (!this.f29961c) {
            this.f29961c = true;
            this.f29962d = this.f29963e.m24919q().getLong(this.f29959a, this.f29960b);
        }
        return this.f29962d;
    }

    /* renamed from: a */
    public final void m9130a(long j) {
        SharedPreferences.Editor edit = this.f29963e.m24919q().edit();
        edit.putLong(this.f29959a, j);
        edit.apply();
        this.f29962d = j;
    }
}
