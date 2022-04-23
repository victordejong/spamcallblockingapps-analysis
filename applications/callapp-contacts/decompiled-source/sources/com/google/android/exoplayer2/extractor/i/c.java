package com.google.android.exoplayer2.extractor.i;

import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/c.class */
final class c {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/c$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21301a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21302b;

        private a(int i, long j) {
            this.f21301a = i;
            this.f21302b = j;
        }

        public static a a(i iVar, u uVar) throws IOException {
            iVar.d(uVar.f22335a, 0, 8);
            uVar.d(0);
            return new a(uVar.j(), uVar.i());
        }
    }

    private c() {
    }

    public static b a(i iVar) throws IOException {
        a a2;
        byte[] bArr;
        com.google.android.exoplayer2.util.a.b(iVar);
        u uVar = new u(16);
        if (a.a(iVar, uVar).f21301a != 1380533830) {
            return null;
        }
        iVar.d(uVar.f22335a, 0, 4);
        uVar.d(0);
        int j = uVar.j();
        if (j != 1463899717) {
            n.b("WavHeaderReader", "Unsupported RIFF format: ".concat(String.valueOf(j)));
            return null;
        }
        while (true) {
            a2 = a.a(iVar, uVar);
            if (a2.f21301a == 1718449184) {
                break;
            }
            iVar.c((int) a2.f21302b);
        }
        com.google.android.exoplayer2.util.a.b(a2.f21302b >= 16);
        iVar.d(uVar.f22335a, 0, 16);
        uVar.d(0);
        int e = uVar.e();
        int e2 = uVar.e();
        int p = uVar.p();
        int p2 = uVar.p();
        int e3 = uVar.e();
        int e4 = uVar.e();
        int i = ((int) a2.f21302b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            iVar.d(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = af.f;
        }
        return new b(e, e2, p, p2, e3, e4, bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Long, java.lang.Long> b(com.google.android.exoplayer2.extractor.i r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.i.c.b(com.google.android.exoplayer2.extractor.i):android.util.Pair");
    }
}
