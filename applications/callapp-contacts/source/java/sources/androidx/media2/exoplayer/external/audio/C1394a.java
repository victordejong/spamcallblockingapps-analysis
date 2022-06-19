package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import com.explorestack.protobuf.openrtb.LossReason;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.audio.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/a.class */
public final class C1394a {

    /* renamed from: a */
    private static final int[] f5280a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f5281b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f5282c = {24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON};

    /* renamed from: d */
    private static final int[] f5283d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    private static final int[] f5284e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    private static final int[] f5285f = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: androidx.media2.exoplayer.external.audio.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/a$a.class */
    public static final class C1396a {

        /* renamed from: a */
        public final String f5286a;

        /* renamed from: b */
        public final int f5287b;

        /* renamed from: c */
        public final int f5288c;

        /* renamed from: d */
        public final int f5289d;

        /* renamed from: e */
        public final int f5290e;

        /* renamed from: f */
        public final int f5291f;

        private C1396a(String str, int i, int i2, int i3, int i4, int i5) {
            this.f5286a = str;
            this.f5287b = i;
            this.f5289d = i2;
            this.f5288c = i3;
            this.f5290e = i4;
            this.f5291f = i5;
        }
    }

    private C1394a() {
    }

    /* renamed from: a */
    public static int m43035a() {
        return 1536;
    }

    /* renamed from: a */
    private static int m43034a(int i, int i2) {
        int i3 = i2 / 2;
        if (i >= 0) {
            int[] iArr = f5281b;
            if (i >= iArr.length || i2 < 0) {
                return -1;
            }
            int[] iArr2 = f5285f;
            if (i3 >= iArr2.length) {
                return -1;
            }
            int i4 = iArr[i];
            if (i4 == 44100) {
                return (iArr2[i3] + (i2 % 2)) * 2;
            }
            int i5 = f5284e[i3];
            return i4 == 32000 ? i5 * 6 : i5 * 4;
        }
        return -1;
    }

    /* renamed from: a */
    public static int m43031a(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f5280a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    /* renamed from: a */
    public static int m43030a(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    /* renamed from: a */
    public static int m43029a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 255) >> 3) == 16)) {
            return m43034a((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    /* renamed from: a */
    public static Format m43032a(C2018p c2018p, String str, String str2, DrmInitData drmInitData) {
        int i = f5281b[(c2018p.m41534c() & 192) >> 6];
        int m41534c = c2018p.m41534c();
        int i2 = f5283d[(m41534c & 56) >> 3];
        int i3 = i2;
        if ((m41534c & 4) != 0) {
            i3 = i2 + 1;
        }
        return Format.createAudioSampleFormat(str, "audio/ac3", null, -1, -1, i3, i, null, drmInitData, 0, str2);
    }

    /* renamed from: a */
    public static C1396a m43033a(C2017o c2017o) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        String str;
        int i6;
        int i7;
        int m41552b = c2017o.m41552b();
        c2017o.m41551b(40);
        Object[] objArr = c2017o.m41548c(5) == 16 ? 1 : null;
        c2017o.m41554a(m41552b);
        if (objArr != null) {
            c2017o.m41551b(16);
            int m41548c = c2017o.m41548c(2);
            i4 = m41548c != 0 ? m41548c != 1 ? m41548c != 2 ? -1 : 2 : 1 : 0;
            c2017o.m41551b(3);
            int m41548c2 = c2017o.m41548c(11);
            int m41548c3 = c2017o.m41548c(2);
            if (m41548c3 == 3) {
                i5 = f5282c[c2017o.m41548c(2)];
                i7 = 3;
                i6 = 6;
            } else {
                i7 = c2017o.m41548c(2);
                i6 = f5280a[i7];
                i5 = f5281b[m41548c3];
            }
            int m41548c4 = c2017o.m41548c(3);
            boolean m41545e = c2017o.m41545e();
            int i8 = f5283d[m41548c4];
            c2017o.m41551b(10);
            if (c2017o.m41545e()) {
                c2017o.m41551b(8);
            }
            if (m41548c4 == 0) {
                c2017o.m41551b(5);
                if (c2017o.m41545e()) {
                    c2017o.m41551b(8);
                }
            }
            if (i4 == 1 && c2017o.m41545e()) {
                c2017o.m41551b(16);
            }
            if (c2017o.m41545e()) {
                if (m41548c4 > 2) {
                    c2017o.m41551b(2);
                }
                if ((m41548c4 & 1) != 0 && m41548c4 > 2) {
                    c2017o.m41551b(6);
                }
                if ((m41548c4 & 4) != 0) {
                    c2017o.m41551b(6);
                }
                if (m41545e && c2017o.m41545e()) {
                    c2017o.m41551b(5);
                }
                if (i4 == 0) {
                    if (c2017o.m41545e()) {
                        c2017o.m41551b(6);
                    }
                    if (m41548c4 == 0 && c2017o.m41545e()) {
                        c2017o.m41551b(6);
                    }
                    if (c2017o.m41545e()) {
                        c2017o.m41551b(6);
                    }
                    int m41548c5 = c2017o.m41548c(2);
                    if (m41548c5 == 1) {
                        c2017o.m41551b(5);
                    } else if (m41548c5 == 2) {
                        c2017o.m41551b(12);
                    } else if (m41548c5 == 3) {
                        int m41548c6 = c2017o.m41548c(5);
                        if (c2017o.m41545e()) {
                            c2017o.m41551b(5);
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(4);
                            }
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(4);
                            }
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(4);
                            }
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(4);
                            }
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(4);
                            }
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(4);
                            }
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(4);
                            }
                            if (c2017o.m41545e()) {
                                if (c2017o.m41545e()) {
                                    c2017o.m41551b(4);
                                }
                                if (c2017o.m41545e()) {
                                    c2017o.m41551b(4);
                                }
                            }
                        }
                        if (c2017o.m41545e()) {
                            c2017o.m41551b(5);
                            if (c2017o.m41545e()) {
                                c2017o.m41551b(7);
                                if (c2017o.m41545e()) {
                                    c2017o.m41551b(8);
                                }
                            }
                        }
                        c2017o.m41551b((m41548c6 + 2) * 8);
                        c2017o.m41544f();
                    }
                    if (m41548c4 < 2) {
                        if (c2017o.m41545e()) {
                            c2017o.m41551b(14);
                        }
                        if (m41548c4 == 0 && c2017o.m41545e()) {
                            c2017o.m41551b(14);
                        }
                    }
                    if (c2017o.m41545e()) {
                        if (i7 == 0) {
                            c2017o.m41551b(5);
                        } else {
                            for (int i9 = 0; i9 < i6; i9++) {
                                if (c2017o.m41545e()) {
                                    c2017o.m41551b(5);
                                }
                            }
                        }
                    }
                }
            }
            if (c2017o.m41545e()) {
                c2017o.m41551b(5);
                if (m41548c4 == 2) {
                    c2017o.m41551b(4);
                }
                if (m41548c4 >= 6) {
                    c2017o.m41551b(2);
                }
                if (c2017o.m41545e()) {
                    c2017o.m41551b(8);
                }
                if (m41548c4 == 0 && c2017o.m41545e()) {
                    c2017o.m41551b(8);
                }
                if (m41548c3 < 3) {
                    c2017o.m41546d();
                }
            }
            if (i4 == 0 && i7 != 3) {
                c2017o.m41546d();
            }
            if (i4 == 2 && (i7 == 3 || c2017o.m41545e())) {
                c2017o.m41551b(6);
            }
            str = (c2017o.m41545e() && c2017o.m41548c(6) == 1 && c2017o.m41548c(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i = (m41548c2 + 1) * 2;
            i3 = i6 * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            i2 = i8 + (m41545e ? 1 : 0);
        } else {
            c2017o.m41551b(32);
            int m41548c7 = c2017o.m41548c(2);
            String str2 = m41548c7 == 3 ? null : "audio/ac3";
            int m43034a = m43034a(m41548c7, c2017o.m41548c(6));
            c2017o.m41551b(8);
            int m41548c8 = c2017o.m41548c(3);
            if ((m41548c8 & 1) != 0 && m41548c8 != 1) {
                c2017o.m41551b(2);
            }
            if ((m41548c8 & 4) != 0) {
                c2017o.m41551b(2);
            }
            if (m41548c8 == 2) {
                c2017o.m41551b(2);
            }
            int[] iArr = f5281b;
            int i10 = m41548c7 < iArr.length ? iArr[m41548c7] : -1;
            i2 = f5283d[m41548c8] + (c2017o.m41545e() ? 1 : 0);
            i3 = 1536;
            i = m43034a;
            i5 = i10;
            i4 = -1;
            str = str2;
        }
        return new C1396a(str, i4, i2, i5, i, i3);
    }

    /* renamed from: b */
    public static int m43027b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        for (int i = position; i <= limit - 10; i++) {
            if ((byteBuffer.getInt(i + 4) & (-16777217)) == -1167101192) {
                return i - position;
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static int m43026b(byte[] bArr) {
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
    public static Format m43028b(C2018p c2018p, String str, String str2, DrmInitData drmInitData) {
        c2018p.m41531d(2);
        int i = f5281b[(c2018p.m41534c() & 192) >> 6];
        int m41534c = c2018p.m41534c();
        int i2 = f5283d[(m41534c & 14) >> 1];
        int i3 = i2;
        if ((m41534c & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((c2018p.m41534c() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & c2018p.m41534c()) != 0) {
                i4 = i3 + 2;
            }
        }
        return Format.createAudioSampleFormat(str, (c2018p.m41536b() <= 0 || (c2018p.m41534c() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc", null, -1, -1, i4, i, null, drmInitData, 0, str2);
    }
}
