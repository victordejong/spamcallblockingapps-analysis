package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.en */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/en.class */
public final class C4279en {

    /* renamed from: a */
    private final String f18786a;

    /* renamed from: b */
    private final boolean f18787b;

    /* renamed from: c */
    private boolean f18788c;

    /* renamed from: d */
    private boolean f18789d;

    /* renamed from: e */
    private final /* synthetic */ C4277el f18790e;

    public C4279en(C4277el c4277el, String str, boolean z) {
        this.f18790e = c4277el;
        C2662s.m13979a(str);
        this.f18786a = str;
        this.f18787b = z;
    }

    /* renamed from: a */
    public final void m4625a(boolean z) {
        SharedPreferences.Editor edit = this.f18790e.m4637c().edit();
        edit.putBoolean(this.f18786a, z);
        edit.apply();
        this.f18789d = z;
    }

    /* renamed from: a */
    public final boolean m4626a() {
        if (!this.f18788c) {
            this.f18788c = true;
            this.f18789d = this.f18790e.m4637c().getBoolean(this.f18786a, this.f18787b);
        }
        return this.f18789d;
    }
}
