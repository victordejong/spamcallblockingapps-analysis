package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.util.o;
import com.callapp.contacts.model.Constants;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f2919a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2920b = {-1, 8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f2921c = {64, 112, 128, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 384, 448, 512, 640, 768, 896, 1024, 1152, Constants.SMALL_SIZE_SCREEN, 1536, Constants.BIG_SIZE_SCREEN, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    private s() {
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
        o oVar;
        byte[] bArr2;
        byte[] bArr3;
        int i;
        if (bArr[0] == Byte.MAX_VALUE) {
            oVar = new o(bArr);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            if (copyOf[0] == -2 || copyOf[0] == -1) {
                for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                    byte b2 = copyOf[i2];
                    copyOf[i2] = copyOf[i];
                    copyOf[i2 + 1] = b2;
                }
            }
            oVar = new o(copyOf);
            if (copyOf[0] == 31) {
                o oVar2 = new o(copyOf);
                while (oVar2.a() >= 16) {
                    oVar2.b(2);
                    int c2 = oVar2.c(14) & 16383;
                    int min = Math.min(8 - oVar.f4164c, 14);
                    int i3 = (8 - oVar.f4164c) - min;
                    oVar.f4162a[oVar.f4163b] = (byte) (oVar.f4162a[oVar.f4163b] & ((65280 >> oVar.f4164c) | ((1 << i3) - 1)));
                    int i4 = 14 - min;
                    oVar.f4162a[oVar.f4163b] = (byte) (((c2 >>> i4) << i3) | oVar.f4162a[oVar.f4163b]);
                    int i5 = oVar.f4163b + 1;
                    while (i4 > 8) {
                        oVar.f4162a[i5] = (byte) (c2 >>> (i4 - 8));
                        i4 -= 8;
                        i5++;
                    }
                    int i6 = 8 - i4;
                    oVar.f4162a[i5] = (byte) (bArr2[i5] & ((1 << i6) - 1));
                    oVar.f4162a[i5] = (byte) (((((1 << i4) - 1) & c2) << i6) | bArr3[i5]);
                    oVar.b(14);
                    oVar.g();
                }
            }
            oVar.a(copyOf, copyOf.length);
        }
        oVar.b(60);
        int i7 = f2919a[oVar.c(6)];
        int i8 = f2920b[oVar.c(4)];
        int c3 = oVar.c(5);
        int[] iArr = f2921c;
        int i9 = c3 >= iArr.length ? -1 : (iArr[c3] * 1000) / 2;
        oVar.b(10);
        return Format.createAudioSampleFormat(str, "audio/vnd.dts", null, i9, -1, i7 + (oVar.c(2) > 0 ? 1 : 0), i8, null, null, 0, str2);
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.s.b(byte[]):int");
    }
}
