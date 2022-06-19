package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C10909p;
import com.google.android.exoplayer2.extractor.p333g.AbstractC11065h;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import com.mopub.volley.DefaultRetryPolicy;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* renamed from: com.google.android.exoplayer2.extractor.g.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/g.class */
final class C11064g extends AbstractC11065h {

    /* renamed from: j */
    private static final byte[] f36041j = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: k */
    private boolean f36042k;

    /* renamed from: a */
    public static boolean m21562a(C11628u c11628u) {
        int m19812a = c11628u.m19812a();
        byte[] bArr = f36041j;
        if (m19812a < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        c11628u.m19807a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    /* renamed from: a */
    public final void mo21550a(boolean z) {
        super.mo21550a(z);
        if (z) {
            this.f36042k = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: a */
    protected final boolean mo21551a(C11628u c11628u, long j, AbstractC11065h.C11067a c11067a) {
        boolean z = true;
        if (this.f36042k) {
            C11593a.m20020b(c11067a.f36056a);
            if (c11628u.m19792j() != 1332770163) {
                z = false;
            }
            c11628u.m19801d(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(c11628u.f38733a, c11628u.f38735c);
        byte b = copyOf[9];
        List<byte[]> m21982a = C10909p.m21982a(copyOf);
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = "audio/opus";
        c10828a.f34805x = b & 255;
        c10828a.f34806y = 48000;
        c10828a.f34794m = m21982a;
        c11067a.f36056a = c10828a.m22321a();
        this.f36042k = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    /* renamed from: b */
    protected final long mo21549b(C11628u c11628u) {
        int i;
        int i2;
        byte[] bArr = c11628u.f38733a;
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
        return m21556b(i * (i5 >= 16 ? DefaultRetryPolicy.DEFAULT_TIMEOUT_MS << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }
}
