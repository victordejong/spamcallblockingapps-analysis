package com.googlecode.mp4parser.c;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/b.class */
public final class b {
    public static int a(long j) {
        if (j <= 2147483647L && j >= -2147483648L) {
            return (int) j;
        }
        throw new RuntimeException("A cast to int has gone wrong. Please contact the mp4parser discussion group (" + j + ")");
    }
}
