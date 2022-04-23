package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznn.class */
public final class zznn extends zzhy {

    /* renamed from: e */
    public static final Object f28681e = new Object();

    /* renamed from: b */
    public final long f28682b;

    /* renamed from: c */
    public final long f28683c;

    /* renamed from: d */
    public final boolean f28684d;

    public zznn(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f28682b = j;
        this.f28683c = j2;
        this.f28684d = z;
    }

    public zznn(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    /* renamed from: a */
    public final int mo11758a(Object obj) {
        return f28681e.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    /* renamed from: a */
    public final zzia mo11760a(int i, zzia zziaVar, boolean z) {
        zzoz.m11699a(i, 0, 1);
        Object obj = z ? f28681e : null;
        zziaVar.m11991a(obj, obj, 0, this.f28682b, 0L, false);
        return zziaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    /* renamed from: a */
    public final zzid mo11759a(int i, zzid zzidVar, boolean z, long j) {
        zzoz.m11699a(i, 0, 1);
        boolean z2 = this.f28684d;
        long j2 = this.f28683c;
        zzidVar.f28308a = null;
        zzidVar.f28309b = -9223372036854775807L;
        zzidVar.f28310c = -9223372036854775807L;
        zzidVar.f28311d = z2;
        zzidVar.f28312e = false;
        zzidVar.f28315h = 0L;
        zzidVar.f28316i = j2;
        zzidVar.f28313f = 0;
        zzidVar.f28314g = 0;
        zzidVar.f28317j = 0L;
        return zzidVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    /* renamed from: b */
    public final int mo11757b() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    /* renamed from: c */
    public final int mo11756c() {
        return 1;
    }
}
