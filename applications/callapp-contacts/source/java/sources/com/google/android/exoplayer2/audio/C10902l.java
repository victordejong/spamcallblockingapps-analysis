package com.google.android.exoplayer2.audio;

import com.callapp.contacts.model.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C11627t;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.audio.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/l.class */
public final class C10902l {

    /* renamed from: a */
    private static final int[] f35207a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    private static final int[] f35208b = {-1, 8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    private static final int[] f35209c = {64, 112, 128, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 384, 448, 512, 640, 768, 896, 1024, 1152, Constants.SMALL_SIZE_SCREEN, 1536, Constants.BIG_SIZE_SCREEN, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    private C10902l() {
    }

    /* renamed from: a */
    public static int m22013a(ByteBuffer byteBuffer) {
        int i;
        int i2;
        byte b;
        byte b2;
        int position = byteBuffer.position();
        byte b3 = byteBuffer.get(position);
        if (b3 != -2) {
            if (b3 == -1) {
                i = (byteBuffer.get(position + 4) & 7) << 4;
                b2 = byteBuffer.get(position + 7);
            } else if (b3 != 31) {
                i = (byteBuffer.get(position + 4) & 1) << 6;
                b = byteBuffer.get(position + 5);
            } else {
                i = (byteBuffer.get(position + 5) & 7) << 4;
                b2 = byteBuffer.get(position + 6);
            }
            i2 = b2 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (byteBuffer.get(position + 5) & 1) << 6;
        b = byteBuffer.get(position + 4);
        i2 = b & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }

    /* renamed from: a */
    public static int m22012a(byte[] bArr) {
        int i;
        int i2;
        byte b;
        byte b2;
        byte b3 = bArr[0];
        if (b3 != -2) {
            if (b3 == -1) {
                i2 = (bArr[4] & 7) << 4;
                b2 = bArr[7];
            } else if (b3 != 31) {
                i2 = (bArr[4] & 1) << 6;
                b = bArr[5];
            } else {
                i2 = (bArr[5] & 7) << 4;
                b2 = bArr[6];
            }
            i = b2 & 60;
            return (((i >> 2) | i2) + 1) * 32;
        }
        i2 = (bArr[5] & 1) << 6;
        b = bArr[4];
        i = b & 252;
        return (((i >> 2) | i2) + 1) * 32;
    }

    /* renamed from: a */
    public static Format m22011a(byte[] bArr, String str, String str2) {
        C11627t c11627t;
        byte[] bArr2;
        byte[] bArr3;
        int i;
        if (bArr[0] == Byte.MAX_VALUE) {
            c11627t = new C11627t(bArr);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            if (copyOf[0] == -2 || copyOf[0] == -1) {
                for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                    byte b = copyOf[i2];
                    copyOf[i2] = copyOf[i];
                    copyOf[i2 + 1] = b;
                }
            }
            c11627t = new C11627t(copyOf);
            if (copyOf[0] == 31) {
                C11627t c11627t2 = new C11627t(copyOf);
                while (c11627t2.m19827a() >= 16) {
                    c11627t2.m19822b(2);
                    int m19819c = c11627t2.m19819c(14) & 16383;
                    int min = Math.min(8 - c11627t.f38731c, 14);
                    int i3 = (8 - c11627t.f38731c) - min;
                    c11627t.f38729a[c11627t.f38730b] = (byte) (c11627t.f38729a[c11627t.f38730b] & ((65280 >> c11627t.f38731c) | ((1 << i3) - 1)));
                    int i4 = 14 - min;
                    c11627t.f38729a[c11627t.f38730b] = (byte) (((m19819c >>> i4) << i3) | c11627t.f38729a[c11627t.f38730b]);
                    int i5 = c11627t.f38730b + 1;
                    while (i4 > 8) {
                        c11627t.f38729a[i5] = (byte) (m19819c >>> (i4 - 8));
                        i4 -= 8;
                        i5++;
                    }
                    int i6 = 8 - i4;
                    c11627t.f38729a[i5] = (byte) (bArr2[i5] & ((1 << i6) - 1));
                    c11627t.f38729a[i5] = (byte) (((((1 << i4) - 1) & m19819c) << i6) | bArr3[i5]);
                    c11627t.m19822b(14);
                    c11627t.m19813g();
                }
            }
            c11627t.m19824a(copyOf, copyOf.length);
        }
        c11627t.m19822b(60);
        int i7 = f35207a[c11627t.m19819c(6)];
        int i8 = f35208b[c11627t.m19819c(4)];
        int m19819c2 = c11627t.m19819c(5);
        int[] iArr = f35209c;
        int i9 = m19819c2 >= iArr.length ? -1 : (iArr[m19819c2] * 1000) / 2;
        c11627t.m19822b(10);
        int i10 = c11627t.m19819c(2) > 0 ? 1 : 0;
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = str;
        c10828a.f34792k = "audio/vnd.dts";
        c10828a.f34787f = i9;
        c10828a.f34805x = i7 + i10;
        c10828a.f34806y = i8;
        c10828a.f34795n = null;
        c10828a.f34784c = str2;
        return c10828a.m22321a();
    }

    /* renamed from: a */
    public static boolean m22014a(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a7  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m22010b(byte[] r4) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C10902l.m22010b(byte[]):int");
    }
}
