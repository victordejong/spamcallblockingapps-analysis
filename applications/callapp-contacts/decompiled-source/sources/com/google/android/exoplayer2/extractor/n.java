package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.p;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/n.class */
public final class n {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public p f21310a;

        public a(p pVar) {
            this.f21310a = pVar;
        }
    }

    private n() {
    }

    public static p.a a(u uVar) {
        long[] jArr;
        long[] jArr2;
        uVar.e(1);
        int g = uVar.g();
        long j = uVar.f22336b;
        long j2 = g;
        int i = g / 18;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        int i2 = 0;
        while (true) {
            jArr = jArr3;
            jArr2 = jArr4;
            if (i2 >= i) {
                break;
            }
            long l = uVar.l();
            if (l == -1) {
                jArr = Arrays.copyOf(jArr3, i2);
                jArr2 = Arrays.copyOf(jArr4, i2);
                break;
            }
            jArr3[i2] = l;
            jArr4[i2] = uVar.l();
            uVar.e(2);
            i2++;
        }
        uVar.e((int) ((j + j2) - uVar.f22336b));
        return new p.a(jArr, jArr2);
    }

    public static Metadata a(i iVar, boolean z) throws IOException {
        Metadata a2 = new s().a(iVar, z ? null : com.google.android.exoplayer2.metadata.id3.a.f21446a);
        if (a2 == null || a2.length() == 0) {
            return null;
        }
        return a2;
    }
}
