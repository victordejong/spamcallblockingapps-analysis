package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.ep */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ep.class */
public final class C4281ep {

    /* renamed from: a */
    private final String f18791a;

    /* renamed from: b */
    private final long f18792b;

    /* renamed from: c */
    private boolean f18793c;

    /* renamed from: d */
    private long f18794d;

    /* renamed from: e */
    private final /* synthetic */ C4277el f18795e;

    public C4281ep(C4277el c4277el, String str, long j) {
        this.f18795e = c4277el;
        C2662s.m13979a(str);
        this.f18791a = str;
        this.f18792b = j;
    }

    /* renamed from: a */
    public final long m4624a() {
        if (!this.f18793c) {
            this.f18793c = true;
            this.f18794d = this.f18795e.m4637c().getLong(this.f18791a, this.f18792b);
        }
        return this.f18794d;
    }

    /* renamed from: a */
    public final void m4623a(long j) {
        SharedPreferences.Editor edit = this.f18795e.m4637c().edit();
        edit.putLong(this.f18791a, j);
        edit.apply();
        this.f18794d = j;
    }
}
