package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfi.class */
public final class zzfi {

    /* renamed from: a */
    public final String f29969a;

    /* renamed from: b */
    public boolean f29970b;

    /* renamed from: c */
    public String f29971c;

    /* renamed from: d */
    public final /* synthetic */ C4737k3 f29972d;

    public zzfi(C4737k3 k3Var, String str, String str2) {
        this.f29972d = k3Var;
        Preconditions.m17281b(str);
        this.f29969a = str;
    }

    /* renamed from: a */
    public final String m9126a() {
        if (!this.f29970b) {
            this.f29970b = true;
            this.f29971c = this.f29972d.m24919q().getString(this.f29969a, null);
        }
        return this.f29971c;
    }

    /* renamed from: a */
    public final void m9125a(String str) {
        SharedPreferences.Editor edit = this.f29972d.m24919q().edit();
        edit.putString(this.f29969a, str);
        edit.apply();
        this.f29971c = str;
    }
}
