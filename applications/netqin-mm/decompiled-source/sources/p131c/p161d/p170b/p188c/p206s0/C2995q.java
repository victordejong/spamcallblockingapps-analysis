package p131c.p161d.p170b.p188c.p206s0;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.nio.ByteBuffer;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
/* renamed from: c.d.b.c.s0.q */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/q.class */
public final class C2995q {

    /* renamed from: a */
    public static final int[] f10788a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    public static final int[] f10789b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    public static final int[] f10790c = {64, 112, 128, 192, 224, 256, 384, 448, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, RecyclerView.AbstractC0495b0.FLAG_MOVED, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: a */
    public static int m28242a(ByteBuffer byteBuffer) {
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

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m28241a(byte[] r4) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p206s0.C2995q.m28241a(byte[]):int");
    }

    /* renamed from: a */
    public static Format m28240a(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        C2903u b = m28239b(bArr);
        b.m28556c(60);
        int i = f10788a[b.m28565a(6)];
        int i2 = f10789b[b.m28565a(4)];
        int a = b.m28565a(5);
        int[] iArr = f10790c;
        int i3 = a >= iArr.length ? -1 : (iArr[a] * 1000) / 2;
        b.m28556c(10);
        return Format.m18698a(str, "audio/vnd.dts", null, i3, -1, i + (b.m28565a(2) > 0 ? 1 : 0), i2, null, drmInitData, 0, str2);
    }

    /* renamed from: a */
    public static boolean m28243a(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    /* renamed from: b */
    public static C2903u m28239b(byte[] bArr) {
        if (bArr[0] == Byte.MAX_VALUE) {
            return new C2903u(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (m28238c(copyOf)) {
            for (int i = 0; i < copyOf.length - 1; i += 2) {
                byte b = copyOf[i];
                int i2 = i + 1;
                copyOf[i] = copyOf[i2];
                copyOf[i2] = b;
            }
        }
        C2903u uVar = new C2903u(copyOf);
        if (copyOf[0] == 31) {
            C2903u uVar2 = new C2903u(copyOf);
            while (uVar2.m28559b() >= 16) {
                uVar2.m28556c(2);
                uVar.m28564a(uVar2.m28565a(14), 14);
            }
        }
        uVar.m28562a(copyOf);
        return uVar;
    }

    /* renamed from: c */
    public static boolean m28238c(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == -2 || bArr[0] == -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public static int m28237d(byte[] bArr) {
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
}
