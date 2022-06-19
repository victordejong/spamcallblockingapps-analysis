package com.zhy.http.okhttp.utils;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/utils/Exceptions.class */
public class Exceptions {
    public static void illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }
}
