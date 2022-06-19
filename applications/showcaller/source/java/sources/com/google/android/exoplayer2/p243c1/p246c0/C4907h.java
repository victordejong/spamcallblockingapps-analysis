package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.c1.c0.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/h.class */
public final class C4907h extends AbstractC4908i {

    /* renamed from: n */
    private static final byte[] f15065n = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: o */
    private boolean f15066o;

    /* renamed from: l */
    private long m21225l(byte[] bArr) {
        int i;
        int i2;
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
        return i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2);
    }

    /* renamed from: m */
    private void m21224m(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }

    /* renamed from: n */
    public static boolean m21223n(C5536v c5536v) {
        int m18678a = c5536v.m18678a();
        byte[] bArr = f15065n;
        if (m18678a < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        c5536v.m18671h(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: e */
    protected long mo21211e(C5536v c5536v) {
        return m21221b(m21225l(c5536v.f17941a));
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: h */
    protected boolean mo21210h(C5536v c5536v, long j, AbstractC4908i.C4910b c4910b) {
        boolean z = true;
        if (this.f15066o) {
            if (c5536v.m18668k() != 1332770163) {
                z = false;
            }
            c5536v.m18680M(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(c5536v.f17941a, c5536v.m18675d());
        byte b = copyOf[9];
        byte b2 = copyOf[11];
        byte b3 = copyOf[10];
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(copyOf);
        m21224m(arrayList, ((b2 & 255) << 8) | (b3 & 255));
        m21224m(arrayList, 3840);
        c4910b.f15080a = Format.m21740o(null, "audio/opus", null, -1, -1, b & 255, 48000, arrayList, null, 0, null);
        this.f15066o = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: j */
    public void mo21209j(boolean z) {
        super.mo21209j(z);
        if (z) {
            this.f15066o = false;
        }
    }
}
