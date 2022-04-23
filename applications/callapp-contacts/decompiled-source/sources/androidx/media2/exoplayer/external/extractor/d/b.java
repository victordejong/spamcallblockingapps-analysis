package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.d.i;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.p;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.h;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/b.class */
final class b extends i {

    /* renamed from: a  reason: collision with root package name */
    h f3085a;

    /* renamed from: d  reason: collision with root package name */
    private a f3086d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/b$a.class */
    final class a implements g, o {

        /* renamed from: a  reason: collision with root package name */
        long[] f3087a;

        /* renamed from: b  reason: collision with root package name */
        long[] f3088b;

        /* renamed from: c  reason: collision with root package name */
        long f3089c = -1;
        private long e = -1;

        public a() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.d.g
        public final long a(androidx.media2.exoplayer.external.extractor.h hVar) throws IOException, InterruptedException {
            long j = this.e;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.e = -1L;
            return j2;
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final o.a a(long j) {
            int a2 = ac.a(this.f3087a, b.this.b(j), true);
            long a3 = b.this.a(this.f3087a[a2]);
            p pVar = new p(a3, this.f3089c + this.f3088b[a2]);
            if (a3 < j) {
                long[] jArr = this.f3087a;
                if (a2 != jArr.length - 1) {
                    int i = a2 + 1;
                    return new o.a(pVar, new p(b.this.a(jArr[i]), this.f3089c + this.f3088b[i]));
                }
            }
            return new o.a(pVar);
        }

        @Override // androidx.media2.exoplayer.external.extractor.d.g
        public final o a() {
            return this;
        }

        @Override // androidx.media2.exoplayer.external.extractor.d.g
        public final void a_(long j) {
            this.e = this.f3087a[ac.a(this.f3087a, j, true)];
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final long b() {
            h hVar = b.this.f3085a;
            return (hVar.h * 1000000) / hVar.e;
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final boolean j_() {
            return true;
        }
    }

    public static boolean a(androidx.media2.exoplayer.external.util.p pVar) {
        return pVar.b() >= 5 && pVar.c() == 127 && pVar.g() == 1179402563;
    }

    private static boolean a(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.i
    protected final void a(boolean z) {
        super.a(z);
        if (z) {
            this.f3085a = null;
            this.f3086d = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.i
    protected final boolean a(androidx.media2.exoplayer.external.util.p pVar, long j, i.a aVar) throws IOException, InterruptedException {
        byte[] bArr = pVar.f4166a;
        if (this.f3085a == null) {
            this.f3085a = new h(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, pVar.f4168c);
            copyOfRange[4] = (byte) (-128);
            List singletonList = Collections.singletonList(copyOfRange);
            h hVar = this.f3085a;
            aVar.f3110a = Format.createAudioSampleFormat(null, "audio/flac", null, -1, hVar.g * hVar.e, this.f3085a.f, this.f3085a.e, singletonList, null, 0, null);
            return true;
        }
        if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            a aVar2 = new a();
            this.f3086d = aVar2;
            pVar.d(1);
            int f = pVar.f() / 18;
            aVar2.f3087a = new long[f];
            aVar2.f3088b = new long[f];
            for (int i = 0; i < f; i++) {
                aVar2.f3087a[i] = pVar.k();
                aVar2.f3088b[i] = pVar.k();
                pVar.d(2);
            }
            return true;
        } else if (!a(bArr)) {
            return true;
        } else {
            a aVar3 = this.f3086d;
            if (aVar3 == null) {
                return false;
            }
            aVar3.f3089c = j;
            aVar.f3111b = this.f3086d;
            return false;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.i
    protected final long b(androidx.media2.exoplayer.external.util.p pVar) {
        int i;
        int i2;
        int i3;
        int i4;
        byte b2;
        int i5;
        if (!a(pVar.f4166a)) {
            return -1L;
        }
        int i6 = (pVar.f4166a[2] & 255) >> 4;
        switch (i6) {
            case 1:
                i = 192;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                i3 = 576;
                i2 = i6 - 2;
                i = i3 << i2;
                break;
            case 6:
            case 7:
                pVar.d(4);
                long j = pVar.f4166a[pVar.f4167b];
                int i7 = 7;
                while (true) {
                    if (i7 >= 0) {
                        if (((1 << i7) & j) != 0) {
                            i7--;
                        } else if (i7 < 6) {
                            j &= i5 - 1;
                            i4 = 7 - i7;
                        } else if (i7 == 7) {
                            i4 = 1;
                        }
                    }
                }
                i4 = 0;
                if (i4 != 0) {
                    for (int i8 = 1; i8 < i4; i8++) {
                        if ((pVar.f4166a[pVar.f4167b + i8] & 192) == 128) {
                            j = (j << 6) | (b2 & 63);
                        } else {
                            StringBuilder sb = new StringBuilder(62);
                            sb.append("Invalid UTF-8 sequence continuation byte: ");
                            sb.append(j);
                            throw new NumberFormatException(sb.toString());
                        }
                    }
                    pVar.f4167b += i4;
                    int c2 = i6 == 6 ? pVar.c() : pVar.d();
                    pVar.c(0);
                    i = c2 + 1;
                    break;
                } else {
                    StringBuilder sb2 = new StringBuilder(55);
                    sb2.append("Invalid UTF-8 sequence first byte: ");
                    sb2.append(j);
                    throw new NumberFormatException(sb2.toString());
                }
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i3 = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                i2 = i6 - 8;
                i = i3 << i2;
                break;
            default:
                i = -1;
                break;
        }
        return i;
    }
}
