package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.y3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y3.class */
public final class C2372y3 {

    /* renamed from: a */
    private final String f10488a;

    /* renamed from: b */
    private final boolean f10489b;

    /* renamed from: c */
    private boolean f10490c;

    /* renamed from: d */
    private boolean f10491d;

    /* renamed from: e */
    final /* synthetic */ e4 f10492e;

    public C2372y3(e4 e4Var, String str, boolean z) {
        this.f10492e = e4Var;
        C1581h.m8351d(str);
        this.f10488a = str;
        this.f10489b = z;
    }

    /* renamed from: a */
    public final boolean m3807a() {
        if (!this.f10490c) {
            this.f10490c = true;
            this.f10491d = this.f10492e.n().getBoolean(this.f10488a, this.f10489b);
        }
        return this.f10491d;
    }

    /* renamed from: b */
    public final void m3806b(boolean z) {
        SharedPreferences.Editor edit = this.f10492e.n().edit();
        edit.putBoolean(this.f10488a, z);
        edit.apply();
        this.f10491d = z;
    }
}
