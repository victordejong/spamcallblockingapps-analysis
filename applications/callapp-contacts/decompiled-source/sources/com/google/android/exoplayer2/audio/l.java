package com.google.android.exoplayer2.audio;

import com.callapp.contacts.model.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.t;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f20774a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f20775b = {-1, 8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f20776c = {64, 112, 128, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 384, 448, 512, 640, 768, 896, 1024, 1152, Constants.SMALL_SIZE_SCREEN, 1536, Constants.BIG_SIZE_SCREEN, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    private l() {
    }

    public static int a(ByteBuffer byteBuffer) {
        int i;
        int i2;
        byte b2;
        byte b3;
        int position = byteBuffer.position();
        byte b4 = byteBuffer.get(position);
        if (b4 != -2) {
            if (b4 == -1) {
                i = (byteBuffer.get(position + 4) & 7) << 4;
                b3 = byteBuffer.get(position + 7);
            } else if (b4 != 31) {
                i = (byteBuffer.get(position + 4) & 1) << 6;
                b2 = byteBuffer.get(position + 5);
            } else {
                i = (byteBuffer.get(position + 5) & 7) << 4;
                b3 = byteBuffer.get(position + 6);
            }
            i2 = b3 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (byteBuffer.get(position + 5) & 1) << 6;
        b2 = byteBuffer.get(position + 4);
        i2 = b2 & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }

    public static int a(byte[] bArr) {
        int i;
        int i2;
        byte b2;
        byte b3;
        byte b4 = bArr[0];
        if (b4 != -2) {
            if (b4 == -1) {
                i2 = (bArr[4] & 7) << 4;
                b3 = bArr[7];
            } else if (b4 != 31) {
                i2 = (bArr[4] & 1) << 6;
                b2 = bArr[5];
            } else {
                i2 = (bArr[5] & 7) << 4;
                b3 = bArr[6];
            }
            i = b3 & 60;
            return (((i >> 2) | i2) + 1) * 32;
        }
        i2 = (bArr[5] & 1) << 6;
        b2 = bArr[4];
        i = b2 & 252;
        return (((i >> 2) | i2) + 1) * 32;
    }

    public static Format a(byte[] bArr, String str, String str2) {
        t tVar;
        byte[] bArr2;
        byte[] bArr3;
        int i;
        int i2 = -1;
        if (bArr[0] == Byte.MAX_VALUE) {
            tVar = new t(bArr);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            if (copyOf[0] == -2 || copyOf[0] == -1) {
                for (int i3 = 0; i3 < copyOf.length - 1; i3 += 2) {
                    byte b2 = copyOf[i3];
                    copyOf[i3] = copyOf[i];
                    copyOf[i3 + 1] = b2;
                }
            }
            tVar = new t(copyOf);
            if (copyOf[0] == 31) {
                t tVar2 = new t(copyOf);
                while (tVar2.a() >= 16) {
                    tVar2.b(2);
                    int c2 = tVar2.c(14) & 16383;
                    int min = Math.min(8 - tVar.f22333c, 14);
                    int i4 = (8 - tVar.f22333c) - min;
                    tVar.f22331a[tVar.f22332b] = (byte) (tVar.f22331a[tVar.f22332b] & ((65280 >> tVar.f22333c) | ((1 << i4) - 1)));
                    int i5 = 14 - min;
                    tVar.f22331a[tVar.f22332b] = (byte) (((c2 >>> i5) << i4) | tVar.f22331a[tVar.f22332b]);
                    int i6 = tVar.f22332b + 1;
                    while (i5 > 8) {
                        tVar.f22331a[i6] = (byte) (c2 >>> (i5 - 8));
                        i5 -= 8;
                        i6++;
                    }
                    int i7 = 8 - i5;
                    tVar.f22331a[i6] = (byte) (bArr2[i6] & ((1 << i7) - 1));
                    tVar.f22331a[i6] = (byte) (((((1 << i5) - 1) & c2) << i7) | bArr3[i6]);
                    tVar.b(14);
                    tVar.g();
                }
            }
            tVar.a(copyOf, copyOf.length);
        }
        tVar.b(60);
        int i8 = f20774a[tVar.c(6)];
        int i9 = f20775b[tVar.c(4)];
        int c3 = tVar.c(5);
        int[] iArr = f20776c;
        if (c3 < iArr.length) {
            i2 = (iArr[c3] * 1000) / 2;
        }
        tVar.b(10);
        int i10 = tVar.c(2) > 0 ? 1 : 0;
        Format.a aVar = new Format.a();
        aVar.f20603a = str;
        aVar.k = "audio/vnd.dts";
        aVar.f = i2;
        aVar.x = i8 + i10;
        aVar.y = i9;
        aVar.n = null;
        aVar.f20605c = str2;
        return aVar.a();
    }

    public static boolean a(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(byte[] r4) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.l.b(byte[]):int");
    }
}
