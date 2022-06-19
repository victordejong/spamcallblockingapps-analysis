package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import e.m.a.f.l.a.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzev.class */
public final class zzev {

    /* renamed from: a */
    public final String f6389a;

    /* renamed from: b */
    public boolean f6390b;

    /* renamed from: c */
    public String f6391c;

    /* renamed from: d */
    public final /* synthetic */ u f6392d;

    public zzev(u uVar, String str) {
        this.f6392d = uVar;
        Preconditions.m38901g(str);
        this.f6389a = str;
    }

    /* renamed from: a */
    public final String m38577a() {
        if (!this.f6390b) {
            this.f6390b = true;
            this.f6391c = this.f6392d.k().getString(this.f6389a, null);
        }
        return this.f6391c;
    }

    /* renamed from: b */
    public final void m38576b(String str) {
        SharedPreferences.Editor edit = this.f6392d.k().edit();
        edit.putString(this.f6389a, str);
        edit.apply();
        this.f6391c = str;
    }
}
