package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.ed */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ed.class */
public final class C13963ed {

    /* renamed from: a */
    final /* synthetic */ C13964ee f51451a;

    /* renamed from: b */
    private final String f51452b;

    /* renamed from: c */
    private boolean f51453c;

    /* renamed from: d */
    private String f51454d;

    public C13963ed(C13964ee c13964ee, String str, String str2) {
        this.f51451a = c13964ee;
        C12045o.m19160a(str);
        this.f51452b = str;
    }

    /* renamed from: a */
    public final String m12043a() {
        if (!this.f51453c) {
            this.f51453c = true;
            this.f51454d = this.f51451a.ah_().getString(this.f51452b, null);
        }
        return this.f51454d;
    }

    /* renamed from: a */
    public final void m12042a(String str) {
        SharedPreferences.Editor edit = this.f51451a.ah_().edit();
        edit.putString(this.f51452b, str);
        edit.apply();
        this.f51454d = str;
    }
}
