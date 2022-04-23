package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import com.explorestack.protobuf.openrtb.LossReason;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f2855a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2856b = {48000, 44100, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f2857c = {24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f2858d = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 320, 384, 448, 512, 576, 640};
    private static final int[] f = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: androidx.media2.exoplayer.external.audio.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/a$a.class */
    public static final class C0076a {

        /* renamed from: a  reason: collision with root package name */
        public final String f2859a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2860b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2861c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2862d;
        public final int e;
        public final int f;

        private C0076a(String str, int i, int i2, int i3, int i4, int i5) {
            this.f2859a = str;
            this.f2860b = i;
            this.f2862d = i2;
            this.f2861c = i3;
            this.e = i4;
            this.f = i5;
        }
    }

    private a() {
    }

    public static int a() {
        return 1536;
    }

    private static int a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = f2856b;
        if (i >= iArr.length || i2 < 0) {
            return -1;
        }
        int[] iArr2 = f;
        if (i3 >= iArr2.length) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return (iArr2[i3] + (i2 % 2)) * 2;
        }
        int i5 = e[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    public static int a(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f2855a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    public static int a(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    public static int a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 255) >> 3) == 16)) {
            return a((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    public static Format a(p pVar, String str, String str2, DrmInitData drmInitData) {
        int i = f2856b[(pVar.c() & 192) >> 6];
        int c2 = pVar.c();
        int i2 = f2858d[(c2 & 56) >> 3];
        int i3 = i2;
        if ((c2 & 4) != 0) {
            i3 = i2 + 1;
        }
        return Format.createAudioSampleFormat(str, "audio/ac3", null, -1, -1, i3, i, null, drmInitData, 0, str2);
    }

    public static C0076a a(o oVar) {
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        int i6;
        int b2 = oVar.b();
        oVar.b(40);
        boolean z = oVar.c(5) == 16;
        oVar.a(b2);
        int i7 = -1;
        if (z) {
            oVar.b(16);
            int c2 = oVar.c(2);
            if (c2 == 0) {
                i7 = 0;
            } else if (c2 == 1) {
                i7 = 1;
            } else if (c2 == 2) {
                i7 = 2;
            }
            oVar.b(3);
            int c3 = oVar.c(11);
            int c4 = oVar.c(2);
            if (c4 == 3) {
                i4 = f2857c[oVar.c(2)];
                i6 = 3;
                i5 = 6;
            } else {
                i6 = oVar.c(2);
                i5 = f2855a[i6];
                i4 = f2856b[c4];
            }
            int c5 = oVar.c(3);
            boolean e2 = oVar.e();
            int i8 = f2858d[c5];
            oVar.b(10);
            if (oVar.e()) {
                oVar.b(8);
            }
            if (c5 == 0) {
                oVar.b(5);
                if (oVar.e()) {
                    oVar.b(8);
                }
            }
            if (i7 == 1 && oVar.e()) {
                oVar.b(16);
            }
            if (oVar.e()) {
                if (c5 > 2) {
                    oVar.b(2);
                }
                if ((c5 & 1) != 0 && c5 > 2) {
                    oVar.b(6);
                }
                if ((c5 & 4) != 0) {
                    oVar.b(6);
                }
                if (e2 && oVar.e()) {
                    oVar.b(5);
                }
                if (i7 == 0) {
                    if (oVar.e()) {
                        oVar.b(6);
                    }
                    if (c5 == 0 && oVar.e()) {
                        oVar.b(6);
                    }
                    if (oVar.e()) {
                        oVar.b(6);
                    }
                    int c6 = oVar.c(2);
                    if (c6 == 1) {
                        oVar.b(5);
                    } else if (c6 == 2) {
                        oVar.b(12);
                    } else if (c6 == 3) {
                        int c7 = oVar.c(5);
                        if (oVar.e()) {
                            oVar.b(5);
                            if (oVar.e()) {
                                oVar.b(4);
                            }
                            if (oVar.e()) {
                                oVar.b(4);
                            }
                            if (oVar.e()) {
                                oVar.b(4);
                            }
                            if (oVar.e()) {
                                oVar.b(4);
                            }
                            if (oVar.e()) {
                                oVar.b(4);
                            }
                            if (oVar.e()) {
                                oVar.b(4);
                            }
                            if (oVar.e()) {
                                oVar.b(4);
                            }
                            if (oVar.e()) {
                                if (oVar.e()) {
                                    oVar.b(4);
                                }
                                if (oVar.e()) {
                                    oVar.b(4);
                                }
                            }
                        }
                        if (oVar.e()) {
                            oVar.b(5);
                            if (oVar.e()) {
                                oVar.b(7);
                                if (oVar.e()) {
                                    oVar.b(8);
                                }
                            }
                        }
                        oVar.b((c7 + 2) * 8);
                        oVar.f();
                    }
                    if (c5 < 2) {
                        if (oVar.e()) {
                            oVar.b(14);
                        }
                        if (c5 == 0 && oVar.e()) {
                            oVar.b(14);
                        }
                    }
                    if (oVar.e()) {
                        if (i6 == 0) {
                            oVar.b(5);
                        } else {
                            for (int i9 = 0; i9 < i5; i9++) {
                                if (oVar.e()) {
                                    oVar.b(5);
                                }
                            }
                        }
                    }
                }
            }
            if (oVar.e()) {
                oVar.b(5);
                if (c5 == 2) {
                    oVar.b(4);
                }
                if (c5 >= 6) {
                    oVar.b(2);
                }
                if (oVar.e()) {
                    oVar.b(8);
                }
                if (c5 == 0 && oVar.e()) {
                    oVar.b(8);
                }
                if (c4 < 3) {
                    oVar.d();
                }
            }
            if (i7 == 0 && i6 != 3) {
                oVar.d();
            }
            if (i7 == 2 && (i6 == 3 || oVar.e())) {
                oVar.b(6);
            }
            str = (oVar.e() && oVar.c(6) == 1 && oVar.c(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i = (c3 + 1) * 2;
            i3 = i5 * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            i2 = i8 + (e2 ? 1 : 0);
        } else {
            oVar.b(32);
            int c8 = oVar.c(2);
            str = c8 == 3 ? null : "audio/ac3";
            i = a(c8, oVar.c(6));
            oVar.b(8);
            int c9 = oVar.c(3);
            if (!((c9 & 1) == 0 || c9 == 1)) {
                oVar.b(2);
            }
            if ((c9 & 4) != 0) {
                oVar.b(2);
            }
            if (c9 == 2) {
                oVar.b(2);
            }
            int[] iArr = f2856b;
            i4 = c8 < iArr.length ? iArr[c8] : -1;
            i2 = f2858d[c9] + (oVar.e() ? 1 : 0);
            i7 = -1;
            i3 = 1536;
        }
        return new C0076a(str, i7, i2, i4, i, i3);
    }

    public static int b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        for (int i = position; i <= limit - 10; i++) {
            if ((byteBuffer.getInt(i + 4) & (-16777217)) == -1167101192) {
                return i - position;
            }
        }
        return -1;
    }

    public static int b(byte[] bArr) {
        boolean z = false;
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return 0;
        }
        if ((bArr[7] & 255) == 187) {
            z = true;
        }
        return 40 << ((bArr[z ? '\t' : '\b'] >> 4) & 7);
    }

    public static Format b(p pVar, String str, String str2, DrmInitData drmInitData) {
        pVar.d(2);
        int i = f2856b[(pVar.c() & 192) >> 6];
        int c2 = pVar.c();
        int i2 = f2858d[(c2 & 14) >> 1];
        int i3 = i2;
        if ((c2 & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((pVar.c() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & pVar.c()) != 0) {
                i4 = i3 + 2;
            }
        }
        return Format.createAudioSampleFormat(str, (pVar.b() <= 0 || (pVar.c() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc", null, -1, -1, i4, i, null, drmInitData, 0, str2);
    }
}
