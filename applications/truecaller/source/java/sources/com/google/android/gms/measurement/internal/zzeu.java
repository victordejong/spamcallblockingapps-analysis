package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import e.m.a.f.l.a.u;
import e.m.a.f.l.a.v0;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzeu.class */
public final class zzeu {
    @VisibleForTesting

    /* renamed from: a */
    public final String f6384a;

    /* renamed from: b */
    public final String f6385b;

    /* renamed from: c */
    public final String f6386c;

    /* renamed from: d */
    public final long f6387d;

    /* renamed from: e */
    public final /* synthetic */ u f6388e;

    public /* synthetic */ zzeu(u uVar, long j) {
        this.f6388e = uVar;
        Preconditions.m38901g("health_monitor");
        Preconditions.m38907a(j > 0);
        this.f6384a = "health_monitor:start";
        this.f6385b = "health_monitor:count";
        this.f6386c = "health_monitor:value";
        this.f6387d = j;
    }

    /* renamed from: a */
    public final void m38578a() {
        this.f6388e.d();
        long mo38787c = ((v0) this.f6388e).a.n.mo38787c();
        SharedPreferences.Editor edit = this.f6388e.k().edit();
        edit.remove(this.f6385b);
        edit.remove(this.f6386c);
        edit.putLong(this.f6384a, mo38787c);
        edit.apply();
    }
}
