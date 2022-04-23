package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eb.class */
public final class eb {

    /* renamed from: a  reason: collision with root package name */
    final String f29542a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ee f29543b;

    /* renamed from: c  reason: collision with root package name */
    private final String f29544c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29545d;
    private final long e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ eb(ee eeVar, String str, long j, dx dxVar) {
        this.f29543b = eeVar;
        o.a("health_monitor");
        o.b(j > 0);
        this.f29542a = "health_monitor:start";
        this.f29544c = "health_monitor:count";
        this.f29545d = "health_monitor:value";
        this.e = j;
    }

    private final void b() {
        this.f29543b.S_();
        long a2 = this.f29543b.t.j.a();
        SharedPreferences.Editor edit = this.f29543b.ah_().edit();
        edit.remove(this.f29544c);
        edit.remove(this.f29545d);
        edit.putLong(this.f29542a, a2);
        edit.apply();
    }

    private final long c() {
        return this.f29543b.ah_().getLong(this.f29542a, 0L);
    }

    public final Pair<String, Long> a() {
        long j;
        this.f29543b.S_();
        this.f29543b.S_();
        long c2 = c();
        if (c2 == 0) {
            b();
            j = 0;
        } else {
            j = Math.abs(c2 - this.f29543b.t.j.a());
        }
        long j2 = this.e;
        if (j < j2) {
            return null;
        }
        if (j > j2 + j2) {
            b();
            return null;
        }
        String string = this.f29543b.ah_().getString(this.f29545d, null);
        long j3 = this.f29543b.ah_().getLong(this.f29544c, 0L);
        b();
        return (string == null || j3 <= 0) ? ee.f29551a : new Pair<>(string, Long.valueOf(j3));
    }

    public final void a(String str) {
        this.f29543b.S_();
        if (c() == 0) {
            b();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j = this.f29543b.ah_().getLong(this.f29544c, 0L);
        if (j <= 0) {
            SharedPreferences.Editor edit = this.f29543b.ah_().edit();
            edit.putString(this.f29545d, str2);
            edit.putLong(this.f29544c, 1L);
            edit.apply();
            return;
        }
        long nextLong = this.f29543b.t.g().l().nextLong();
        long j2 = j + 1;
        long j3 = Long.MAX_VALUE / j2;
        SharedPreferences.Editor edit2 = this.f29543b.ah_().edit();
        if ((nextLong & Long.MAX_VALUE) < j3) {
            edit2.putString(this.f29545d, str2);
        }
        edit2.putLong(this.f29544c, j2);
        edit2.apply();
    }
}
