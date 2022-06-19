package com.google.firebase.crashlytics.internal.settings.p304h;
/* renamed from: com.google.firebase.crashlytics.internal.settings.h.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/h/e.class */
public class C9144e implements AbstractC9143d {

    /* renamed from: a */
    public final C9140a f39439a;

    /* renamed from: b */
    public final C9142c f39440b;

    /* renamed from: c */
    public final C9141b f39441c;

    /* renamed from: d */
    public final long f39442d;

    /* renamed from: e */
    public final int f39443e;

    /* renamed from: f */
    public final int f39444f;

    public C9144e(long j, C9140a c9140a, C9142c c9142c, C9141b c9141b, int i, int i2) {
        this.f39442d = j;
        this.f39439a = c9140a;
        this.f39440b = c9142c;
        this.f39441c = c9141b;
        this.f39443e = i;
        this.f39444f = i2;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.p304h.AbstractC9143d
    /* renamed from: a */
    public C9141b mo1727a() {
        return this.f39441c;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.p304h.AbstractC9143d
    /* renamed from: b */
    public C9142c mo1726b() {
        return this.f39440b;
    }

    /* renamed from: c */
    public C9140a m1725c() {
        return this.f39439a;
    }

    /* renamed from: d */
    public long m1724d() {
        return this.f39442d;
    }

    /* renamed from: e */
    public boolean m1723e(long j) {
        return this.f39442d < j;
    }
}
