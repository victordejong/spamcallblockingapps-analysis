package com.google.android.exoplayer2.extractor;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/k.class */
final class k {
    private k() {
    }

    public static int a(i iVar, byte[] bArr, int i, int i2) throws IOException {
        int c2;
        int i3 = 0;
        while (i3 < i2 && (c2 = iVar.c(bArr, i + i3, i2 - i3)) != -1) {
            i3 += c2;
        }
        return i3;
    }
}
