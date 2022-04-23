package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    final String f29963a;

    /* renamed from: b  reason: collision with root package name */
    final String f29964b;

    /* renamed from: c  reason: collision with root package name */
    final long f29965c;

    /* renamed from: d  reason: collision with root package name */
    final long f29966d;
    final long e;
    final long f;
    final long g;
    final Long h;
    final Long i;
    final Long j;
    final Boolean k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        com.google.android.gms.common.internal.o.a(str);
        com.google.android.gms.common.internal.o.a(str2);
        boolean z = true;
        com.google.android.gms.common.internal.o.b(j >= 0);
        com.google.android.gms.common.internal.o.b(j2 >= 0);
        com.google.android.gms.common.internal.o.b(j3 >= 0);
        if (j5 < 0) {
            z = false;
        }
        com.google.android.gms.common.internal.o.b(z);
        this.f29963a = str;
        this.f29964b = str2;
        this.f29965c = j;
        this.f29966d = j2;
        this.e = j3;
        this.f = j4;
        this.g = j5;
        this.h = l;
        this.i = l2;
        this.j = l3;
        this.k = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(long j) {
        return new o(this.f29963a, this.f29964b, this.f29965c, this.f29966d, this.e, j, this.g, this.h, this.i, this.j, this.k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(long j, long j2) {
        return new o(this.f29963a, this.f29964b, this.f29965c, this.f29966d, this.e, this.f, j, Long.valueOf(j2), this.i, this.j, this.k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new o(this.f29963a, this.f29964b, this.f29965c, this.f29966d, this.e, this.f, this.g, this.h, l, l2, bool);
    }
}
