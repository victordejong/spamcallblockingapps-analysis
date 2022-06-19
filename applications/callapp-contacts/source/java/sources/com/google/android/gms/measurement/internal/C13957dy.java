package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.dy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dy.class */
public final class C13957dy {

    /* renamed from: a */
    final /* synthetic */ C13964ee f51428a;

    /* renamed from: b */
    private final String f51429b;

    /* renamed from: c */
    private final boolean f51430c;

    /* renamed from: d */
    private boolean f51431d;

    /* renamed from: e */
    private boolean f51432e;

    public C13957dy(C13964ee c13964ee, String str, boolean z) {
        this.f51428a = c13964ee;
        C12045o.m19160a(str);
        this.f51429b = str;
        this.f51430c = z;
    }

    /* renamed from: a */
    public final void m12076a(boolean z) {
        SharedPreferences.Editor edit = this.f51428a.ah_().edit();
        edit.putBoolean(this.f51429b, z);
        edit.apply();
        this.f51432e = z;
    }

    /* renamed from: a */
    public final boolean m12077a() {
        if (!this.f51431d) {
            this.f51431d = true;
            this.f51432e = this.f51428a.ah_().getBoolean(this.f51429b, this.f51430c);
        }
        return this.f51432e;
    }
}
