package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adg.class */
public final class adg extends acu implements ecp<ecb> {

    /* renamed from: d  reason: collision with root package name */
    String f23145d;
    boolean e;
    private final aay f;
    private boolean g;
    private ByteBuffer j;
    private boolean k;
    private final String m;
    private final int n;
    private final add h = new add();
    private final acm i = new acm();
    private final Object l = new Object();

    public adg(abb abbVar, aay aayVar) {
        super(abbVar);
        this.f = aayVar;
        this.m = abbVar != null ? abbVar.h() : "";
        this.n = abbVar != null ? abbVar.i() : 0;
    }

    private final void d() {
        int a2 = (int) this.h.a();
        int a3 = (int) this.i.a(this.j);
        int position = this.j.position();
        int round = Math.round(a3 * (position / a2));
        boolean z = round > 0;
        int i = abw.f23076a;
        int i2 = abw.f23077b;
        String str = this.f23145d;
        yq.f28555a.post(new acv(this, str, b(str), position, a2, round, a3, z, i, i2));
    }

    @Override // com.google.android.gms.internal.ads.ecp
    public final /* synthetic */ void a(ecb ecbVar) {
        ecb ecbVar2 = ecbVar;
        if (ecbVar2 instanceof ech) {
            this.h.f23142a.add((ech) ecbVar2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ae, code lost:
        return true;
     */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:149:? -> B:140:0x02c5). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.acu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 865
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.adg.a(java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.acu
    public final String b(String str) {
        String valueOf = String.valueOf(super.b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void b() {
        this.g = true;
    }

    public final ByteBuffer c() {
        synchronized (this.l) {
            ByteBuffer byteBuffer = this.j;
            if (byteBuffer != null && !this.k) {
                byteBuffer.flip();
                this.k = true;
            }
            this.g = true;
        }
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.ecp
    public final /* bridge */ /* synthetic */ void c(int i) {
    }
}
