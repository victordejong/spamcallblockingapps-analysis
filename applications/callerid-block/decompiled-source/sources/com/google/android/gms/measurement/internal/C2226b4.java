package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.b4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b4.class */
public final class C2226b4 {

    /* renamed from: a */
    final String f9987a;

    /* renamed from: b */
    private final String f9988b;

    /* renamed from: c */
    private final String f9989c;

    /* renamed from: d */
    private final long f9990d;

    /* renamed from: e */
    final /* synthetic */ e4 f9991e;

    /* synthetic */ C2226b4(e4 e4Var, String str, long j, C2363x3 x3Var) {
        this.f9991e = e4Var;
        C1581h.m8351d("health_monitor");
        C1581h.m8354a(j > 0);
        this.f9987a = "health_monitor:start";
        this.f9988b = "health_monitor:count";
        this.f9989c = "health_monitor:value";
        this.f9990d = j;
    }

    /* renamed from: c */
    private final void m4019c() {
        this.f9991e.f();
        long a = ((m5) this.f9991e).a.v().m8247a();
        SharedPreferences.Editor edit = this.f9991e.n().edit();
        edit.remove(this.f9988b);
        edit.remove(this.f9989c);
        edit.putLong(this.f9987a, a);
        edit.apply();
    }

    /* renamed from: d */
    private final long m4018d() {
        return this.f9991e.n().getLong(this.f9987a, 0L);
    }

    /* renamed from: a */
    public final void m4021a(String str, long j) {
        this.f9991e.f();
        if (m4018d() == 0) {
            m4019c();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.f9991e.n().getLong(this.f9988b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f9991e.n().edit();
            edit.putString(this.f9989c, str2);
            edit.putLong(this.f9988b, 1L);
            edit.apply();
            return;
        }
        long nextLong = ((m5) this.f9991e).a.G().i0().nextLong();
        long j3 = j2 + 1;
        long j4 = Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.f9991e.n().edit();
        if ((nextLong & Long.MAX_VALUE) < j4) {
            edit2.putString(this.f9989c, str2);
        }
        edit2.putLong(this.f9988b, j3);
        edit2.apply();
    }

    /* renamed from: b */
    public final Pair<String, Long> m4020b() {
        long j;
        this.f9991e.f();
        this.f9991e.f();
        long d = m4018d();
        if (d == 0) {
            m4019c();
            j = 0;
        } else {
            j = Math.abs(d - ((m5) this.f9991e).a.v().m8247a());
        }
        long j2 = this.f9990d;
        if (j < j2) {
            return null;
        }
        if (j > j2 + j2) {
            m4019c();
            return null;
        }
        String string = this.f9991e.n().getString(this.f9989c, null);
        long j3 = this.f9991e.n().getLong(this.f9988b, 0L);
        m4019c();
        return (string == null || j3 <= 0) ? e4.x : new Pair<>(string, Long.valueOf(j3));
    }
}
