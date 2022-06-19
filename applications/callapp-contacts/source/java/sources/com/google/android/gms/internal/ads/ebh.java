package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebh.class */
public final class ebh extends dwe {

    /* renamed from: b */
    private static final Object f48596b = new Object();

    /* renamed from: c */
    private final long f48597c;

    /* renamed from: d */
    private final long f48598d;

    /* renamed from: e */
    private final long f48599e;

    /* renamed from: f */
    private final long f48600f;

    /* renamed from: g */
    private final boolean f48601g;

    /* renamed from: h */
    private final boolean f48602h;

    private ebh(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f48597c = j;
        this.f48598d = j2;
        this.f48599e = 0L;
        this.f48600f = 0L;
        this.f48601g = z;
        this.f48602h = false;
    }

    public ebh(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.dwe
    /* renamed from: a */
    public final int mo15313a() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    /* renamed from: a */
    public final int mo15310a(Object obj) {
        return f48596b.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    /* renamed from: a */
    public final dwf mo15312a(int i, dwf dwfVar) {
        ecr.m15252a(i, 1);
        boolean z = this.f48601g;
        long j = this.f48598d;
        dwfVar.f47770a = null;
        dwfVar.f47771b = -9223372036854775807L;
        dwfVar.f47772c = -9223372036854775807L;
        dwfVar.f47773d = z;
        dwfVar.f47774e = false;
        dwfVar.f47777h = 0L;
        dwfVar.f47778i = j;
        dwfVar.f47775f = 0;
        dwfVar.f47776g = 0;
        dwfVar.f47779j = 0L;
        return dwfVar;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    /* renamed from: a */
    public final dwg mo15311a(int i, dwg dwgVar, boolean z) {
        ecr.m15252a(i, 1);
        Object obj = z ? f48596b : null;
        long j = this.f48597c;
        dwgVar.f47780a = obj;
        dwgVar.f47781b = obj;
        dwgVar.f47782c = 0;
        dwgVar.f47783d = j;
        dwgVar.f47785f = 0L;
        dwgVar.f47784e = false;
        return dwgVar;
    }

    @Override // com.google.android.gms.internal.ads.dwe
    /* renamed from: b */
    public final int mo15309b() {
        return 1;
    }
}
