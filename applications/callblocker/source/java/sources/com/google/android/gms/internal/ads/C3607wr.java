package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.wr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wr.class */
public final class C3607wr extends C3566vd {

    /* renamed from: a */
    private final /* synthetic */ byte[] f17568a;

    /* renamed from: b */
    private final /* synthetic */ Map f17569b;

    /* renamed from: c */
    private final /* synthetic */ C3638xv f17570c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3607wr(C3606wq c3606wq, int i, String str, AbstractC2762ac abstractC2762ac, ebp ebpVar, byte[] bArr, Map map, C3638xv c3638xv) {
        super(i, str, abstractC2762ac, ebpVar);
        this.f17568a = bArr;
        this.f17569b = map;
        this.f17570c = c3638xv;
    }

    @Override // com.google.android.gms.internal.ads.C3566vd, com.google.android.gms.internal.ads.dts
    /* renamed from: a */
    public final /* synthetic */ void mo6862a(String str) {
        mo6862a(str);
    }

    @Override // com.google.android.gms.internal.ads.C3566vd
    /* renamed from: a */
    public final void mo6867a(String str) {
        this.f17570c.m6775a(str);
        super.mo6862a(str);
    }

    @Override // com.google.android.gms.internal.ads.dts
    /* renamed from: a */
    public final byte[] mo6868a() {
        return this.f17568a == null ? super.mo6868a() : this.f17568a;
    }

    @Override // com.google.android.gms.internal.ads.dts
    /* renamed from: b */
    public final Map<String, String> mo6866b() {
        return this.f17569b == null ? super.mo6866b() : this.f17569b;
    }
}
