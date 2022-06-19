package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/o.class */
final class C7809o {

    /* renamed from: a */
    final String f35499a;

    /* renamed from: b */
    final String f35500b;

    /* renamed from: c */
    final long f35501c;

    /* renamed from: d */
    final long f35502d;

    /* renamed from: e */
    final long f35503e;

    /* renamed from: f */
    final long f35504f;

    /* renamed from: g */
    final long f35505g;

    /* renamed from: h */
    final Long f35506h;

    /* renamed from: i */
    final Long f35507i;

    /* renamed from: j */
    final Long f35508j;

    /* renamed from: k */
    final Boolean f35509k;

    public C7809o(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        C6155o.m17022f(str);
        C6155o.m17022f(str2);
        C6155o.m17027a(j >= 0);
        C6155o.m17027a(j2 >= 0);
        C6155o.m17027a(j3 >= 0);
        C6155o.m17027a(j5 >= 0);
        this.f35499a = str;
        this.f35500b = str2;
        this.f35501c = j;
        this.f35502d = j2;
        this.f35503e = j3;
        this.f35504f = j4;
        this.f35505g = j5;
        this.f35506h = l;
        this.f35507i = l2;
        this.f35508j = l3;
        this.f35509k = bool;
    }

    /* renamed from: a */
    public final C7809o m6204a(long j) {
        return new C7809o(this.f35499a, this.f35500b, this.f35501c, this.f35502d, this.f35503e, j, this.f35505g, this.f35506h, this.f35507i, this.f35508j, this.f35509k);
    }

    /* renamed from: b */
    public final C7809o m6203b(long j, long j2) {
        return new C7809o(this.f35499a, this.f35500b, this.f35501c, this.f35502d, this.f35503e, this.f35504f, j, Long.valueOf(j2), this.f35507i, this.f35508j, this.f35509k);
    }

    /* renamed from: c */
    public final C7809o m6202c(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C7809o(this.f35499a, this.f35500b, this.f35501c, this.f35502d, this.f35503e, this.f35504f, this.f35505g, this.f35506h, l, l2, bool);
    }
}
