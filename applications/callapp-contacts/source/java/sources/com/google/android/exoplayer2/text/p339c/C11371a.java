package com.google.android.exoplayer2.text.p339c;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
/* renamed from: com.google.android.exoplayer2.text.c.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/c/a.class */
public final class C11371a extends AbstractC11370c {

    /* renamed from: a */
    private final C11628u f37503a = new C11628u();

    /* renamed from: b */
    private final C11628u f37504b = new C11628u();

    /* renamed from: c */
    private final C11372a f37505c = new C11372a();

    /* renamed from: d */
    private Inflater f37506d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.c.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/c/a$a.class */
    public static final class C11372a {

        /* renamed from: b */
        int f37508b;

        /* renamed from: c */
        int f37509c;

        /* renamed from: d */
        int f37510d;

        /* renamed from: e */
        int f37511e;

        /* renamed from: f */
        int f37512f;

        /* renamed from: g */
        int f37513g;

        /* renamed from: i */
        private boolean f37515i;

        /* renamed from: a */
        final C11628u f37507a = new C11628u();

        /* renamed from: h */
        private final int[] f37514h = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

        /* renamed from: a */
        public final C11356b m20725a() {
            if (this.f37508b == 0 || this.f37509c == 0 || this.f37512f == 0 || this.f37513g == 0 || this.f37507a.f38735c == 0 || this.f37507a.f38734b != this.f37507a.f38735c || !this.f37515i) {
                return null;
            }
            this.f37507a.m19801d(0);
            int i = this.f37512f * this.f37513g;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int m19804c = this.f37507a.m19804c();
                if (m19804c != 0) {
                    iArr[i2] = this.f37514h[m19804c];
                    i2++;
                } else {
                    int m19804c2 = this.f37507a.m19804c();
                    if (m19804c2 != 0) {
                        int m19804c3 = (m19804c2 & 64) == 0 ? m19804c2 & 63 : ((m19804c2 & 63) << 8) | this.f37507a.m19804c();
                        int i3 = (m19804c2 & 128) == 0 ? 0 : this.f37514h[this.f37507a.m19804c()];
                        int i4 = m19804c3 + i2;
                        Arrays.fill(iArr, i2, i4, i3);
                        i2 = i4;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(iArr, this.f37512f, this.f37513g, Bitmap.Config.ARGB_8888);
            C11356b.C11358a c11358a = new C11356b.C11358a();
            c11358a.f37429b = createBitmap;
            c11358a.f37432e = this.f37510d / this.f37508b;
            c11358a.f37433f = 0;
            C11356b.C11358a m20743a = c11358a.m20743a(this.f37511e / this.f37509c, 0);
            m20743a.f37431d = 0;
            m20743a.f37434g = this.f37512f / this.f37508b;
            m20743a.f37435h = this.f37513g / this.f37509c;
            return m20743a.m20744a();
        }

        /* renamed from: a */
        final void m20724a(C11628u c11628u, int i) {
            if (i % 5 != 2) {
                return;
            }
            c11628u.m19799e(2);
            Arrays.fill(this.f37514h, 0);
            int i2 = i / 5;
            for (int i3 = 0; i3 < i2; i3++) {
                int m19804c = c11628u.m19804c();
                int m19804c2 = c11628u.m19804c();
                int m19804c3 = c11628u.m19804c();
                int m19804c4 = c11628u.m19804c();
                int m19804c5 = c11628u.m19804c();
                double d = m19804c2;
                double d2 = m19804c3 - 128;
                int i4 = (int) ((1.402d * d2) + d);
                double d3 = m19804c4 - 128;
                int i5 = (int) ((d - (0.34414d * d3)) - (d2 * 0.71414d));
                int i6 = (int) (d + (d3 * 1.772d));
                this.f37514h[m19804c] = C11599af.m19997a(i6, 0, 255) | (C11599af.m19997a(i5, 0, 255) << 8) | (m19804c5 << 24) | (C11599af.m19997a(i4, 0, 255) << 16);
            }
            this.f37515i = true;
        }

        /* renamed from: b */
        public final void m20723b() {
            this.f37508b = 0;
            this.f37509c = 0;
            this.f37510d = 0;
            this.f37511e = 0;
            this.f37512f = 0;
            this.f37513g = 0;
            this.f37507a.m19811a(0);
            this.f37515i = false;
        }
    }

    public C11371a() {
        super("PgsDecoder");
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f37503a.m19808a(bArr, i);
        C11628u c11628u = this.f37503a;
        if (c11628u.m19812a() > 0 && c11628u.m19806b() == 120) {
            if (this.f37506d == null) {
                this.f37506d = new Inflater();
            }
            if (C11599af.m19978a(c11628u, this.f37504b, this.f37506d)) {
                c11628u.m19808a(this.f37504b.f38733a, this.f37504b.f38735c);
            }
        }
        this.f37505c.m20723b();
        ArrayList arrayList = new ArrayList();
        while (this.f37503a.m19812a() >= 3) {
            C11628u c11628u2 = this.f37503a;
            C11372a c11372a = this.f37505c;
            int i2 = c11628u2.f38735c;
            int m19804c = c11628u2.m19804c();
            int m19802d = c11628u2.m19802d();
            int i3 = c11628u2.f38734b + m19802d;
            C11356b c11356b = null;
            if (i3 > i2) {
                c11628u2.m19801d(i2);
            } else {
                if (m19804c != 128) {
                    switch (m19804c) {
                        case 20:
                            c11372a.m20724a(c11628u2, m19802d);
                            c11356b = null;
                            break;
                        case 21:
                            c11356b = null;
                            if (m19802d >= 4) {
                                c11628u2.m19799e(3);
                                boolean z2 = (c11628u2.m19804c() & 128) != 0;
                                int i4 = m19802d - 4;
                                int i5 = i4;
                                if (z2) {
                                    c11356b = null;
                                    if (i4 >= 7) {
                                        int m19796g = c11628u2.m19796g();
                                        c11356b = null;
                                        if (m19796g >= 4) {
                                            c11372a.f37512f = c11628u2.m19802d();
                                            c11372a.f37513g = c11628u2.m19802d();
                                            c11372a.f37507a.m19811a(m19796g - 4);
                                            i5 = i4 - 7;
                                        }
                                    }
                                }
                                int i6 = c11372a.f37507a.f38734b;
                                int i7 = c11372a.f37507a.f38735c;
                                c11356b = null;
                                if (i6 < i7) {
                                    c11356b = null;
                                    if (i5 > 0) {
                                        int min = Math.min(i5, i7 - i6);
                                        c11628u2.m19807a(c11372a.f37507a.f38733a, i6, min);
                                        c11372a.f37507a.m19801d(i6 + min);
                                        c11356b = null;
                                        break;
                                    }
                                }
                            }
                            break;
                        case 22:
                            c11356b = null;
                            if (m19802d >= 19) {
                                c11372a.f37508b = c11628u2.m19802d();
                                c11372a.f37509c = c11628u2.m19802d();
                                c11628u2.m19799e(11);
                                c11372a.f37510d = c11628u2.m19802d();
                                c11372a.f37511e = c11628u2.m19802d();
                                c11356b = null;
                                break;
                            }
                            break;
                        default:
                            c11356b = null;
                            break;
                    }
                } else {
                    c11356b = c11372a.m20725a();
                    c11372a.m20723b();
                }
                c11628u2.m19801d(i3);
            }
            if (c11356b != null) {
                arrayList.add(c11356b);
            }
        }
        return new C11373b(Collections.unmodifiableList(arrayList));
    }
}
