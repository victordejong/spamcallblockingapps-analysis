package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crz.class */
final class crz {

    /* renamed from: a  reason: collision with root package name */
    final long f26326a;

    /* renamed from: c  reason: collision with root package name */
    long f26328c;

    /* renamed from: b  reason: collision with root package name */
    final cry f26327b = new cry();

    /* renamed from: d  reason: collision with root package name */
    int f26329d = 0;
    int e = 0;
    int f = 0;

    public crz() {
        long a2 = zzr.zzlc().a();
        this.f26326a = a2;
        this.f26328c = a2;
    }

    public final void a() {
        this.f26328c = zzr.zzlc().a();
        this.f26329d++;
    }

    public final void b() {
        this.f++;
        this.f26327b.f26325b++;
    }
}
