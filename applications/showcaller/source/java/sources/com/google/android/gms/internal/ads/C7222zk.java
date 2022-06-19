package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zk.class */
public final class C7222zk {

    /* renamed from: a */
    final long f32967a;

    /* renamed from: b */
    final String f32968b;

    /* renamed from: c */
    final int f32969c;

    public C7222zk(long j, String str, int i) {
        this.f32967a = j;
        this.f32968b = str;
        this.f32969c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C7222zk)) {
            return false;
        }
        C7222zk c7222zk = (C7222zk) obj;
        return c7222zk.f32967a == this.f32967a && c7222zk.f32969c == this.f32969c;
    }

    public final int hashCode() {
        return (int) this.f32967a;
    }
}
