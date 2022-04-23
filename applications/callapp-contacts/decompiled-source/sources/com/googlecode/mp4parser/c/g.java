package com.googlecode.mp4parser.c;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/g.class */
public final class g {
    public static long a(long j, long j2) {
        return j * (j2 / b(j, j2));
    }

    private static long b(long j, long j2) {
        while (j2 > 0) {
            j2 %= j2;
        }
        return j2;
    }
}
