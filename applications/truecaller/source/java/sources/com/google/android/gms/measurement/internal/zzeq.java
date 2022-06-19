package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import e.m.a.f.l.a.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzeq.class */
public final class zzeq {

    /* renamed from: a */
    public final String f6370a;

    /* renamed from: b */
    public final boolean f6371b;

    /* renamed from: c */
    public boolean f6372c;

    /* renamed from: d */
    public boolean f6373d;

    /* renamed from: e */
    public final /* synthetic */ u f6374e;

    public zzeq(u uVar, String str, boolean z) {
        this.f6374e = uVar;
        Preconditions.m38901g(str);
        this.f6370a = str;
        this.f6371b = z;
    }

    /* renamed from: a */
    public final void m38584a(boolean z) {
        SharedPreferences.Editor edit = this.f6374e.k().edit();
        edit.putBoolean(this.f6370a, z);
        edit.apply();
        this.f6373d = z;
    }

    /* renamed from: b */
    public final boolean m38583b() {
        if (!this.f6372c) {
            this.f6372c = true;
            this.f6373d = this.f6374e.k().getBoolean(this.f6370a, this.f6371b);
        }
        return this.f6373d;
    }
}
