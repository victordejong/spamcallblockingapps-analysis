package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.p;
import com.google.android.exoplayer2.extractor.g.h;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.u;
import com.mopub.volley.DefaultRetryPolicy;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/g.class */
final class g extends h {
    private static final byte[] j = {79, 112, 117, 115, 72, 101, 97, 100};
    private boolean k;

    public static boolean a(u uVar) {
        int a2 = uVar.a();
        byte[] bArr = j;
        if (a2 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        uVar.a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    protected final void a(boolean z) {
        super.a(z);
        if (z) {
            this.k = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean a(u uVar, long j2, h.a aVar) {
        boolean z = true;
        if (!this.k) {
            byte[] copyOf = Arrays.copyOf(uVar.f22335a, uVar.f22337c);
            byte b2 = copyOf[9];
            List<byte[]> a2 = p.a(copyOf);
            Format.a aVar2 = new Format.a();
            aVar2.k = "audio/opus";
            aVar2.x = b2 & 255;
            aVar2.y = 48000;
            aVar2.m = a2;
            aVar.f21131a = aVar2.a();
            this.k = true;
            return true;
        }
        a.b(aVar.f21131a);
        if (uVar.j() != 1332770163) {
            z = false;
        }
        uVar.d(0);
        return z;
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    protected final long b(u uVar) {
        int i;
        int i2;
        byte[] bArr = uVar.f22335a;
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
