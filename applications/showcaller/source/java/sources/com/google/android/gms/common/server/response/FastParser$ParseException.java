package com.google.android.gms.common.server.response;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$ParseException.class */
public class FastParser$ParseException extends Exception {
    public FastParser$ParseException(@RecentlyNonNull String str) {
        super(str);
    }

    public FastParser$ParseException(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
        super("Error instantiating inner object", th);
    }

    public FastParser$ParseException(@RecentlyNonNull Throwable th) {
        super(th);
    }
}
