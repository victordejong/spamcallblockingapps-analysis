package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebh.class */
public final class ebh extends dwe {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f27571b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final long f27572c;

    /* renamed from: d  reason: collision with root package name */
    private final long f27573d;
    private final long e;
    private final long f;
    private final boolean g;
    private final boolean h;

    private ebh(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f27572c = j;
        this.f27573d = j2;
        this.e = 0L;
        this.f = 0L;
        this.g = z;
        this.h = false;
    }

    public ebh(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.dwe
    public final int a() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    public final int a(Object obj) {
        return f27571b.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    public final dwf a(int i, dwf dwfVar) {
        ecr.a(i, 1);
        boolean z = this.g;
        long j = this.f27573d;
        dwfVar.f27293a = null;
        dwfVar.f27294b = -9223372036854775807L;
        dwfVar.f27295c = -9223372036854775807L;
        dwfVar.f27296d = z;
        dwfVar.e = false;
        dwfVar.h = 0L;
        dwfVar.i = j;
        dwfVar.f = 0;
        dwfVar.g = 0;
        dwfVar.j = 0L;
        return dwfVar;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    public final dwg a(int i, dwg dwgVar, boolean z) {
        ecr.a(i, 1);
        Object obj = z ? f27571b : null;
        long j = this.f27572c;
        dwgVar.f27297a = obj;
        dwgVar.f27298b = obj;
        dwgVar.f27299c = 0;
        dwgVar.f27300d = j;
        dwgVar.f = 0L;
        dwgVar.e = false;
        return dwgVar;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    public final int b() {
        return 1;
    }
}
