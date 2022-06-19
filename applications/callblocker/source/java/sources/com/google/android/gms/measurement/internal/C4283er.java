package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.er */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/er.class */
public final class C4283er {

    /* renamed from: a */
    private final String f18801a;

    /* renamed from: b */
    private final String f18802b = null;

    /* renamed from: c */
    private boolean f18803c;

    /* renamed from: d */
    private String f18804d;

    /* renamed from: e */
    private final /* synthetic */ C4277el f18805e;

    public C4283er(C4277el c4277el, String str, String str2) {
        this.f18805e = c4277el;
        C2662s.m13979a(str);
        this.f18801a = str;
    }

    /* renamed from: a */
    public final String m4619a() {
        if (!this.f18803c) {
            this.f18803c = true;
            this.f18804d = this.f18805e.m4637c().getString(this.f18801a, null);
        }
        return this.f18804d;
    }

    /* renamed from: a */
    public final void m4618a(String str) {
        if (this.f18805e.mo4027x().m4804a(C4452t.f19463ax) || !C4424jw.m4089c(str, this.f18804d)) {
            SharedPreferences.Editor edit = this.f18805e.m4637c().edit();
            edit.putString(this.f18801a, str);
            edit.apply();
            this.f18804d = str;
        }
    }
}
