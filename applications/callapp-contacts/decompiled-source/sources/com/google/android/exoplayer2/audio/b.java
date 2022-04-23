package com.google.android.exoplayer2.audio;

import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f20729a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f20730b = {48000, 44100, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f20731c = {24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f20732d = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 320, 384, 448, 512, 576, 640};
    private static final int[] f = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f20733a;

        /* renamed from: b  reason: collision with root package name */
        public final int f20734b;

        /* renamed from: c  reason: collision with root package name */
        public final int f20735c;

        /* renamed from: d  reason: collision with root package name */
        public final int f20736d;
        public final int e;
        public final int f;

        private a(String str, int i, int i2, int i3, int i4, int i5) {
            this.f20733a = str;
            this.f20734b = i;
            this.f20736d = i2;
            this.f20735c = i3;
            this.e = i4;
            this.f = i5;
        }
    }

    private b() {
    }

    private static int a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = f20730b;
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
        int i = 3;
        if (!(((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10)) {
            return 1536;
        }
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
        }
        return f20729a[i] * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    public static int a(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    public static int a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 248) >> 3) > 10)) {
            return a((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    public static Format a(u uVar, String str, String str2, DrmInitData drmInitData) {
        int i = f20730b[(uVar.c() & 192) >> 6];
        int c2 = uVar.c();
        int i2 = f20732d[(c2 & 56) >> 3];
        int i3 = i2;
        if ((c2 & 4) != 0) {
            i3 = i2 + 1;
        }
        Format.a aVar = new Format.a();
        aVar.f20603a = str;
        aVar.k = "audio/ac3";
        aVar.x = i3;
        aVar.y = i;
        aVar.n = drmInitData;
        aVar.f20605c = str2;
        return aVar.a();
    }

    public static a a(t tVar) {
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        int i6;
        int b2 = tVar.b();
        tVar.b(40);
        boolean z = tVar.c(5) > 10;
        tVar.a(b2);
        int i7 = -1;
        if (z) {
            tVar.b(16);
            int c2 = tVar.c(2);
            if (c2 == 0) {
                i7 = 0;
            } else if (c2 == 1) {
                i7 = 1;
            } else if (c2 == 2) {
                i7 = 2;
            }
            tVar.b(3);
            int c3 = tVar.c(11);
            int c4 = tVar.c(2);
            if (c4 == 3) {
                i2 = f20731c[tVar.c(2)];
                i6 = 3;
                i5 = 6;
            } else {
                i6 = tVar.c(2);
                i5 = f20729a[i6];
                i2 = f20730b[c4];
            }
            int c5 = tVar.c(3);
            boolean e2 = tVar.e();
            int i8 = f20732d[c5];
            tVar.b(10);
            if (tVar.e()) {
                tVar.b(8);
            }
            if (c5 == 0) {
                tVar.b(5);
                if (tVar.e()) {
                    tVar.b(8);
                }
            }
            if (i7 == 1 && tVar.e()) {
                tVar.b(16);
            }
            if (tVar.e()) {
                if (c5 > 2) {
                    tVar.b(2);
                }
                if ((c5 & 1) != 0 && c5 > 2) {
                    tVar.b(6);
                }
                if ((c5 & 4) != 0) {
                    tVar.b(6);
                }
                if (e2 && tVar.e()) {
                    tVar.b(5);
                }
                if (i7 == 0) {
                    if (tVar.e()) {
                        tVar.b(6);
                    }
                    if (c5 == 0 && tVar.e()) {
                        tVar.b(6);
                    }
                    if (tVar.e()) {
                        tVar.b(6);
                    }
                    int c6 = tVar.c(2);
                    if (c6 == 1) {
                        tVar.b(5);
                    } else if (c6 == 2) {
                        tVar.b(12);
                    } else if (c6 == 3) {
                        int c7 = tVar.c(5);
                        if (tVar.e()) {
                            tVar.b(5);
                            if (tVar.e()) {
                                tVar.b(4);
                            }
                            if (tVar.e()) {
                                tVar.b(4);
                            }
                            if (tVar.e()) {
                                tVar.b(4);
                            }
                            if (tVar.e()) {
                                tVar.b(4);
                            }
                            if (tVar.e()) {
                                tVar.b(4);
                            }
                            if (tVar.e()) {
                                tVar.b(4);
                            }
                            if (tVar.e()) {
                                tVar.b(4);
                            }
                            if (tVar.e()) {
                                if (tVar.e()) {
                                    tVar.b(4);
                                }
                                if (tVar.e()) {
                                    tVar.b(4);
                                }
                            }
                        }
                        if (tVar.e()) {
                            tVar.b(5);
                            if (tVar.e()) {
                                tVar.b(7);
                                if (tVar.e()) {
                                    tVar.b(8);
                                }
                            }
                        }
                        tVar.b((c7 + 2) * 8);
                        tVar.f();
                    }
                    if (c5 < 2) {
                        if (tVar.e()) {
                            tVar.b(14);
                        }
                        if (c5 == 0 && tVar.e()) {
                            tVar.b(14);
                        }
                    }
                    if (tVar.e()) {
                        if (i6 == 0) {
                            tVar.b(5);
                        } else {
                            for (int i9 = 0; i9 < i5; i9++) {
                                if (tVar.e()) {
                                    tVar.b(5);
                                }
                            }
                        }
                    }
                }
            }
            if (tVar.e()) {
                tVar.b(5);
                if (c5 == 2) {
                    tVar.b(4);
                }
                if (c5 >= 6) {
                    tVar.b(2);
                }
                if (tVar.e()) {
                    tVar.b(8);
                }
                if (c5 == 0 && tVar.e()) {
                    tVar.b(8);
                }
                if (c4 < 3) {
                    tVar.d();
                }
            }
            if (i7 == 0 && i6 != 3) {
                tVar.d();
            }
            if (i7 == 2 && (i6 == 3 || tVar.e())) {
                tVar.b(6);
            }
            str = (tVar.e() && tVar.c(6) == 1 && tVar.c(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i = i5 * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            i3 = (c3 + 1) * 2;
            i4 = i8 + (e2 ? 1 : 0);
        } else {
            tVar.b(32);
            int c8 = tVar.c(2);
            str = c8 == 3 ? null : "audio/ac3";
            i3 = a(c8, tVar.c(6));
            tVar.b(8);
            int c9 = tVar.c(3);
            if (!((c9 & 1) == 0 || c9 == 1)) {
                tVar.b(2);
            }
            if ((c9 & 4) != 0) {
                tVar.b(2);
            }
            if (c9 == 2) {
                tVar.b(2);
            }
            int[] iArr = f20730b;
            i2 = c8 < iArr.length ? iArr[c8] : -1;
            i4 = f20732d[c9] + (tVar.e() ? 1 : 0);
            i7 = -1;
            i = 1536;
        }
        return new a(str, i7, i4, i2, i3, i);
    }

    public static int b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        for (int i = position; i <= limit - 10; i++) {
            if ((af.a(byteBuffer, i + 4) & (-2)) == -126718022) {
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

    public static Format b(u uVar, String str, String str2, DrmInitData drmInitData) {
        uVar.e(2);
        int i = f20730b[(uVar.c() & 192) >> 6];
        int c2 = uVar.c();
        int i2 = f20732d[(c2 & 14) >> 1];
        int i3 = i2;
        if ((c2 & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((uVar.c() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & uVar.c()) != 0) {
                i4 = i3 + 2;
            }
        }
        String str3 = (uVar.a() <= 0 || (uVar.c() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc";
        Format.a aVar = new Format.a();
        aVar.f20603a = str;
        aVar.k = str3;
        aVar.x = i4;
        aVar.y = i;
        aVar.n = drmInitData;
        aVar.f20605c = str2;
        return aVar.a();
    }
}
