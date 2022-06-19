package androidx.media2.exoplayer.external.text.p073c;

import android.graphics.Bitmap;
import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
/* renamed from: androidx.media2.exoplayer.external.text.c.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/c/a.class */
public final class C1883a extends AbstractC1870b {

    /* renamed from: a */
    private final C2018p f7565a = new C2018p();

    /* renamed from: b */
    private final C2018p f7566b = new C2018p();

    /* renamed from: c */
    private final C1884a f7567c = new C1884a();

    /* renamed from: d */
    private Inflater f7568d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.c.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/c/a$a.class */
    public static final class C1884a {

        /* renamed from: b */
        int f7570b;

        /* renamed from: c */
        int f7571c;

        /* renamed from: d */
        int f7572d;

        /* renamed from: e */
        int f7573e;

        /* renamed from: f */
        int f7574f;

        /* renamed from: g */
        int f7575g;

        /* renamed from: i */
        private boolean f7577i;

        /* renamed from: a */
        final C2018p f7569a = new C2018p();

        /* renamed from: h */
        private final int[] f7576h = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

        /* renamed from: a */
        public final C1856a m41958a() {
            if (this.f7570b == 0 || this.f7571c == 0 || this.f7574f == 0 || this.f7575g == 0 || this.f7569a.f8133c == 0 || this.f7569a.f8132b != this.f7569a.f8133c || !this.f7577i) {
                return null;
            }
            this.f7569a.m41533c(0);
            int i = this.f7574f * this.f7575g;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int m41534c = this.f7569a.m41534c();
                if (m41534c != 0) {
                    iArr[i2] = this.f7576h[m41534c];
                    i2++;
                } else {
                    int m41534c2 = this.f7569a.m41534c();
                    if (m41534c2 != 0) {
                        int m41534c3 = (m41534c2 & 64) == 0 ? m41534c2 & 63 : ((m41534c2 & 63) << 8) | this.f7569a.m41534c();
                        int i3 = (m41534c2 & 128) == 0 ? 0 : this.f7576h[this.f7569a.m41534c()];
                        int i4 = m41534c3 + i2;
                        Arrays.fill(iArr, i2, i4, i3);
                        i2 = i4;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(iArr, this.f7574f, this.f7575g, Bitmap.Config.ARGB_8888);
            float f = this.f7572d;
            int i5 = this.f7570b;
            float f2 = f / i5;
            float f3 = this.f7573e;
            int i6 = this.f7571c;
            return new C1856a(createBitmap, f2, 0, f3 / i6, 0, this.f7574f / i5, this.f7575g / i6);
        }

        /* renamed from: a */
        final void m41957a(C2018p c2018p, int i) {
            if (i % 5 != 2) {
                return;
            }
            c2018p.m41531d(2);
            Arrays.fill(this.f7576h, 0);
            int i2 = i / 5;
            for (int i3 = 0; i3 < i2; i3++) {
                int m41534c = c2018p.m41534c();
                int m41534c2 = c2018p.m41534c();
                int m41534c3 = c2018p.m41534c();
                int m41534c4 = c2018p.m41534c();
                int m41534c5 = c2018p.m41534c();
                double d = m41534c2;
                double d2 = m41534c3 - 128;
                int i4 = (int) ((1.402d * d2) + d);
                double d3 = m41534c4 - 128;
                int i5 = (int) ((d - (0.34414d * d3)) - (d2 * 0.71414d));
                int i6 = (int) (d + (d3 * 1.772d));
                this.f7576h[m41534c] = C1996ac.m41674a(i6, 0, 255) | (C1996ac.m41674a(i5, 0, 255) << 8) | (m41534c5 << 24) | (C1996ac.m41674a(i4, 0, 255) << 16);
            }
            this.f7577i = true;
        }

        /* renamed from: b */
        public final void m41956b() {
            this.f7570b = 0;
            this.f7571c = 0;
            this.f7572d = 0;
            this.f7573e = 0;
            this.f7574f = 0;
            this.f7575g = 0;
            this.f7569a.m41541a(0);
            this.f7577i = false;
        }
    }

    public C1883a() {
        super("PgsDecoder");
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    public final AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f7565a.m41538a(bArr, i);
        C2018p c2018p = this.f7565a;
        if (c2018p.m41536b() > 0 && (c2018p.f8131a[c2018p.f8132b] & 255) == 120) {
            if (this.f7568d == null) {
                this.f7568d = new Inflater();
            }
            if (C1996ac.m41661a(c2018p, this.f7566b, this.f7568d)) {
                c2018p.m41538a(this.f7566b.f8131a, this.f7566b.f8133c);
            }
        }
        this.f7567c.m41956b();
        ArrayList arrayList = new ArrayList();
        while (this.f7565a.m41536b() >= 3) {
            C2018p c2018p2 = this.f7565a;
            C1884a c1884a = this.f7567c;
            int i2 = c2018p2.f8133c;
            int m41534c = c2018p2.m41534c();
            int m41532d = c2018p2.m41532d();
            int i3 = c2018p2.f8132b + m41532d;
            C1856a c1856a = null;
            if (i3 > i2) {
                c2018p2.m41533c(i2);
            } else {
                if (m41534c != 128) {
                    switch (m41534c) {
                        case 20:
                            c1884a.m41957a(c2018p2, m41532d);
                            c1856a = null;
                            break;
                        case 21:
                            c1856a = null;
                            if (m41532d >= 4) {
                                c2018p2.m41531d(3);
                                boolean z2 = (c2018p2.m41534c() & 128) != 0;
                                int i4 = m41532d - 4;
                                int i5 = i4;
                                if (z2) {
                                    c1856a = null;
                                    if (i4 >= 7) {
                                        int m41528f = c2018p2.m41528f();
                                        c1856a = null;
                                        if (m41528f >= 4) {
                                            c1884a.f7574f = c2018p2.m41532d();
                                            c1884a.f7575g = c2018p2.m41532d();
                                            c1884a.f7569a.m41541a(m41528f - 4);
                                            i5 = i4 - 7;
                                        }
                                    }
                                }
                                int i6 = c1884a.f7569a.f8132b;
                                int i7 = c1884a.f7569a.f8133c;
                                c1856a = null;
                                if (i6 < i7) {
                                    c1856a = null;
                                    if (i5 > 0) {
                                        int min = Math.min(i5, i7 - i6);
                                        c2018p2.m41537a(c1884a.f7569a.f8131a, i6, min);
                                        c1884a.f7569a.m41533c(i6 + min);
                                        c1856a = null;
                                        break;
                                    }
                                }
                            }
                            break;
                        case 22:
                            c1856a = null;
                            if (m41532d >= 19) {
                                c1884a.f7570b = c2018p2.m41532d();
                                c1884a.f7571c = c2018p2.m41532d();
                                c2018p2.m41531d(11);
                                c1884a.f7572d = c2018p2.m41532d();
                                c1884a.f7573e = c2018p2.m41532d();
                                c1856a = null;
                                break;
                            }
                            break;
                        default:
                            c1856a = null;
                            break;
                    }
                } else {
                    c1856a = c1884a.m41958a();
                    c1884a.m41956b();
                }
                c2018p2.m41533c(i3);
            }
            if (c1856a != null) {
                arrayList.add(c1856a);
            }
        }
        return new C1885b(Collections.unmodifiableList(arrayList));
    }
}
