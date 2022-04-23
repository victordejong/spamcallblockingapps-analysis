package io.reactivex.internal.util;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/Pow2.class */
public final class Pow2 {
    private Pow2() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static int m3413a(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }
}
