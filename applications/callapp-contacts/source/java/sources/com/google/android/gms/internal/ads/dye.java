package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dye.class */
final class dye implements dyj {

    /* renamed from: a */
    private final byte[] f47996a = new byte[8];

    /* renamed from: b */
    private final Stack<dyg> f47997b = new Stack<>();

    /* renamed from: c */
    private final dyo f47998c = new dyo();

    /* renamed from: d */
    private dyi f47999d;

    /* renamed from: e */
    private int f48000e;

    /* renamed from: f */
    private int f48001f;

    /* renamed from: g */
    private long f48002g;

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    private final long m15485a(dxt dxtVar, int i) throws IOException, InterruptedException {
        dxtVar.mo15493b(this.f47996a, 0, i);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f47996a[i2] & 255);
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.dyj
    /* renamed from: a */
    public final void mo15484a() {
        this.f48000e = 0;
        this.f47997b.clear();
        this.f47998c.m15460a();
    }

    @Override // com.google.android.gms.internal.ads.dyj
    /* renamed from: a */
    public final void mo15482a(dyi dyiVar) {
        this.f47999d = dyiVar;
    }

    /* JADX WARN: Type inference failed for: r0v100, types: [double] */
    /* JADX WARN: Type inference failed for: r0v104, types: [double] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    @Override // com.google.android.gms.internal.ads.dyj
    /* renamed from: a */
    public final boolean mo15483a(dxt dxtVar) throws IOException, InterruptedException {
        String str;
        long m15485a;
        int m15459a;
        int m15457a;
        ecr.m15247b(this.f47999d != null);
        while (true) {
            if (!this.f47997b.isEmpty() && dxtVar.mo15495b() >= this.f47997b.peek().f48006b) {
                this.f47999d.mo15461c(this.f47997b.pop().f48005a);
                return true;
            }
            if (this.f48000e == 0) {
                ?? m15458a = this.f47998c.m15458a(dxtVar, true, false, 4);
                char c = m15458a;
                if (m15458a == -2) {
                    dxtVar.mo15499a();
                    while (true) {
                        dxtVar.mo15490c(this.f47996a, 0, 4);
                        m15459a = dyo.m15459a(this.f47996a[0]);
                        if (m15459a != -1 && m15459a <= 4) {
                            m15457a = (int) dyo.m15457a(this.f47996a, m15459a, false);
                            if (this.f47999d.mo15462b(m15457a)) {
                                break;
                            }
                        }
                        dxtVar.mo15494b(1);
                    }
                    dxtVar.mo15494b(m15459a);
                    c = m15457a;
                }
                if (c == -1) {
                    return false;
                }
                this.f48001f = c;
                this.f48000e = 1;
            }
            if (this.f48000e == 1) {
                this.f48002g = this.f47998c.m15458a(dxtVar, false, true, 8);
                this.f48000e = 2;
            }
            int mo15468a = this.f47999d.mo15468a(this.f48001f);
            if (mo15468a != 0) {
                if (mo15468a == 1) {
                    long mo15495b = dxtVar.mo15495b();
                    this.f47997b.add(new dyg(this.f48001f, this.f48002g + mo15495b));
                    this.f47999d.mo15464a(this.f48001f, mo15495b, this.f48002g);
                    this.f48000e = 0;
                    return true;
                } else if (mo15468a == 2) {
                    long j = this.f48002g;
                    if (j <= 8) {
                        this.f47999d.mo15465a(this.f48001f, m15485a(dxtVar, (int) j));
                        this.f48000e = 0;
                        return true;
                    }
                    long j2 = this.f48002g;
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j2);
                    throw new zzhw(sb.toString());
                } else if (mo15468a == 3) {
                    long j3 = this.f48002g;
                    if (j3 > 2147483647L) {
                        long j4 = this.f48002g;
                        StringBuilder sb2 = new StringBuilder(41);
                        sb2.append("String element size: ");
                        sb2.append(j4);
                        throw new zzhw(sb2.toString());
                    }
                    dyi dyiVar = this.f47999d;
                    int i = this.f48001f;
                    int i2 = (int) j3;
                    if (i2 == 0) {
                        str = "";
                    } else {
                        byte[] bArr = new byte[i2];
                        dxtVar.mo15493b(bArr, 0, i2);
                        str = new String(bArr);
                    }
                    dyiVar.mo15463a(i, str);
                    this.f48000e = 0;
                    return true;
                } else if (mo15468a == 4) {
                    this.f47999d.mo15466a(this.f48001f, (int) this.f48002g, dxtVar);
                    this.f48000e = 0;
                    return true;
                } else if (mo15468a != 5) {
                    StringBuilder sb3 = new StringBuilder(32);
                    sb3.append("Invalid element type ");
                    sb3.append(mo15468a);
                    throw new zzhw(sb3.toString());
                } else {
                    long j5 = this.f48002g;
                    if (j5 != 4 && j5 != 8) {
                        long j6 = this.f48002g;
                        StringBuilder sb4 = new StringBuilder(40);
                        sb4.append("Invalid float size: ");
                        sb4.append(j6);
                        throw new zzhw(sb4.toString());
                    }
                    int i3 = (int) j5;
                    this.f47999d.mo15467a(this.f48001f, (double) (i3 == 4 ? Float.intBitsToFloat((int) m15485a) : Double.longBitsToDouble(m15485a(dxtVar, i3))));
                    this.f48000e = 0;
                    return true;
                }
            }
            dxtVar.mo15494b((int) this.f48002g);
            this.f48000e = 0;
        }
    }
}
