package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i;
import androidx.media2.exoplayer.external.util.C2018p;
import com.mopub.volley.DefaultRetryPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.extractor.d.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/h.class */
public final class C1523h extends AbstractC1524i {

    /* renamed from: a */
    private static final byte[] f5868a = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: d */
    private boolean f5869d;

    /* renamed from: a */
    private static void m42755a(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }

    /* renamed from: a */
    public static boolean m42756a(C2018p c2018p) {
        int m41536b = c2018p.m41536b();
        byte[] bArr = f5868a;
        if (m41536b < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        c2018p.m41537a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: a */
    public final void mo42739a(boolean z) {
        super.mo42739a(z);
        if (z) {
            this.f5869d = false;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: a */
    protected final boolean mo42740a(C2018p c2018p, long j, AbstractC1524i.C1526a c1526a) {
        boolean z = true;
        if (this.f5869d) {
            if (c2018p.m41524i() != 1332770163) {
                z = false;
            }
            c2018p.m41533c(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(c2018p.f8131a, c2018p.f8133c);
        byte b = copyOf[9];
        byte b2 = copyOf[11];
        byte b3 = copyOf[10];
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(copyOf);
        m42755a(arrayList, ((b2 & 255) << 8) | (b3 & 255));
        m42755a(arrayList, 3840);
        c1526a.f5883a = Format.createAudioSampleFormat(null, "audio/opus", null, -1, -1, b & 255, 48000, arrayList, null, 0, null);
        this.f5869d = true;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: b */
    protected final long mo42738b(C2018p c2018p) {
        int i;
        int i2;
        byte[] bArr = c2018p.f8131a;
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
        return m42749b(i * (i5 >= 16 ? DefaultRetryPolicy.DEFAULT_TIMEOUT_MS << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }
}
