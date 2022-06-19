package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.a4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a4.class */
public final class C7649a4 {

    /* renamed from: a */
    private final String f34981a;

    /* renamed from: b */
    private final long f34982b;

    /* renamed from: c */
    private boolean f34983c;

    /* renamed from: d */
    private long f34984d;

    /* renamed from: e */
    final /* synthetic */ C7697e4 f34985e;

    public C7649a4(C7697e4 c7697e4, String str, long j) {
        this.f34985e = c7697e4;
        C6155o.m17022f(str);
        this.f34981a = str;
        this.f34982b = j;
    }

    /* renamed from: a */
    public final long m6588a() {
        if (!this.f34983c) {
            this.f34983c = true;
            this.f34984d = this.f34985e.m6464n().getLong(this.f34981a, this.f34982b);
        }
        return this.f34984d;
    }

    /* renamed from: b */
    public final void m6587b(long j) {
        SharedPreferences.Editor edit = this.f34985e.m6464n().edit();
        edit.putLong(this.f34981a, j);
        edit.apply();
        this.f34984d = j;
    }
}
