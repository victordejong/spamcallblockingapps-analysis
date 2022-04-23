package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.d4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d4.class */
public final class C2239d4 {

    /* renamed from: a */
    private final String f10110a;

    /* renamed from: b */
    private boolean f10111b;

    /* renamed from: c */
    private String f10112c;

    /* renamed from: d */
    final /* synthetic */ e4 f10113d;

    public C2239d4(e4 e4Var, String str, String str2) {
        this.f10113d = e4Var;
        C1581h.m8351d(str);
        this.f10110a = str;
    }

    /* renamed from: a */
    public final String m4005a() {
        if (!this.f10111b) {
            this.f10111b = true;
            this.f10112c = this.f10113d.n().getString(this.f10110a, null);
        }
        return this.f10112c;
    }

    /* renamed from: b */
    public final void m4004b(String str) {
        SharedPreferences.Editor edit = this.f10113d.n().edit();
        edit.putString(this.f10110a, str);
        edit.apply();
        this.f10112c = str;
    }
}
