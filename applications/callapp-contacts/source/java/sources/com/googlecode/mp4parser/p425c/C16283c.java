package com.googlecode.mp4parser.p425c;

import java.util.Date;
/* renamed from: com.googlecode.mp4parser.c.c */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/c.class */
public final class C16283c {
    /* renamed from: a */
    public static long m7515a(Date date) {
        return (date.getTime() / 1000) + 2082844800;
    }

    /* renamed from: a */
    public static Date m7516a(long j) {
        return new Date((j - 2082844800) * 1000);
    }
}
