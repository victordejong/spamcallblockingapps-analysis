package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.ea */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ea.class */
public final class C13960ea {

    /* renamed from: a */
    final /* synthetic */ C13964ee f51440a;

    /* renamed from: b */
    private final String f51441b;

    /* renamed from: c */
    private final long f51442c;

    /* renamed from: d */
    private boolean f51443d;

    /* renamed from: e */
    private long f51444e;

    public C13960ea(C13964ee c13964ee, String str, long j) {
        this.f51440a = c13964ee;
        C12045o.m19160a(str);
        this.f51441b = str;
        this.f51442c = j;
    }

    /* renamed from: a */
    public final long m12053a() {
        if (!this.f51443d) {
            this.f51443d = true;
            this.f51444e = this.f51440a.ah_().getLong(this.f51441b, this.f51442c);
        }
        return this.f51444e;
    }

    /* renamed from: a */
    public final void m12052a(long j) {
        SharedPreferences.Editor edit = this.f51440a.ah_().edit();
        edit.putLong(this.f51441b, j);
        edit.apply();
        this.f51444e = j;
    }
}
