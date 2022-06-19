package com.appnext.base.moments.p014b;

import java.util.Calendar;
import java.util.Date;
/* renamed from: com.appnext.base.moments.b.d */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/b/d.class */
public final class C0493d {
    /* renamed from: a */
    public static Date m42521a(long j) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            return calendar.getTime();
        } catch (Throwable th) {
            return new Date();
        }
    }
}
