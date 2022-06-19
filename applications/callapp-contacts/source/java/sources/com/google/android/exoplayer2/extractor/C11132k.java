package com.google.android.exoplayer2.extractor;

import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/k.class */
final class C11132k {
    private C11132k() {
    }

    /* renamed from: a */
    public static int m21425a(AbstractC11121i abstractC11121i, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int mo21396c;
        int i4 = 0;
        while (true) {
            i3 = i4;
            if (i3 >= i2 || (mo21396c = abstractC11121i.mo21396c(bArr, i + i3, i2 - i3)) == -1) {
                break;
            }
            i4 = i3 + mo21396c;
        }
        return i3;
    }
}
