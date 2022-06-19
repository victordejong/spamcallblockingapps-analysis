package com.google.android.gms.internal.ads;

import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dnq.class */
public final class dnq implements dnw {

    /* renamed from: a */
    private final byte[] f14902a = new byte[8];

    /* renamed from: b */
    private final Stack<dns> f14903b = new Stack<>();

    /* renamed from: c */
    private final dob f14904c = new dob();

    /* renamed from: d */
    private dnu f14905d;

    /* renamed from: e */
    private int f14906e;

    /* renamed from: f */
    private int f14907f;

    /* renamed from: g */
    private long f14908g;

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    private final long m9051a(dng dngVar, int i) {
        dngVar.mo9058b(this.f14902a, 0, i);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f14902a[i2] & 255);
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.dnw
    /* renamed from: a */
    public final void mo9046a() {
        this.f14906e = 0;
        this.f14903b.clear();
        this.f14904c.m9014a();
    }

    @Override // com.google.android.gms.internal.ads.dnw
    /* renamed from: a */
    public final void mo9044a(dnu dnuVar) {
        this.f14905d = dnuVar;
    }

    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [double] */
    /* JADX WARN: Type inference failed for: r0v63, types: [double] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.dnw
    /* renamed from: a */
    public final boolean mo9045a(dng dngVar) {
        boolean z;
        String str;
        long m9051a;
        long j;
        int i;
        drz.m8770b(this.f14905d != null);
        while (true) {
            if (!this.f14903b.isEmpty()) {
                long mo9060b = dngVar.mo9060b();
                j = this.f14903b.peek().f14912b;
                if (mo9060b >= j) {
                    dnu dnuVar = this.f14905d;
                    i = this.f14903b.pop().f14911a;
                    dnuVar.mo9015c(i);
                    z = true;
                }
            }
            if (this.f14906e == 0) {
                ?? m9012a = this.f14904c.m9012a(dngVar, true, false, 4);
                char c = m9012a;
                if (m9012a == -2) {
                    dngVar.mo9064a();
                    while (true) {
                        dngVar.mo9055c(this.f14902a, 0, 4);
                        int m9013a = dob.m9013a(this.f14902a[0]);
                        if (m9013a != -1 && m9013a <= 4) {
                            int m9011a = (int) dob.m9011a(this.f14902a, m9013a, false);
                            if (this.f14905d.mo9016b(m9011a)) {
                                dngVar.mo9059b(m9013a);
                                c = m9011a;
                            }
                        }
                        dngVar.mo9059b(1);
                    }
                }
                if (c == -1) {
                    z = false;
                } else {
                    this.f14907f = c;
                    this.f14906e = 1;
                }
            }
            if (this.f14906e == 1) {
                this.f14908g = this.f14904c.m9012a(dngVar, false, true, 8);
                this.f14906e = 2;
            }
            int mo9022a = this.f14905d.mo9022a(this.f14907f);
            switch (mo9022a) {
                case 0:
                    dngVar.mo9059b((int) this.f14908g);
                    this.f14906e = 0;
                case 1:
                    long mo9060b2 = dngVar.mo9060b();
                    this.f14903b.add(new dns(this.f14907f, this.f14908g + mo9060b2));
                    this.f14905d.mo9018a(this.f14907f, mo9060b2, this.f14908g);
                    this.f14906e = 0;
                    z = true;
                    break;
                case 2:
                    if (this.f14908g <= 8) {
                        this.f14905d.mo9019a(this.f14907f, m9051a(dngVar, (int) this.f14908g));
                        this.f14906e = 0;
                        z = true;
                        break;
                    } else {
                        throw new zzhi(new StringBuilder(42).append("Invalid integer size: ").append(this.f14908g).toString());
                    }
                case 3:
                    if (this.f14908g <= 2147483647L) {
                        dnu dnuVar2 = this.f14905d;
                        int i2 = this.f14907f;
                        int i3 = (int) this.f14908g;
                        if (i3 == 0) {
                            str = "";
                        } else {
                            byte[] bArr = new byte[i3];
                            dngVar.mo9058b(bArr, 0, i3);
                            str = new String(bArr);
                        }
                        dnuVar2.mo9017a(i2, str);
                        this.f14906e = 0;
                        z = true;
                        break;
                    } else {
                        throw new zzhi(new StringBuilder(41).append("String element size: ").append(this.f14908g).toString());
                    }
                case 4:
                    this.f14905d.mo9020a(this.f14907f, (int) this.f14908g, dngVar);
                    this.f14906e = 0;
                    z = true;
                    break;
                case 5:
                    if (this.f14908g != 4 && this.f14908g != 8) {
                        throw new zzhi(new StringBuilder(40).append("Invalid float size: ").append(this.f14908g).toString());
                    }
                    dnu dnuVar3 = this.f14905d;
                    int i4 = this.f14907f;
                    int i5 = (int) this.f14908g;
                    dnuVar3.mo9021a(i4, (double) (i5 == 4 ? Float.intBitsToFloat((int) m9051a) : Double.longBitsToDouble(m9051a(dngVar, i5))));
                    this.f14906e = 0;
                    z = true;
                    break;
                    break;
                default:
                    throw new zzhi(new StringBuilder(32).append("Invalid element type ").append(mo9022a).toString());
            }
        }
        return z;
    }
}
