package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfe.class */
public final class zzfe {

    /* renamed from: a */
    public final String f29954a;

    /* renamed from: b */
    public final boolean f29955b;

    /* renamed from: c */
    public boolean f29956c;

    /* renamed from: d */
    public boolean f29957d;

    /* renamed from: e */
    public final /* synthetic */ C4737k3 f29958e;

    public zzfe(C4737k3 k3Var, String str, boolean z) {
        this.f29958e = k3Var;
        Preconditions.m17281b(str);
        this.f29954a = str;
        this.f29955b = z;
    }

    /* renamed from: a */
    public final void m9132a(boolean z) {
        SharedPreferences.Editor edit = this.f29958e.m24919q().edit();
        edit.putBoolean(this.f29954a, z);
        edit.apply();
        this.f29957d = z;
    }

    /* renamed from: a */
    public final boolean m9133a() {
        if (!this.f29956c) {
            this.f29956c = true;
            this.f29957d = this.f29958e.m24919q().getBoolean(this.f29954a, this.f29955b);
        }
        return this.f29957d;
    }
}
