package com.google.common.primitives;

import java.util.Comparator;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/SignedBytes.class */
public final class SignedBytes {

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/SignedBytes$LexicographicalComparator.class */
    public enum LexicographicalComparator implements Comparator<byte[]> {
        INSTANCE;

        public int compare(byte[] bArr, byte[] bArr2) {
            int min = Math.min(bArr.length, bArr2.length);
            for (int i = 0; i < min; i++) {
                int a = SignedBytes.m7790a(bArr[i], bArr2[i]);
                if (a != 0) {
                    return a;
                }
            }
            return bArr.length - bArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }
    }

    /* renamed from: a */
    public static byte m7789a(long j) {
        byte b = (byte) j;
        C4933n.m24785a(((long) b) == j, "Out of range: %s", j);
        return b;
    }

    /* renamed from: a */
    public static int m7790a(byte b, byte b2) {
        return b - b2;
    }
}
