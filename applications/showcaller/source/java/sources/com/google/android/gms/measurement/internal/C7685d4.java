package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.d4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/d4.class */
public final class C7685d4 {

    /* renamed from: a */
    private final String f35141a;

    /* renamed from: b */
    private boolean f35142b;

    /* renamed from: c */
    private String f35143c;

    /* renamed from: d */
    final /* synthetic */ C7697e4 f35144d;

    public C7685d4(C7697e4 c7697e4, String str, String str2) {
        this.f35144d = c7697e4;
        C6155o.m17022f(str);
        this.f35141a = str;
    }

    /* renamed from: a */
    public final String m6558a() {
        if (!this.f35142b) {
            this.f35142b = true;
            this.f35143c = this.f35144d.m6464n().getString(this.f35141a, null);
        }
        return this.f35143c;
    }

    /* renamed from: b */
    public final void m6557b(String str) {
        SharedPreferences.Editor edit = this.f35144d.m6464n().edit();
        edit.putString(this.f35141a, str);
        edit.apply();
        this.f35143c = str;
    }
}
