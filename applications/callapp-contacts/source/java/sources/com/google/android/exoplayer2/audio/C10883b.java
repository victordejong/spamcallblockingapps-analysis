package com.google.android.exoplayer2.audio;

import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/b.class */
public final class C10883b {

    /* renamed from: a */
    private static final int[] f35119a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f35120b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f35121c = {24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON};

    /* renamed from: d */
    private static final int[] f35122d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    private static final int[] f35123e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    private static final int[] f35124f = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: com.google.android.exoplayer2.audio.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/b$a.class */
    public static final class C10885a {

        /* renamed from: a */
        public final String f35125a;

        /* renamed from: b */
        public final int f35126b;

        /* renamed from: c */
        public final int f35127c;

        /* renamed from: d */
        public final int f35128d;

        /* renamed from: e */
        public final int f35129e;

        /* renamed from: f */
        public final int f35130f;

        private C10885a(String str, int i, int i2, int i3, int i4, int i5) {
            this.f35125a = str;
            this.f35126b = i;
            this.f35128d = i2;
            this.f35127c = i3;
            this.f35129e = i4;
            this.f35130f = i5;
        }
    }

    private C10883b() {
    }

    /* renamed from: a */
    private static int m22084a(int i, int i2) {
        int i3 = i2 / 2;
        if (i >= 0) {
            int[] iArr = f35120b;
            if (i >= iArr.length || i2 < 0) {
                return -1;
            }
            int[] iArr2 = f35124f;
            if (i3 >= iArr2.length) {
                return -1;
            }
            int i4 = iArr[i];
            if (i4 == 44100) {
                return (iArr2[i3] + (i2 % 2)) * 2;
            }
            int i5 = f35123e[i3];
            return i4 == 32000 ? i5 * 6 : i5 * 4;
        }
        return -1;
    }

    /* renamed from: a */
    public static int m22081a(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f35119a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) == 3 ? 3 : (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }
        return 1536;
    }

    /* renamed from: a */
    public static int m22080a(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    /* renamed from: a */
    public static int m22079a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 248) >> 3) > 10)) {
            return m22084a((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    /* renamed from: a */
    public static Format m22082a(C11628u c11628u, String str, String str2, DrmInitData drmInitData) {
        int i = f35120b[(c11628u.m19804c() & 192) >> 6];
        int m19804c = c11628u.m19804c();
        int i2 = f35122d[(m19804c & 56) >> 3];
        int i3 = i2;
        if ((m19804c & 4) != 0) {
            i3 = i2 + 1;
        }
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = str;
        c10828a.f34792k = "audio/ac3";
        c10828a.f34805x = i3;
        c10828a.f34806y = i;
        c10828a.f34795n = drmInitData;
        c10828a.f34784c = str2;
        return c10828a.m22321a();
    }

    /* renamed from: a */
    public static C10885a m22083a(C11627t c11627t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        String str;
        int i6;
        int i7;
        int i8;
        int m19823b = c11627t.m19823b();
        c11627t.m19822b(40);
        Object[] objArr = c11627t.m19819c(5) > 10 ? 1 : null;
        c11627t.m19826a(m19823b);
        if (objArr != null) {
            c11627t.m19822b(16);
            int m19819c = c11627t.m19819c(2);
            i4 = m19819c != 0 ? m19819c != 1 ? m19819c != 2 ? -1 : 2 : 1 : 0;
            c11627t.m19822b(3);
            int m19819c2 = c11627t.m19819c(11);
            int m19819c3 = c11627t.m19819c(2);
            if (m19819c3 == 3) {
                i8 = f35121c[c11627t.m19819c(2)];
                i7 = 3;
                i6 = 6;
            } else {
                i7 = c11627t.m19819c(2);
                i6 = f35119a[i7];
                i8 = f35120b[m19819c3];
            }
            int m19819c4 = c11627t.m19819c(3);
            boolean m19815e = c11627t.m19815e();
            int i9 = f35122d[m19819c4];
            c11627t.m19822b(10);
            if (c11627t.m19815e()) {
                c11627t.m19822b(8);
            }
            if (m19819c4 == 0) {
                c11627t.m19822b(5);
                if (c11627t.m19815e()) {
                    c11627t.m19822b(8);
                }
            }
            if (i4 == 1 && c11627t.m19815e()) {
                c11627t.m19822b(16);
            }
            if (c11627t.m19815e()) {
                if (m19819c4 > 2) {
                    c11627t.m19822b(2);
                }
                if ((m19819c4 & 1) != 0 && m19819c4 > 2) {
                    c11627t.m19822b(6);
                }
                if ((m19819c4 & 4) != 0) {
                    c11627t.m19822b(6);
                }
                if (m19815e && c11627t.m19815e()) {
                    c11627t.m19822b(5);
                }
                if (i4 == 0) {
                    if (c11627t.m19815e()) {
                        c11627t.m19822b(6);
                    }
                    if (m19819c4 == 0 && c11627t.m19815e()) {
                        c11627t.m19822b(6);
                    }
                    if (c11627t.m19815e()) {
                        c11627t.m19822b(6);
                    }
                    int m19819c5 = c11627t.m19819c(2);
                    if (m19819c5 == 1) {
                        c11627t.m19822b(5);
                    } else if (m19819c5 == 2) {
                        c11627t.m19822b(12);
                    } else if (m19819c5 == 3) {
                        int m19819c6 = c11627t.m19819c(5);
                        if (c11627t.m19815e()) {
                            c11627t.m19822b(5);
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(4);
                            }
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(4);
                            }
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(4);
                            }
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(4);
                            }
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(4);
                            }
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(4);
                            }
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(4);
                            }
                            if (c11627t.m19815e()) {
                                if (c11627t.m19815e()) {
                                    c11627t.m19822b(4);
                                }
                                if (c11627t.m19815e()) {
                                    c11627t.m19822b(4);
                                }
                            }
                        }
                        if (c11627t.m19815e()) {
                            c11627t.m19822b(5);
                            if (c11627t.m19815e()) {
                                c11627t.m19822b(7);
                                if (c11627t.m19815e()) {
                                    c11627t.m19822b(8);
                                }
                            }
                        }
                        c11627t.m19822b((m19819c6 + 2) * 8);
                        c11627t.m19814f();
                    }
                    if (m19819c4 < 2) {
                        if (c11627t.m19815e()) {
                            c11627t.m19822b(14);
                        }
                        if (m19819c4 == 0 && c11627t.m19815e()) {
                            c11627t.m19822b(14);
                        }
                    }
                    if (c11627t.m19815e()) {
                        if (i7 == 0) {
                            c11627t.m19822b(5);
                        } else {
                            for (int i10 = 0; i10 < i6; i10++) {
                                if (c11627t.m19815e()) {
                                    c11627t.m19822b(5);
                                }
                            }
                        }
                    }
                }
            }
            if (c11627t.m19815e()) {
                c11627t.m19822b(5);
                if (m19819c4 == 2) {
                    c11627t.m19822b(4);
                }
                if (m19819c4 >= 6) {
                    c11627t.m19822b(2);
                }
                if (c11627t.m19815e()) {
                    c11627t.m19822b(8);
                }
                if (m19819c4 == 0 && c11627t.m19815e()) {
                    c11627t.m19822b(8);
                }
                if (m19819c3 < 3) {
                    c11627t.m19817d();
                }
            }
            if (i4 == 0 && i7 != 3) {
                c11627t.m19817d();
            }
            if (i4 == 2 && (i7 == 3 || c11627t.m19815e())) {
                c11627t.m19822b(6);
            }
            str = (c11627t.m19815e() && c11627t.m19819c(6) == 1 && c11627t.m19819c(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i = i6 * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            i3 = (m19819c2 + 1) * 2;
            i2 = i8;
            i5 = i9 + (m19815e ? 1 : 0);
        } else {
            c11627t.m19822b(32);
            int m19819c7 = c11627t.m19819c(2);
            String str2 = m19819c7 == 3 ? null : "audio/ac3";
            int m22084a = m22084a(m19819c7, c11627t.m19819c(6));
            c11627t.m19822b(8);
            int m19819c8 = c11627t.m19819c(3);
            if ((m19819c8 & 1) != 0 && m19819c8 != 1) {
                c11627t.m19822b(2);
            }
            if ((m19819c8 & 4) != 0) {
                c11627t.m19822b(2);
            }
            if (m19819c8 == 2) {
                c11627t.m19822b(2);
            }
            int[] iArr = f35120b;
            int i11 = m19819c7 < iArr.length ? iArr[m19819c7] : -1;
            boolean m19815e2 = c11627t.m19815e();
            str = str2;
            i = 1536;
            i3 = m22084a;
            i2 = i11;
            i5 = f35122d[m19819c8] + (m19815e2 ? 1 : 0);
            i4 = -1;
        }
        return new C10885a(str, i4, i5, i2, i3, i);
    }

    /* renamed from: b */
    public static int m22077b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        for (int i = position; i <= limit - 10; i++) {
            if ((C11599af.m19965a(byteBuffer, i + 4) & (-2)) == -126718022) {
                return i - position;
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static int m22076b(byte[] bArr) {
        Object[] objArr = null;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            if ((bArr[7] & 255) == 187) {
                objArr = 1;
            }
            return 40 << ((bArr[(objArr != null ? 9 : 8) == 1 ? 1 : 0] >> 4) & 7);
        }
        return 0;
    }

    /* renamed from: b */
    public static Format m22078b(C11628u c11628u, String str, String str2, DrmInitData drmInitData) {
        c11628u.m19799e(2);
        int i = f35120b[(c11628u.m19804c() & 192) >> 6];
        int m19804c = c11628u.m19804c();
        int i2 = f35122d[(m19804c & 14) >> 1];
        int i3 = i2;
        if ((m19804c & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((c11628u.m19804c() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & c11628u.m19804c()) != 0) {
                i4 = i3 + 2;
            }
        }
        String str3 = (c11628u.m19812a() <= 0 || (c11628u.m19804c() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc";
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = str;
        c10828a.f34792k = str3;
        c10828a.f34805x = i4;
        c10828a.f34806y = i;
        c10828a.f34795n = drmInitData;
        c10828a.f34784c = str2;
        return c10828a.m22321a();
    }
}
