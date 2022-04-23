package com.googlecode.mp4parser.c;

import java.util.Date;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/c.class */
public final class c {
    public static long a(Date date) {
        return (date.getTime() / 1000) + 2082844800;
    }

    public static Date a(long j) {
        return new Date((j - 2082844800) * 1000);
    }
}
