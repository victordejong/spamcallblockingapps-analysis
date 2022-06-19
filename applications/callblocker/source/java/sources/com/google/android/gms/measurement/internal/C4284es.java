package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.es */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/es.class */
public final class C4284es {

    /* renamed from: a */
    private final String f18806a;

    /* renamed from: b */
    private final String f18807b;

    /* renamed from: c */
    private final String f18808c;

    /* renamed from: d */
    private final long f18809d;

    /* renamed from: e */
    private final /* synthetic */ C4277el f18810e;

    /* JADX INFO: Access modifiers changed from: private */
    public C4284es(C4277el c4277el, String str, long j) {
        this.f18810e = c4277el;
        C2662s.m13979a(str);
        C2662s.m13973b(j > 0);
        this.f18806a = String.valueOf(str).concat(":start");
        this.f18807b = String.valueOf(str).concat(":count");
        this.f18808c = String.valueOf(str).concat(":value");
        this.f18809d = j;
    }

    /* renamed from: b */
    private final void m4615b() {
        this.f18810e.mo4037o();
        long mo13862a = this.f18810e.mo4035q().mo13862a();
        SharedPreferences.Editor edit = this.f18810e.m4637c().edit();
        edit.remove(this.f18807b);
        edit.remove(this.f18808c);
        edit.putLong(this.f18806a, mo13862a);
        edit.apply();
    }

    /* renamed from: c */
    private final long m4614c() {
        return this.f18810e.m4637c().getLong(this.f18806a, 0L);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    public final Pair<String, Long> m4617a() {
        char abs;
        Pair<String, Long> pair;
        this.f18810e.mo4037o();
        this.f18810e.mo4037o();
        long m4614c = m4614c();
        if (m4614c == 0) {
            m4615b();
            abs = 0;
        } else {
            abs = Math.abs(m4614c - this.f18810e.mo4035q().mo13862a());
        }
        if (abs < this.f18809d) {
            pair = null;
        } else if (abs > (this.f18809d << 1)) {
            m4615b();
            pair = null;
        } else {
            String string = this.f18810e.m4637c().getString(this.f18808c, null);
            long j = this.f18810e.m4637c().getLong(this.f18807b, 0L);
            m4615b();
            pair = (string == null || j <= 0) ? C4277el.f18755a : new Pair<>(string, Long.valueOf(j));
        }
        return pair;
    }

    /* renamed from: a */
    public final void m4616a(String str, long j) {
        this.f18810e.mo4037o();
        if (m4614c() == 0) {
            m4615b();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.f18810e.m4637c().getLong(this.f18807b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f18810e.m4637c().edit();
            edit.putString(this.f18808c, str2);
            edit.putLong(this.f18807b, 1L);
            edit.apply();
            return;
        }
        boolean z = (this.f18810e.mo4032t().m4088d().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / (j2 + 1);
        SharedPreferences.Editor edit2 = this.f18810e.m4637c().edit();
        if (z) {
            edit2.putString(this.f18808c, str2);
        }
        edit2.putLong(this.f18807b, j2 + 1);
        edit2.apply();
    }
}
