package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C11628u;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/m.class */
public final class C11134m {

    /* renamed from: com.google.android.exoplayer2.extractor.m$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/m$a.class */
    public static final class C11135a {

        /* renamed from: a */
        public long f36474a;
    }

    private C11134m() {
    }

    /* renamed from: a */
    public static int m21420a(C11628u c11628u, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c11628u.m19804c() + 1;
            case 7:
                return c11628u.m19802d() + 1;
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

    /* renamed from: a */
    public static long m21422a(AbstractC11121i abstractC11121i, C11139p c11139p) throws IOException {
        abstractC11121i.mo21406a();
        boolean z = true;
        abstractC11121i.mo21397c(1);
        byte[] bArr = new byte[1];
        abstractC11121i.mo21394d(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z = false;
        }
        abstractC11121i.mo21397c(2);
        int i = z ? 7 : 6;
        C11628u c11628u = new C11628u(i);
        c11628u.m19803c(C11132k.m21425a(abstractC11121i, c11628u.f38733a, 0, i));
        abstractC11121i.mo21406a();
        C11135a c11135a = new C11135a();
        if (m21418a(c11628u, c11139p, z, c11135a)) {
            return c11135a.f36474a;
        }
        throw new ParserException();
    }

    /* renamed from: a */
    public static boolean m21421a(AbstractC11121i abstractC11121i, C11139p c11139p, int i, C11135a c11135a) throws IOException {
        long mo21402b = abstractC11121i.mo21402b();
        byte[] bArr = new byte[2];
        abstractC11121i.mo21394d(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            abstractC11121i.mo21406a();
            abstractC11121i.mo21397c((int) (mo21402b - abstractC11121i.mo21398c()));
            return false;
        }
        C11628u c11628u = new C11628u(16);
        System.arraycopy(bArr, 0, c11628u.f38733a, 0, 2);
        c11628u.m19803c(C11132k.m21425a(abstractC11121i, c11628u.f38733a, 2, 14));
        abstractC11121i.mo21406a();
        abstractC11121i.mo21397c((int) (mo21402b - abstractC11121i.mo21398c()));
        return m21419a(c11628u, c11139p, i, c11135a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0109, code lost:
        if (r0 == r7.f36483f) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0125, code lost:
        if ((r6.m19804c() * 1000) == r0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x014b, code lost:
        if (r8 == r0) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m21419a(com.google.android.exoplayer2.util.C11628u r6, com.google.android.exoplayer2.extractor.C11139p r7, int r8, com.google.android.exoplayer2.extractor.C11134m.C11135a r9) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.C11134m.m21419a(com.google.android.exoplayer2.util.u, com.google.android.exoplayer2.extractor.p, int, com.google.android.exoplayer2.extractor.m$a):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    private static boolean m21418a(C11628u c11628u, C11139p c11139p, boolean z, C11135a c11135a) {
        try {
            char m19781u = c11628u.m19781u();
            if (!z) {
                m19781u *= c11139p.f36479b;
            }
            c11135a.f36474a = m19781u;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
