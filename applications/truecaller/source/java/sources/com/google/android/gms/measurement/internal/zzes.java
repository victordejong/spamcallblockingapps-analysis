package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import e.m.a.f.l.a.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzes.class */
public final class zzes {

    /* renamed from: a */
    public final String f6379a;

    /* renamed from: b */
    public final long f6380b;

    /* renamed from: c */
    public boolean f6381c;

    /* renamed from: d */
    public long f6382d;

    /* renamed from: e */
    public final /* synthetic */ u f6383e;

    public zzes(u uVar, String str, long j) {
        this.f6383e = uVar;
        Preconditions.m38901g(str);
        this.f6379a = str;
        this.f6380b = j;
    }

    /* renamed from: a */
    public final long m38580a() {
        if (!this.f6381c) {
            this.f6381c = true;
            this.f6382d = this.f6383e.k().getLong(this.f6379a, this.f6380b);
        }
        return this.f6382d;
    }

    /* renamed from: b */
    public final void m38579b(long j) {
        SharedPreferences.Editor edit = this.f6383e.k().edit();
        edit.putLong(this.f6379a, j);
        edit.apply();
        this.f6382d = j;
    }
}
