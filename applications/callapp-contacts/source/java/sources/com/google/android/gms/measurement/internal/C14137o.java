package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/o.class */
final class C14137o {

    /* renamed from: a */
    final String f52061a;

    /* renamed from: b */
    final String f52062b;

    /* renamed from: c */
    final long f52063c;

    /* renamed from: d */
    final long f52064d;

    /* renamed from: e */
    final long f52065e;

    /* renamed from: f */
    final long f52066f;

    /* renamed from: g */
    final long f52067g;

    /* renamed from: h */
    final Long f52068h;

    /* renamed from: i */
    final Long f52069i;

    /* renamed from: j */
    final Long f52070j;

    /* renamed from: k */
    final Boolean f52071k;

    public C14137o(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        C12045o.m19160a(str);
        C12045o.m19160a(str2);
        C12045o.m19154b(j >= 0);
        C12045o.m19154b(j2 >= 0);
        C12045o.m19154b(j3 >= 0);
        C12045o.m19154b(j5 >= 0);
        this.f52061a = str;
        this.f52062b = str2;
        this.f52063c = j;
        this.f52064d = j2;
        this.f52065e = j3;
        this.f52066f = j4;
        this.f52067g = j5;
        this.f52068h = l;
        this.f52069i = l2;
        this.f52070j = l3;
        this.f52071k = bool;
    }

    /* renamed from: a */
    public final C14137o m11517a(long j) {
        return new C14137o(this.f52061a, this.f52062b, this.f52063c, this.f52064d, this.f52065e, j, this.f52067g, this.f52068h, this.f52069i, this.f52070j, this.f52071k);
    }

    /* renamed from: a */
    public final C14137o m11516a(long j, long j2) {
        return new C14137o(this.f52061a, this.f52062b, this.f52063c, this.f52064d, this.f52065e, this.f52066f, j, Long.valueOf(j2), this.f52069i, this.f52070j, this.f52071k);
    }

    /* renamed from: a */
    public final C14137o m11515a(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C14137o(this.f52061a, this.f52062b, this.f52063c, this.f52064d, this.f52065e, this.f52066f, this.f52067g, this.f52068h, l, l2, bool);
    }
}
