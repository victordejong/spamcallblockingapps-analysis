package com.google.common.primitives;

import java.util.Comparator;
import p131c.p161d.p266c.p273g.C5069b;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator.class */
public enum UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator implements Comparator<byte[]> {
    INSTANCE;

    public int compare(byte[] bArr, byte[] bArr2) {
        int min = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i < min; i++) {
            int a = C5069b.m24559a(bArr[i], bArr2[i]);
            if (a != 0) {
                return a;
            }
        }
        return bArr.length - bArr2.length;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
    }
}
