package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dy.class */
public final class dy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ee f29527a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29528b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f29529c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29530d;
    private boolean e;

    public dy(ee eeVar, String str, boolean z) {
        this.f29527a = eeVar;
        o.a(str);
        this.f29528b = str;
        this.f29529c = z;
    }

    public final void a(boolean z) {
        SharedPreferences.Editor edit = this.f29527a.ah_().edit();
        edit.putBoolean(this.f29528b, z);
        edit.apply();
        this.e = z;
    }

    public final boolean a() {
        if (!this.f29530d) {
            this.f29530d = true;
            this.e = this.f29527a.ah_().getBoolean(this.f29528b, this.f29529c);
        }
        return this.e;
    }
}
