package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ed.class */
public final class ed {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ee f29547a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29548b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29549c;

    /* renamed from: d  reason: collision with root package name */
    private String f29550d;

    public ed(ee eeVar, String str, String str2) {
        this.f29547a = eeVar;
        o.a(str);
        this.f29548b = str;
    }

    public final String a() {
        if (!this.f29549c) {
            this.f29549c = true;
            this.f29550d = this.f29547a.ah_().getString(this.f29548b, null);
        }
        return this.f29550d;
    }

    public final void a(String str) {
        SharedPreferences.Editor edit = this.f29547a.ah_().edit();
        edit.putString(this.f29548b, str);
        edit.apply();
        this.f29550d = str;
    }
}
