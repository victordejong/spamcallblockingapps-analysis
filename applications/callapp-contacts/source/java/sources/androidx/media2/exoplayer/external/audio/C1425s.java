package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.util.C2017o;
import com.callapp.contacts.model.Constants;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.audio.s */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/s.class */
public final class C1425s {

    /* renamed from: a */
    private static final int[] f5385a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    private static final int[] f5386b = {-1, 8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    private static final int[] f5387c = {64, 112, 128, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 384, 448, 512, 640, 768, 896, 1024, 1152, Constants.SMALL_SIZE_SCREEN, 1536, Constants.BIG_SIZE_SCREEN, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    private C1425s() {
    }

    /* renamed from: a */
    public static int m42977a(ByteBuffer byteBuffer) {
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
    public static int m42976a(byte[] bArr) {
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
    public static Format m42975a(byte[] bArr, String str, String str2) {
        C2017o c2017o;
        byte[] bArr2;
        byte[] bArr3;
        int i;
        if (bArr[0] == Byte.MAX_VALUE) {
            c2017o = new C2017o(bArr);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            if (copyOf[0] == -2 || copyOf[0] == -1) {
                for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                    byte b = copyOf[i2];
                    copyOf[i2] = copyOf[i];
                    copyOf[i2 + 1] = b;
                }
            }
            c2017o = new C2017o(copyOf);
            if (copyOf[0] == 31) {
                C2017o c2017o2 = new C2017o(copyOf);
                while (c2017o2.m41555a() >= 16) {
                    c2017o2.m41551b(2);
                    int m41548c = c2017o2.m41548c(14) & 16383;
                    int min = Math.min(8 - c2017o.f8129c, 14);
                    int i3 = (8 - c2017o.f8129c) - min;
                    c2017o.f8127a[c2017o.f8128b] = (byte) (c2017o.f8127a[c2017o.f8128b] & ((65280 >> c2017o.f8129c) | ((1 << i3) - 1)));
                    int i4 = 14 - min;
                    c2017o.f8127a[c2017o.f8128b] = (byte) (((m41548c >>> i4) << i3) | c2017o.f8127a[c2017o.f8128b]);
                    int i5 = c2017o.f8128b + 1;
                    while (i4 > 8) {
                        c2017o.f8127a[i5] = (byte) (m41548c >>> (i4 - 8));
                        i4 -= 8;
                        i5++;
                    }
                    int i6 = 8 - i4;
                    c2017o.f8127a[i5] = (byte) (bArr2[i5] & ((1 << i6) - 1));
                    c2017o.f8127a[i5] = (byte) (((((1 << i4) - 1) & m41548c) << i6) | bArr3[i5]);
                    c2017o.m41551b(14);
                    c2017o.m41543g();
                }
            }
            c2017o.m41553a(copyOf, copyOf.length);
        }
        c2017o.m41551b(60);
        int i7 = f5385a[c2017o.m41548c(6)];
        int i8 = f5386b[c2017o.m41548c(4)];
        int m41548c2 = c2017o.m41548c(5);
        int[] iArr = f5387c;
        int i9 = m41548c2 >= iArr.length ? -1 : (iArr[m41548c2] * 1000) / 2;
        c2017o.m41551b(10);
        return Format.createAudioSampleFormat(str, "audio/vnd.dts", null, i9, -1, i7 + (c2017o.m41548c(2) > 0 ? 1 : 0), i8, null, null, 0, str2);
    }

    /* renamed from: a */
    public static boolean m42978a(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a7  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m42974b(byte[] r4) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.C1425s.m42974b(byte[]):int");
    }
}
