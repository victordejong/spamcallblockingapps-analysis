package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.C11152y;
import com.google.android.exoplayer2.extractor.C11153z;
import com.google.android.exoplayer2.extractor.p333g.AbstractC11065h;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.g.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/i.class */
public final class C11069i extends AbstractC11065h {

    /* renamed from: j */
    private C11070a f36058j;

    /* renamed from: k */
    private int f36059k;

    /* renamed from: l */
    private boolean f36060l;

    /* renamed from: m */
    private C11153z.C11157d f36061m;

    /* renamed from: n */
    private C11153z.C11155b f36062n;

    /* renamed from: com.google.android.exoplayer2.extractor.g.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/i$a.class */
    static final class C11070a {

        /* renamed from: a */
        public final C11153z.C11157d f36063a;

        /* renamed from: b */
        public final C11153z.C11155b f36064b;

        /* renamed from: c */
        public final byte[] f36065c;

        /* renamed from: d */
        public final C11153z.C11156c[] f36066d;

        /* renamed from: e */
        public final int f36067e;

        public C11070a(C11153z.C11157d c11157d, C11153z.C11155b c11155b, byte[] bArr, C11153z.C11156c[] c11156cArr, int i) {
            this.f36063a = c11157d;
            this.f36064b = c11155b;
            this.f36065c = bArr;
            this.f36066d = c11156cArr;
            this.f36067e = i;
        }
    }

    /* renamed from: a */
    public static boolean m21552a(C11628u c11628u) {
        try {
            return C11153z.m21380a(1, c11628u, true);
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    /* renamed from: a */
    public final void mo21550a(boolean z) {
        super.mo21550a(z);
        if (z) {
            this.f36058j = null;
            this.f36061m = null;
            this.f36062n = null;
        }
        this.f36059k = 0;
        this.f36060l = false;
    }

    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: a */
    protected final boolean mo21551a(C11628u c11628u, long j, AbstractC11065h.C11067a c11067a) throws IOException {
        C11070a c11070a;
        if (this.f36058j != null) {
            C11593a.m20020b(c11067a.f36056a);
            return false;
        }
        C11153z.C11157d c11157d = this.f36061m;
        if (c11157d == null) {
            C11153z.m21380a(1, c11628u, false);
            int m19786p = c11628u.m19786p();
            int m19804c = c11628u.m19804c();
            int m19786p2 = c11628u.m19786p();
            int m19791k = c11628u.m19791k();
            if (m19791k <= 0) {
                m19791k = -1;
            }
            int m19791k2 = c11628u.m19791k();
            if (m19791k2 <= 0) {
                m19791k2 = -1;
            }
            int m19791k3 = c11628u.m19791k();
            if (m19791k3 <= 0) {
                m19791k3 = -1;
            }
            int m19804c2 = c11628u.m19804c();
            this.f36061m = new C11153z.C11157d(m19786p, m19804c, m19786p2, m19791k, m19791k2, m19791k3, (int) Math.pow(2.0d, m19804c2 & 15), (int) Math.pow(2.0d, (m19804c2 & 240) >> 4), (c11628u.m19804c() & 1) > 0, Arrays.copyOf(c11628u.f38733a, c11628u.f38735c));
            c11070a = null;
        } else {
            C11153z.C11155b c11155b = this.f36062n;
            if (c11155b == null) {
                this.f36062n = C11153z.m21378a(c11628u, true, true);
                c11070a = null;
            } else {
                byte[] bArr = new byte[c11628u.f38735c];
                System.arraycopy(c11628u.f38733a, 0, bArr, 0, c11628u.f38735c);
                int i = c11157d.f36530b;
                C11153z.m21380a(5, c11628u, false);
                int m19804c3 = c11628u.m19804c() + 1;
                C11152y c11152y = new C11152y(c11628u.f38733a);
                c11152y.m21383b(c11628u.f38734b * 8);
                int i2 = 0;
                while (true) {
                    C11152y c11152y2 = c11152y;
                    if (i2 >= m19804c3) {
                        int m21385a = c11152y2.m21385a(6);
                        for (int i3 = 0; i3 < m21385a + 1; i3++) {
                            if (c11152y2.m21385a(16) != 0) {
                                throw new ParserException("placeholder of time domain transforms not zeroed out");
                            }
                        }
                        C11153z.m21376c(c11152y2);
                        C11153z.m21377b(c11152y2);
                        C11153z.m21381a(i, c11152y2);
                        C11153z.C11156c[] m21379a = C11153z.m21379a(c11152y2);
                        if (!c11152y2.m21386a()) {
                            throw new ParserException("framing bit after modes not set as expected");
                        }
                        c11070a = new C11070a(c11157d, c11155b, bArr, m21379a, C11153z.m21382a(m21379a.length - 1));
                    } else if (c11152y2.m21385a(24) != 5653314) {
                        throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + ((c11152y2.f36513a * 8) + c11152y2.f36514b));
                    } else {
                        int m21385a2 = c11152y2.m21385a(16);
                        int m21385a3 = c11152y2.m21385a(24);
                        long[] jArr = new long[m21385a3];
                        boolean m21386a = c11152y2.m21386a();
                        if (m21386a) {
                            int i4 = m19804c3;
                            int m21385a4 = c11152y2.m21385a(5) + 1;
                            int i5 = 0;
                            while (true) {
                                int i6 = i5;
                                c11152y = c11152y2;
                                m19804c3 = i4;
                                if (i6 >= m21385a3) {
                                    break;
                                }
                                int m21385a5 = c11152y2.m21385a(C11153z.m21382a(m21385a3 - i6));
                                int i7 = i6;
                                for (int i8 = 0; i8 < m21385a5 && i7 < m21385a3; i8++) {
                                    jArr[i7] = m21385a4;
                                    i7++;
                                }
                                m21385a4++;
                                i5 = i7;
                            }
                        } else {
                            boolean m21386a2 = c11152y2.m21386a();
                            for (int i9 = 0; i9 < m21385a3; i9++) {
                                if (!m21386a2 || c11152y2.m21386a()) {
                                    jArr[i9] = c11152y2.m21385a(5) + 1;
                                } else {
                                    jArr[i9] = 0;
                                }
                            }
                            c11152y = c11152y2;
                        }
                        int m21385a6 = c11152y.m21385a(4);
                        if (m21385a6 > 2) {
                            throw new ParserException("lookup type greater than 2 not decodable: ".concat(String.valueOf(m21385a6)));
                        }
                        if (m21385a6 == 1 || m21385a6 == 2) {
                            c11152y.m21383b(32);
                            c11152y.m21383b(32);
                            int m21385a7 = c11152y.m21385a(4);
                            c11152y.m21383b(1);
                            c11152y.m21383b((int) ((m21385a6 == 1 ? m21385a2 != 0 ? (long) Math.floor(Math.pow(m21385a3, 1.0d / m21385a2)) : (char) 0 : m21385a3 * m21385a2) * (m21385a7 + 1)));
                        }
                        new C11153z.C11154a(m21385a2, m21385a3, jArr, m21385a6, m21386a);
                        i2++;
                    }
                }
            }
        }
        this.f36058j = c11070a;
        if (c11070a == null) {
            return true;
        }
        C11153z.C11157d c11157d2 = c11070a.f36063a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c11157d2.f36538j);
        arrayList.add(c11070a.f36065c);
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = "audio/vorbis";
        c10828a.f34787f = c11157d2.f36533e;
        c10828a.f34788g = c11157d2.f36532d;
        c10828a.f34805x = c11157d2.f36530b;
        c10828a.f34806y = c11157d2.f36531c;
        c10828a.f34794m = arrayList;
        c11067a.f36056a = c10828a.m22321a();
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    /* renamed from: b */
    protected final long mo21549b(C11628u c11628u) {
        int i = 0;
        if ((c11628u.f38733a[0] & 1) == 1) {
            return -1L;
        }
        byte b = c11628u.f38733a[0];
        C11070a c11070a = (C11070a) C11593a.m20024a(this.f36058j);
        int i2 = !c11070a.f36066d[(b >> 1) & (255 >>> (8 - c11070a.f36067e))].f36525a ? c11070a.f36063a.f36535g : c11070a.f36063a.f36536h;
        if (this.f36060l) {
            i = (this.f36059k + i2) / 4;
        }
        long j = i;
        if (c11628u.f38733a.length < c11628u.f38735c + 4) {
            byte[] copyOf = Arrays.copyOf(c11628u.f38733a, c11628u.f38735c + 4);
            c11628u.m19808a(copyOf, copyOf.length);
        } else {
            c11628u.m19803c(c11628u.f38735c + 4);
        }
        byte[] bArr = c11628u.f38733a;
        bArr[c11628u.f38735c - 4] = (byte) (j & 255);
        bArr[c11628u.f38735c - 3] = (byte) ((j >>> 8) & 255);
        bArr[c11628u.f38735c - 2] = (byte) ((j >>> 16) & 255);
        bArr[c11628u.f38735c - 1] = (byte) ((j >>> 24) & 255);
        this.f36060l = true;
        this.f36059k = i2;
        return j;
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    /* renamed from: c */
    public final void mo21548c(long j) {
        super.mo21548c(j);
        int i = 0;
        this.f36060l = j != 0;
        C11153z.C11157d c11157d = this.f36061m;
        if (c11157d != null) {
            i = c11157d.f36535g;
        }
        this.f36059k = i;
    }
}
