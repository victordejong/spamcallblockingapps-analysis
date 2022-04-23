package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o.class */
final class C2306o {

    /* renamed from: a */
    final String f10324a;

    /* renamed from: b */
    final String f10325b;

    /* renamed from: c */
    final long f10326c;

    /* renamed from: d */
    final long f10327d;

    /* renamed from: e */
    final long f10328e;

    /* renamed from: f */
    final long f10329f;

    /* renamed from: g */
    final long f10330g;

    /* renamed from: h */
    final Long f10331h;

    /* renamed from: i */
    final Long f10332i;

    /* renamed from: j */
    final Long f10333j;

    /* renamed from: k */
    final Boolean f10334k;

    C2306o(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        C1581h.m8351d(str);
        C1581h.m8351d(str2);
        boolean z = true;
        C1581h.m8354a(j >= 0);
        C1581h.m8354a(j2 >= 0);
        C1581h.m8354a(j3 >= 0);
        if (j5 < 0) {
            z = false;
        }
        C1581h.m8354a(z);
        this.f10324a = str;
        this.f10325b = str2;
        this.f10326c = j;
        this.f10327d = j2;
        this.f10328e = j3;
        this.f10329f = j4;
        this.f10330g = j5;
        this.f10331h = l;
        this.f10332i = l2;
        this.f10333j = l3;
        this.f10334k = bool;
    }

    /* renamed from: a */
    final C2306o m3868a(long j) {
        return new C2306o(this.f10324a, this.f10325b, this.f10326c, this.f10327d, this.f10328e, j, this.f10330g, this.f10331h, this.f10332i, this.f10333j, this.f10334k);
    }

    /* renamed from: b */
    final C2306o m3867b(long j, long j2) {
        return new C2306o(this.f10324a, this.f10325b, this.f10326c, this.f10327d, this.f10328e, this.f10329f, j, Long.valueOf(j2), this.f10332i, this.f10333j, this.f10334k);
    }

    /* renamed from: c */
    final C2306o m3866c(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C2306o(this.f10324a, this.f10325b, this.f10326c, this.f10327d, this.f10328e, this.f10329f, this.f10330g, this.f10331h, l, l2, bool);
    }
}
