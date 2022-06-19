package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.a4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a4.class */
public final class C2220a4 {

    /* renamed from: a */
    private final String f9971a;

    /* renamed from: b */
    private final long f9972b;

    /* renamed from: c */
    private boolean f9973c;

    /* renamed from: d */
    private long f9974d;

    /* renamed from: e */
    final /* synthetic */ e4 f9975e;

    public C2220a4(e4 e4Var, String str, long j) {
        this.f9975e = e4Var;
        C1581h.m8351d(str);
        this.f9971a = str;
        this.f9972b = j;
    }

    /* renamed from: a */
    public final long m4026a() {
        if (!this.f9973c) {
            this.f9973c = true;
            this.f9974d = this.f9975e.n().getLong(this.f9971a, this.f9972b);
        }
        return this.f9974d;
    }

    /* renamed from: b */
    public final void m4025b(long j) {
        SharedPreferences.Editor edit = this.f9975e.n().edit();
        edit.putLong(this.f9971a, j);
        edit.apply();
        this.f9974d = j;
    }
}
