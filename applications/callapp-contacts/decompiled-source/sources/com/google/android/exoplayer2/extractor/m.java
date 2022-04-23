package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.u;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/m.class */
public final class m {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/m$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f21309a;
    }

    private m() {
    }

    public static int a(u uVar, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return uVar.c() + 1;
            case 7:
                return uVar.d() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return PropertyFlags.INDEX_PARTIAL_SKIP_NULL << (i - 8);
            default:
                return -1;
        }
    }

    public static long a(i iVar, p pVar) throws IOException {
        iVar.a();
        boolean z = true;
        iVar.c(1);
        byte[] bArr = new byte[1];
        iVar.d(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z = false;
        }
        iVar.c(2);
        int i = z ? 7 : 6;
        u uVar = new u(i);
        uVar.c(k.a(iVar, uVar.f22335a, 0, i));
        iVar.a();
        a aVar = new a();
        if (a(uVar, pVar, z, aVar)) {
            return aVar.f21309a;
        }
        throw new ParserException();
    }

    public static boolean a(i iVar, p pVar, int i, a aVar) throws IOException {
        long b2 = iVar.b();
        byte[] bArr = new byte[2];
        iVar.d(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            iVar.a();
            iVar.c((int) (b2 - iVar.c()));
            return false;
        }
        u uVar = new u(16);
        System.arraycopy(bArr, 0, uVar.f22335a, 0, 2);
        uVar.c(k.a(iVar, uVar.f22335a, 2, 14));
        iVar.a();
        iVar.c((int) (b2 - iVar.c()));
        return a(uVar, pVar, i, aVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0109, code lost:
        if (r0 == r7.f) goto L_0x00f7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0125, code lost:
        if ((r6.c() * 1000) == r0) goto L_0x00f7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x014b, code lost:
        if (r8 == r0) goto L_0x00f7;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.google.android.exoplayer2.util.u r6, com.google.android.exoplayer2.extractor.p r7, int r8, com.google.android.exoplayer2.extractor.m.a r9) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.m.a(com.google.android.exoplayer2.util.u, com.google.android.exoplayer2.extractor.p, int, com.google.android.exoplayer2.extractor.m$a):boolean");
    }

    private static boolean a(u uVar, p pVar, boolean z, a aVar) {
        try {
            long u = uVar.u();
            if (!z) {
                u *= pVar.f21314b;
            }
            aVar.f21309a = u;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
