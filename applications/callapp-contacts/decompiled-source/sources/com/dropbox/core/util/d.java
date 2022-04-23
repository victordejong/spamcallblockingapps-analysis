package com.dropbox.core.util;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/d.class */
public final class d {
    public static int a(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode() + 1;
    }

    public static RuntimeException a(String str, Throwable th) {
        RuntimeException runtimeException = new RuntimeException(str + ": " + th.getMessage());
        runtimeException.initCause(th);
        return runtimeException;
    }

    public static Date a(Date date) {
        Date date2 = date;
        if (date != null) {
            long time = date.getTime();
            date2 = new Date(time - (time % 1000));
        }
        return date2;
    }

    public static <T> boolean a(T t, T t2) {
        if (t == null) {
            return t2 == null;
        }
        if (t2 == null) {
            return false;
        }
        return t.equals(t2);
    }
}
