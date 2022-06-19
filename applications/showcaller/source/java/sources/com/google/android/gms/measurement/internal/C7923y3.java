package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.y3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y3.class */
public final class C7923y3 {

    /* renamed from: a */
    private final String f35811a;

    /* renamed from: b */
    private final boolean f35812b;

    /* renamed from: c */
    private boolean f35813c;

    /* renamed from: d */
    private boolean f35814d;

    /* renamed from: e */
    final /* synthetic */ C7697e4 f35815e;

    public C7923y3(C7697e4 c7697e4, String str, boolean z) {
        this.f35815e = c7697e4;
        C6155o.m17022f(str);
        this.f35811a = str;
        this.f35812b = z;
    }

    /* renamed from: a */
    public final boolean m5887a() {
        if (!this.f35813c) {
            this.f35813c = true;
            this.f35814d = this.f35815e.m6464n().getBoolean(this.f35811a, this.f35812b);
        }
        return this.f35814d;
    }

    /* renamed from: b */
    public final void m5886b(boolean z) {
        SharedPreferences.Editor edit = this.f35815e.m6464n().edit();
        edit.putBoolean(this.f35811a, z);
        edit.apply();
        this.f35814d = z;
    }
}
