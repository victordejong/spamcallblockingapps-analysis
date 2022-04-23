package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import p131c.p161d.p170b.p224d.p252g.p253a.C4243y8;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfx.class */
public final class zzbfx extends zzbfl implements zzpa<zzom> {

    /* renamed from: d */
    public String f24944d;

    /* renamed from: e */
    public final zzbdv f24945e;

    /* renamed from: f */
    public boolean f24946f;

    /* renamed from: i */
    public ByteBuffer f24949i;

    /* renamed from: j */
    public boolean f24950j;

    /* renamed from: l */
    public boolean f24952l;

    /* renamed from: g */
    public final C4243y8 f24947g = new C4243y8();

    /* renamed from: h */
    public final zzbfd f24948h = new zzbfd();

    /* renamed from: k */
    public final Object f24951k = new Object();

    public zzbfx(zzbdu zzbduVar, zzbdv zzbdvVar) {
        super(zzbduVar);
        this.f24945e = zzbdvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo11692a(zzom zzomVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    /* renamed from: a */
    public final /* synthetic */ void mo11691a(zzom zzomVar, zzon zzonVar) {
        zzom zzomVar2 = zzomVar;
        if (zzomVar2 instanceof zzop) {
            this.f24947g.m26139a((zzop) zzomVar2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:149:? -> B:139:0x02b5). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo15643a(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 849
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbfx.mo15643a(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: b */
    public final String mo15641b(String str) {
        String valueOf = String.valueOf(super.mo15641b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: b */
    public final void mo15642b() {
        this.f24946f = true;
    }

    /* renamed from: c */
    public final ByteBuffer m15640c() {
        synchronized (this.f24951k) {
            if (this.f24949i != null && !this.f24950j) {
                this.f24949i.flip();
                this.f24950j = true;
            }
            this.f24946f = true;
        }
        return this.f24949i;
    }

    /* renamed from: d */
    public final String m15639d() {
        return this.f24944d;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ void mo11690e(zzom zzomVar) {
    }

    /* renamed from: e */
    public final boolean m15638e() {
        return this.f24952l;
    }

    /* renamed from: f */
    public final void m15637f() {
        int a = (int) this.f24947g.m26140a();
        int a2 = (int) this.f24948h.m15676a(this.f24949i);
        int position = this.f24949i.position();
        int round = Math.round(a2 * (position / a));
        boolean z = round > 0;
        int f = zzber.m15679f();
        int g = zzber.m15678g();
        String str = this.f24944d;
        m15665a(str, mo15641b(str), position, a, round, a2, z, f, g);
    }
}
