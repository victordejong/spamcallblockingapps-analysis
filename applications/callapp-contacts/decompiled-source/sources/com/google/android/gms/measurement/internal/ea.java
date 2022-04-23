package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ea.class */
public final class ea {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ee f29538a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29539b;

    /* renamed from: c  reason: collision with root package name */
    private final long f29540c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29541d;
    private long e;

    public ea(ee eeVar, String str, long j) {
        this.f29538a = eeVar;
        o.a(str);
        this.f29539b = str;
        this.f29540c = j;
    }

    public final long a() {
        if (!this.f29541d) {
            this.f29541d = true;
            this.e = this.f29538a.ah_().getLong(this.f29539b, this.f29540c);
        }
        return this.e;
    }

    public final void a(long j) {
        SharedPreferences.Editor edit = this.f29538a.ah_().edit();
        edit.putLong(this.f29539b, j);
        edit.apply();
        this.e = j;
    }
}
