package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.d.i;
import androidx.media2.exoplayer.external.util.p;
import com.mopub.volley.DefaultRetryPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/h.class */
final class h extends i {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3104a = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: d  reason: collision with root package name */
    private boolean f3105d;

    private static void a(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }

    public static boolean a(p pVar) {
        int b2 = pVar.b();
        byte[] bArr = f3104a;
        if (b2 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        pVar.a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.i
    protected final void a(boolean z) {
        super.a(z);
        if (z) {
            this.f3105d = false;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.i
    protected final boolean a(p pVar, long j, i.a aVar) {
        boolean z = true;
        if (!this.f3105d) {
            byte[] copyOf = Arrays.copyOf(pVar.f4166a, pVar.f4168c);
            byte b2 = copyOf[9];
            byte b3 = copyOf[11];
            byte b4 = copyOf[10];
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(copyOf);
            a(arrayList, ((b3 & 255) << 8) | (b4 & 255));
            a(arrayList, 3840);
            aVar.f3110a = Format.createAudioSampleFormat(null, "audio/opus", null, -1, -1, b2 & 255, 48000, arrayList, null, 0, null);
            this.f3105d = true;
            return true;
        }
        if (pVar.i() != 1332770163) {
            z = false;
        }
        pVar.c(0);
        return z;
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.i
    protected final long b(p pVar) {
        int i;
        int i2;
        byte[] bArr = pVar.f4166a;
        int i3 = bArr[0] & 255;
        int i4 = i3 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1) {
                i = 2;
                if (i4 != 2) {
                    i = bArr[1] & 63;
                }
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return b(i * (i5 >= 16 ? DefaultRetryPolicy.DEFAULT_TIMEOUT_MS << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }
}
