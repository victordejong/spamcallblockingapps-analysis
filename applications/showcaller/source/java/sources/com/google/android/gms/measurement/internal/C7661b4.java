package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.b4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/b4.class */
public final class C7661b4 {

    /* renamed from: a */
    final String f35002a;

    /* renamed from: b */
    private final String f35003b;

    /* renamed from: c */
    private final String f35004c;

    /* renamed from: d */
    private final long f35005d;

    /* renamed from: e */
    final /* synthetic */ C7697e4 f35006e;

    public /* synthetic */ C7661b4(C7697e4 c7697e4, String str, long j, C7912x3 c7912x3) {
        this.f35006e = c7697e4;
        C6155o.m17022f("health_monitor");
        C6155o.m17027a(j > 0);
        this.f35002a = "health_monitor:start";
        this.f35003b = "health_monitor:count";
        this.f35004c = "health_monitor:value";
        this.f35005d = j;
    }

    /* renamed from: c */
    private final void m6580c() {
        this.f35006e.mo6113f();
        long mo16807a = this.f35006e.f35460a.mo6007x().mo16807a();
        SharedPreferences.Editor edit = this.f35006e.m6464n().edit();
        edit.remove(this.f35003b);
        edit.remove(this.f35004c);
        edit.putLong(this.f35002a, mo16807a);
        edit.apply();
    }

    /* renamed from: d */
    private final long m6579d() {
        return this.f35006e.m6464n().getLong(this.f35002a, 0L);
    }

    /* renamed from: a */
    public final void m6582a(String str, long j) {
        this.f35006e.mo6113f();
        if (m6579d() == 0) {
            m6580c();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.f35006e.m6464n().getLong(this.f35003b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f35006e.m6464n().edit();
            edit.putString(this.f35004c, str2);
            edit.putLong(this.f35003b, 1L);
            edit.apply();
            return;
        }
        long nextLong = this.f35006e.f35460a.m6043G().m5966i0().nextLong();
        long j3 = j2 + 1;
        long j4 = Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.f35006e.m6464n().edit();
        if ((nextLong & Long.MAX_VALUE) < j4) {
            edit2.putString(this.f35004c, str2);
        }
        edit2.putLong(this.f35003b, j3);
        edit2.apply();
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: b */
    public final Pair<String, Long> m6581b() {
        char c;
        this.f35006e.mo6113f();
        this.f35006e.mo6113f();
        long m6579d = m6579d();
        if (m6579d == 0) {
            m6580c();
            c = 0;
        } else {
            c = Math.abs(m6579d - this.f35006e.f35460a.mo6007x().mo16807a());
        }
        long j = this.f35005d;
        if (c < j) {
            return null;
        }
        if (c > j + j) {
            m6580c();
            return null;
        }
        String string = this.f35006e.m6464n().getString(this.f35004c, null);
        long j2 = this.f35006e.m6464n().getLong(this.f35003b, 0L);
        m6580c();
        return (string == null || j2 <= 0) ? C7697e4.f35193c : new Pair<>(string, Long.valueOf(j2));
    }
}
