package com.google.android.exoplayer2.text.c;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/c/a.class */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final u f21778a = new u();

    /* renamed from: b  reason: collision with root package name */
    private final u f21779b = new u();

    /* renamed from: c  reason: collision with root package name */
    private final C0441a f21780c = new C0441a();

    /* renamed from: d  reason: collision with root package name */
    private Inflater f21781d;

    /* renamed from: com.google.android.exoplayer2.text.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/c/a$a.class */
    static final class C0441a {

        /* renamed from: b  reason: collision with root package name */
        int f21783b;

        /* renamed from: c  reason: collision with root package name */
        int f21784c;

        /* renamed from: d  reason: collision with root package name */
        int f21785d;
        int e;
        int f;
        int g;
        private boolean i;

        /* renamed from: a  reason: collision with root package name */
        final u f21782a = new u();
        private final int[] h = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

        public final b a() {
            if (this.f21783b == 0 || this.f21784c == 0 || this.f == 0 || this.g == 0 || this.f21782a.f22337c == 0 || this.f21782a.f22336b != this.f21782a.f22337c || !this.i) {
                return null;
            }
            this.f21782a.d(0);
            int i = this.f * this.g;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int c2 = this.f21782a.c();
                if (c2 != 0) {
                    i2++;
                    iArr[i2] = this.h[c2];
                } else {
                    int c3 = this.f21782a.c();
                    if (c3 != 0) {
                        int c4 = (c3 & 64) == 0 ? c3 & 63 : ((c3 & 63) << 8) | this.f21782a.c();
                        int i3 = (c3 & 128) == 0 ? 0 : this.h[this.f21782a.c()];
                        int i4 = c4 + i2;
                        Arrays.fill(iArr, i2, i4, i3);
                        i2 = i4;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(iArr, this.f, this.g, Bitmap.Config.ARGB_8888);
            b.a aVar = new b.a();
            aVar.f21739b = createBitmap;
            aVar.e = this.f21785d / this.f21783b;
            aVar.f = 0;
            b.a a2 = aVar.a(this.e / this.f21784c, 0);
            a2.f21741d = 0;
            a2.g = this.f / this.f21783b;
            a2.h = this.g / this.f21784c;
            return a2.a();
        }

        final void a(u uVar, int i) {
            if (i % 5 == 2) {
                uVar.e(2);
                Arrays.fill(this.h, 0);
                int i2 = i / 5;
                for (int i3 = 0; i3 < i2; i3++) {
                    int c2 = uVar.c();
                    int c3 = uVar.c();
                    int c4 = uVar.c();
                    int c5 = uVar.c();
                    int c6 = uVar.c();
                    double d2 = c3;
                    double d3 = c4 - 128;
                    int i4 = (int) ((1.402d * d3) + d2);
                    double d4 = c5 - 128;
                    int i5 = (int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d));
                    int i6 = (int) (d2 + (d4 * 1.772d));
                    this.h[c2] = af.a(i6, 0, 255) | (af.a(i5, 0, 255) << 8) | (c6 << 24) | (af.a(i4, 0, 255) << 16);
                }
                this.i = true;
            }
        }

        public final void b() {
            this.f21783b = 0;
            this.f21784c = 0;
            this.f21785d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.f21782a.a(0);
            this.i = false;
        }
    }

    public a() {
        super("PgsDecoder");
    }

    @Override // com.google.android.exoplayer2.text.c
    public final e a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f21778a.a(bArr, i);
        u uVar = this.f21778a;
        if (uVar.a() > 0 && uVar.b() == 120) {
            if (this.f21781d == null) {
                this.f21781d = new Inflater();
            }
            if (af.a(uVar, this.f21779b, this.f21781d)) {
                uVar.a(this.f21779b.f22335a, this.f21779b.f22337c);
            }
        }
        this.f21780c.b();
        ArrayList arrayList = new ArrayList();
        while (this.f21778a.a() >= 3) {
            u uVar2 = this.f21778a;
            C0441a aVar = this.f21780c;
            int i2 = uVar2.f22337c;
            int c2 = uVar2.c();
            int d2 = uVar2.d();
            int i3 = uVar2.f22336b + d2;
            b bVar = null;
            if (i3 > i2) {
                uVar2.d(i2);
            } else {
                if (c2 != 128) {
                    switch (c2) {
                        case 20:
                            aVar.a(uVar2, d2);
                            bVar = null;
                            break;
                        case 21:
                            bVar = null;
                            if (d2 >= 4) {
                                uVar2.e(3);
                                boolean z2 = (uVar2.c() & 128) != 0;
                                int i4 = d2 - 4;
                                int i5 = i4;
                                if (z2) {
                                    bVar = null;
                                    if (i4 >= 7) {
                                        int g = uVar2.g();
                                        bVar = null;
                                        if (g >= 4) {
                                            aVar.f = uVar2.d();
                                            aVar.g = uVar2.d();
                                            aVar.f21782a.a(g - 4);
                                            i5 = i4 - 7;
                                        }
                                    }
                                }
                                int i6 = aVar.f21782a.f22336b;
                                int i7 = aVar.f21782a.f22337c;
                                bVar = null;
                                if (i6 < i7) {
                                    bVar = null;
                                    if (i5 > 0) {
                                        int min = Math.min(i5, i7 - i6);
                                        uVar2.a(aVar.f21782a.f22335a, i6, min);
                                        aVar.f21782a.d(i6 + min);
                                        bVar = null;
                                        break;
                                    }
                                }
                            }
                            break;
                        case 22:
                            bVar = null;
                            if (d2 >= 19) {
                                aVar.f21783b = uVar2.d();
                                aVar.f21784c = uVar2.d();
                                uVar2.e(11);
                                aVar.f21785d = uVar2.d();
                                aVar.e = uVar2.d();
                                bVar = null;
                                break;
                            }
                            break;
                        default:
                            bVar = null;
                            break;
                    }
                } else {
                    bVar = aVar.a();
                    aVar.b();
                }
                uVar2.d(i3);
            }
            if (bVar != null) {
                arrayList.add(bVar);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
