package androidx.media2.exoplayer.external.text.c;

import android.graphics.Bitmap;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.b;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/c/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private final p f3854a = new p();

    /* renamed from: b  reason: collision with root package name */
    private final p f3855b = new p();

    /* renamed from: c  reason: collision with root package name */
    private final C0090a f3856c = new C0090a();

    /* renamed from: d  reason: collision with root package name */
    private Inflater f3857d;

    /* renamed from: androidx.media2.exoplayer.external.text.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/c/a$a.class */
    static final class C0090a {

        /* renamed from: b  reason: collision with root package name */
        int f3859b;

        /* renamed from: c  reason: collision with root package name */
        int f3860c;

        /* renamed from: d  reason: collision with root package name */
        int f3861d;
        int e;
        int f;
        int g;
        private boolean i;

        /* renamed from: a  reason: collision with root package name */
        final p f3858a = new p();
        private final int[] h = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

        public final androidx.media2.exoplayer.external.text.a a() {
            if (this.f3859b == 0 || this.f3860c == 0 || this.f == 0 || this.g == 0 || this.f3858a.f4168c == 0 || this.f3858a.f4167b != this.f3858a.f4168c || !this.i) {
                return null;
            }
            this.f3858a.c(0);
            int i = this.f * this.g;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int c2 = this.f3858a.c();
                if (c2 != 0) {
                    i2++;
                    iArr[i2] = this.h[c2];
                } else {
                    int c3 = this.f3858a.c();
                    if (c3 != 0) {
                        int c4 = (c3 & 64) == 0 ? c3 & 63 : ((c3 & 63) << 8) | this.f3858a.c();
                        int i3 = (c3 & 128) == 0 ? 0 : this.h[this.f3858a.c()];
                        int i4 = c4 + i2;
                        Arrays.fill(iArr, i2, i4, i3);
                        i2 = i4;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(iArr, this.f, this.g, Bitmap.Config.ARGB_8888);
            float f = this.f3861d;
            int i5 = this.f3859b;
            float f2 = f / i5;
            float f3 = this.e;
            int i6 = this.f3860c;
            return new androidx.media2.exoplayer.external.text.a(createBitmap, f2, 0, f3 / i6, 0, this.f / i5, this.g / i6);
        }

        final void a(p pVar, int i) {
            if (i % 5 == 2) {
                pVar.d(2);
                Arrays.fill(this.h, 0);
                int i2 = i / 5;
                for (int i3 = 0; i3 < i2; i3++) {
                    int c2 = pVar.c();
                    int c3 = pVar.c();
                    int c4 = pVar.c();
                    int c5 = pVar.c();
                    int c6 = pVar.c();
                    double d2 = c3;
                    double d3 = c4 - 128;
                    int i4 = (int) ((1.402d * d3) + d2);
                    double d4 = c5 - 128;
                    int i5 = (int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d));
                    int i6 = (int) (d2 + (d4 * 1.772d));
                    this.h[c2] = ac.a(i6, 0, 255) | (ac.a(i5, 0, 255) << 8) | (c6 << 24) | (ac.a(i4, 0, 255) << 16);
                }
                this.i = true;
            }
        }

        public final void b() {
            this.f3859b = 0;
            this.f3860c = 0;
            this.f3861d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.f3858a.a(0);
            this.i = false;
        }
    }

    public a() {
        super("PgsDecoder");
    }

    @Override // androidx.media2.exoplayer.external.text.b
    public final d a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f3854a.a(bArr, i);
        p pVar = this.f3854a;
        if (pVar.b() > 0 && (pVar.f4166a[pVar.f4167b] & 255) == 120) {
            if (this.f3857d == null) {
                this.f3857d = new Inflater();
            }
            if (ac.a(pVar, this.f3855b, this.f3857d)) {
                pVar.a(this.f3855b.f4166a, this.f3855b.f4168c);
            }
        }
        this.f3856c.b();
        ArrayList arrayList = new ArrayList();
        while (this.f3854a.b() >= 3) {
            p pVar2 = this.f3854a;
            C0090a aVar = this.f3856c;
            int i2 = pVar2.f4168c;
            int c2 = pVar2.c();
            int d2 = pVar2.d();
            int i3 = pVar2.f4167b + d2;
            androidx.media2.exoplayer.external.text.a aVar2 = null;
            if (i3 > i2) {
                pVar2.c(i2);
            } else {
                if (c2 != 128) {
                    switch (c2) {
                        case 20:
                            aVar.a(pVar2, d2);
                            aVar2 = null;
                            break;
                        case 21:
                            aVar2 = null;
                            if (d2 >= 4) {
                                pVar2.d(3);
                                boolean z2 = (pVar2.c() & 128) != 0;
                                int i4 = d2 - 4;
                                int i5 = i4;
                                if (z2) {
                                    aVar2 = null;
                                    if (i4 >= 7) {
                                        int f = pVar2.f();
                                        aVar2 = null;
                                        if (f >= 4) {
                                            aVar.f = pVar2.d();
                                            aVar.g = pVar2.d();
                                            aVar.f3858a.a(f - 4);
                                            i5 = i4 - 7;
                                        }
                                    }
                                }
                                int i6 = aVar.f3858a.f4167b;
                                int i7 = aVar.f3858a.f4168c;
                                aVar2 = null;
                                if (i6 < i7) {
                                    aVar2 = null;
                                    if (i5 > 0) {
                                        int min = Math.min(i5, i7 - i6);
                                        pVar2.a(aVar.f3858a.f4166a, i6, min);
                                        aVar.f3858a.c(i6 + min);
                                        aVar2 = null;
                                        break;
                                    }
                                }
                            }
                            break;
                        case 22:
                            aVar2 = null;
                            if (d2 >= 19) {
                                aVar.f3859b = pVar2.d();
                                aVar.f3860c = pVar2.d();
                                pVar2.d(11);
                                aVar.f3861d = pVar2.d();
                                aVar.e = pVar2.d();
                                aVar2 = null;
                                break;
                            }
                            break;
                        default:
                            aVar2 = null;
                            break;
                    }
                } else {
                    aVar2 = aVar.a();
                    aVar.b();
                }
                pVar2.c(i3);
            }
            if (aVar2 != null) {
                arrayList.add(aVar2);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
