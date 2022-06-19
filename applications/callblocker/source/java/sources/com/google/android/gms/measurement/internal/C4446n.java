package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n.class */
final class C4446n {

    /* renamed from: a */
    final String f19373a;

    /* renamed from: b */
    final String f19374b;

    /* renamed from: c */
    final long f19375c;

    /* renamed from: d */
    final long f19376d;

    /* renamed from: e */
    final long f19377e;

    /* renamed from: f */
    final long f19378f;

    /* renamed from: g */
    final long f19379g;

    /* renamed from: h */
    final Long f19380h;

    /* renamed from: i */
    final Long f19381i;

    /* renamed from: j */
    final Long f19382j;

    /* renamed from: k */
    final Boolean f19383k;

    public C4446n(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        C2662s.m13979a(str);
        C2662s.m13979a(str2);
        C2662s.m13973b(j >= 0);
        C2662s.m13973b(j2 >= 0);
        C2662s.m13973b(j3 >= 0);
        C2662s.m13973b(j5 >= 0);
        this.f19373a = str;
        this.f19374b = str2;
        this.f19375c = j;
        this.f19376d = j2;
        this.f19377e = j3;
        this.f19378f = j4;
        this.f19379g = j5;
        this.f19380h = l;
        this.f19381i = l2;
        this.f19382j = l3;
        this.f19383k = bool;
    }

    public C4446n(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        this(str, str2, 0L, 0L, 0L, j3, 0L, null, null, null, null);
    }

    /* renamed from: a */
    public final C4446n m4018a(long j) {
        return new C4446n(this.f19373a, this.f19374b, this.f19375c, this.f19376d, this.f19377e, j, this.f19379g, this.f19380h, this.f19381i, this.f19382j, this.f19383k);
    }

    /* renamed from: a */
    public final C4446n m4017a(long j, long j2) {
        return new C4446n(this.f19373a, this.f19374b, this.f19375c, this.f19376d, this.f19377e, this.f19378f, j, Long.valueOf(j2), this.f19381i, this.f19382j, this.f19383k);
    }

    /* renamed from: a */
    public final C4446n m4016a(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C4446n(this.f19373a, this.f19374b, this.f19375c, this.f19376d, this.f19377e, this.f19378f, this.f19379g, this.f19380h, l, l2, bool);
    }
}
