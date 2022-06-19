package com.dropbox.core.util;

import java.util.Date;
/* renamed from: com.dropbox.core.util.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/d.class */
public final class C8636d {
    /* renamed from: a */
    public static int m25224a(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode() + 1;
    }

    /* renamed from: a */
    public static RuntimeException m25222a(String str, Throwable th) {
        RuntimeException runtimeException = new RuntimeException(str + ": " + th.getMessage());
        runtimeException.initCause(th);
        return runtimeException;
    }

    /* renamed from: a */
    public static Date m25221a(Date date) {
        Date date2 = date;
        if (date != null) {
            long time = date.getTime();
            date2 = new Date(time - (time % 1000));
        }
        return date2;
    }

    /* renamed from: a */
    public static <T> boolean m25223a(T t, T t2) {
        if (t == null) {
            return t2 == null;
        } else if (t2 != null) {
            return t.equals(t2);
        } else {
            return false;
        }
    }
}
