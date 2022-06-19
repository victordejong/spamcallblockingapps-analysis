package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rw3.class */
public final class rw3 implements gw3 {

    /* renamed from: a */
    private final ix3 f29270a;

    /* renamed from: b */
    private String f29271b;

    /* renamed from: c */
    private yr3 f29272c;

    /* renamed from: d */
    private qw3 f29273d;

    /* renamed from: e */
    private boolean f29274e;

    /* renamed from: l */
    private long f29281l;

    /* renamed from: f */
    private final boolean[] f29275f = new boolean[3];

    /* renamed from: g */
    private final vw3 f29276g = new vw3(32, 128);

    /* renamed from: h */
    private final vw3 f29277h = new vw3(33, 128);

    /* renamed from: i */
    private final vw3 f29278i = new vw3(34, 128);

    /* renamed from: j */
    private final vw3 f29279j = new vw3(39, 128);

    /* renamed from: k */
    private final vw3 f29280k = new vw3(40, 128);

    /* renamed from: m */
    private long f29282m = -9223372036854775807L;

    /* renamed from: n */
    private final C6694la f29283n = new C6694la();

    public rw3(ix3 ix3Var) {
        this.f29270a = ix3Var;
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: e */
    private final void m11262e(byte[] bArr, int i, int i2) {
        this.f29273d.m11772c(bArr, i, i2);
        if (!this.f29274e) {
            this.f29276g.m9845d(bArr, i, i2);
            this.f29277h.m9845d(bArr, i, i2);
            this.f29278i.m9845d(bArr, i, i2);
        }
        this.f29279j.m9845d(bArr, i, i2);
        this.f29280k.m9845d(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f29271b = tx3Var.m10473c();
        yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 2);
        this.f29272c = mo8690o;
        this.f29273d = new qw3(mo8690o);
        this.f29270a.m14255a(xq3Var, tx3Var);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f29282m = j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:155:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x062a  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x06a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x026c  */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8678d(com.google.android.gms.internal.ads.C6694la r10) {
        /*
            Method dump skipped, instructions count: 1735
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.rw3.mo8678d(com.google.android.gms.internal.ads.la):void");
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f29281l = 0L;
        this.f29282m = -9223372036854775807L;
        C6322ba.m16419e(this.f29275f);
        this.f29276g.m9848a();
        this.f29277h.m9848a();
        this.f29278i.m9848a();
        this.f29279j.m9848a();
        this.f29280k.m9848a();
        qw3 qw3Var = this.f29273d;
        if (qw3Var != null) {
            qw3Var.m11774a();
        }
    }
}
