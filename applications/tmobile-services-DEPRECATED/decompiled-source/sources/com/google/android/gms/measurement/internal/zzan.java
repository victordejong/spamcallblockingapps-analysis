package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzan.class */
final class zzan {

    /* renamed from: a */
    final String f8869a;

    /* renamed from: b */
    final String f8870b;

    /* renamed from: c */
    final long f8871c;

    /* renamed from: d */
    final long f8872d;

    /* renamed from: e */
    final long f8873e;

    /* renamed from: f */
    final long f8874f;

    /* renamed from: g */
    final long f8875g;

    /* renamed from: h */
    final Long f8876h;

    /* renamed from: i */
    final Long f8877i;

    /* renamed from: j */
    final Long f8878j;

    /* renamed from: k */
    final Boolean f8879k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzan(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.m14527g(str);
        Preconditions.m14527g(str2);
        boolean z = true;
        Preconditions.m14533a(j >= 0);
        Preconditions.m14533a(j2 >= 0);
        Preconditions.m14533a(j3 >= 0);
        if (j5 < 0) {
            z = false;
        }
        Preconditions.m14533a(z);
        this.f8869a = str;
        this.f8870b = str2;
        this.f8871c = j;
        this.f8872d = j2;
        this.f8873e = j3;
        this.f8874f = j4;
        this.f8875g = j5;
        this.f8876h = l;
        this.f8877i = l2;
        this.f8878j = l3;
        this.f8879k = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzan(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        this(str, str2, 0L, 0L, 0L, j3, 0L, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzan m11697a(long j) {
        return new zzan(this.f8869a, this.f8870b, this.f8871c, this.f8872d, this.f8873e, j, this.f8875g, this.f8876h, this.f8877i, this.f8878j, this.f8879k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final zzan m11696b(long j, long j2) {
        return new zzan(this.f8869a, this.f8870b, this.f8871c, this.f8872d, this.f8873e, this.f8874f, j, Long.valueOf(j2), this.f8877i, this.f8878j, this.f8879k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final zzan m11695c(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new zzan(this.f8869a, this.f8870b, this.f8871c, this.f8872d, this.f8873e, this.f8874f, this.f8875g, this.f8876h, l, l2, bool);
    }
}
