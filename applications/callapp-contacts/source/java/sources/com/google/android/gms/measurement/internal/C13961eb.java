package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.eb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eb.class */
public final class C13961eb {

    /* renamed from: a */
    final String f51445a;

    /* renamed from: b */
    final /* synthetic */ C13964ee f51446b;

    /* renamed from: c */
    private final String f51447c;

    /* renamed from: d */
    private final String f51448d;

    /* renamed from: e */
    private final long f51449e;

    public /* synthetic */ C13961eb(C13964ee c13964ee, String str, long j, C13956dx c13956dx) {
        this.f51446b = c13964ee;
        C12045o.m19160a("health_monitor");
        C12045o.m19154b(j > 0);
        this.f51445a = "health_monitor:start";
        this.f51447c = "health_monitor:count";
        this.f51448d = "health_monitor:value";
        this.f51449e = j;
    }

    /* renamed from: b */
    private final void m12049b() {
        this.f51446b.mo11884S_();
        long mo19039a = this.f51446b.f51637t.f51532j.mo19039a();
        SharedPreferences.Editor edit = this.f51446b.ah_().edit();
        edit.remove(this.f51447c);
        edit.remove(this.f51448d);
        edit.putLong(this.f51445a, mo19039a);
        edit.apply();
    }

    /* renamed from: c */
    private final long m12048c() {
        return this.f51446b.ah_().getLong(this.f51445a, 0L);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: a */
    public final Pair<String, Long> m12051a() {
        char c;
        this.f51446b.mo11884S_();
        this.f51446b.mo11884S_();
        long m12048c = m12048c();
        if (m12048c == 0) {
            m12049b();
            c = 0;
        } else {
            c = Math.abs(m12048c - this.f51446b.f51637t.f51532j.mo19039a());
        }
        long j = this.f51449e;
        if (c < j) {
            return null;
        }
        if (c > j + j) {
            m12049b();
            return null;
        }
        String string = this.f51446b.ah_().getString(this.f51448d, null);
        long j2 = this.f51446b.ah_().getLong(this.f51447c, 0L);
        m12049b();
        return (string == null || j2 <= 0) ? C13964ee.f51455a : new Pair<>(string, Long.valueOf(j2));
    }

    /* renamed from: a */
    public final void m12050a(String str) {
        this.f51446b.mo11884S_();
        if (m12048c() == 0) {
            m12049b();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j = this.f51446b.ah_().getLong(this.f51447c, 0L);
        if (j <= 0) {
            SharedPreferences.Editor edit = this.f51446b.ah_().edit();
            edit.putString(this.f51448d, str2);
            edit.putLong(this.f51447c, 1L);
            edit.apply();
            return;
        }
        long nextLong = this.f51446b.f51637t.m11988g().m11554l().nextLong();
        long j2 = j + 1;
        long j3 = Long.MAX_VALUE / j2;
        SharedPreferences.Editor edit2 = this.f51446b.ah_().edit();
        if ((nextLong & Long.MAX_VALUE) < j3) {
            edit2.putString(this.f51448d, str2);
        }
        edit2.putLong(this.f51447c, j2);
        edit2.apply();
    }
}
