package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adg.class */
public final class adg extends acu implements ecp<ecb> {

    /* renamed from: d */
    String f39972d;

    /* renamed from: e */
    boolean f39973e;

    /* renamed from: f */
    private final aay f39974f;

    /* renamed from: g */
    private boolean f39975g;

    /* renamed from: j */
    private ByteBuffer f39978j;

    /* renamed from: k */
    private boolean f39979k;

    /* renamed from: m */
    private final String f39981m;

    /* renamed from: n */
    private final int f39982n;

    /* renamed from: h */
    private final add f39976h = new add();

    /* renamed from: i */
    private final acm f39977i = new acm();

    /* renamed from: l */
    private final Object f39980l = new Object();

    public adg(abb abbVar, aay aayVar) {
        super(abbVar);
        this.f39974f = aayVar;
        this.f39981m = abbVar != null ? abbVar.mo13742h() : "";
        this.f39982n = abbVar != null ? abbVar.mo13741i() : 0;
    }

    /* renamed from: d */
    private final void m18854d() {
        int m18867a = (int) this.f39976h.m18867a();
        int m18882a = (int) this.f39977i.m18882a(this.f39978j);
        int position = this.f39978j.position();
        int round = Math.round(m18882a * (position / m18867a));
        boolean z = round > 0;
        int i = abw.f39859a;
        int i2 = abw.f39860b;
        String str = this.f39972d;
        C13077yq.f50094a.post(new acv(this, str, mo18856b(str), position, m18867a, round, m18882a, z, i, i2));
    }

    @Override // com.google.android.gms.internal.ads.ecp
    /* renamed from: a */
    public final /* synthetic */ void mo15258a(ecb ecbVar) {
        ecb ecbVar2 = ecbVar;
        if (ecbVar2 instanceof ech) {
            this.f39976h.f39965a.add((ech) ecbVar2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ae, code lost:
        return true;
     */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:149:? -> B:140:0x02c5). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo18858a(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 865
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.adg.mo18858a(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: b */
    public final String mo18856b(String str) {
        String valueOf = String.valueOf(super.mo18856b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: b */
    public final void mo18857b() {
        this.f39975g = true;
    }

    /* renamed from: c */
    public final ByteBuffer m18855c() {
        synchronized (this.f39980l) {
            ByteBuffer byteBuffer = this.f39978j;
            if (byteBuffer != null && !this.f39979k) {
                byteBuffer.flip();
                this.f39979k = true;
            }
            this.f39975g = true;
        }
        return this.f39978j;
    }

    @Override // com.google.android.gms.internal.ads.ecp
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo15257c(int i) {
    }
}
