package com.squareup.okhttp.internal.http;

import com.zhy.http.okhttp.OkHttpUtils;
/* renamed from: com.squareup.okhttp.internal.http.h */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/h.class */
public final class C2932h {
    /* renamed from: a */
    public static boolean m951a(String str) {
        return str.equals("POST") || str.equals(OkHttpUtils.METHOD.PATCH) || str.equals(OkHttpUtils.METHOD.PUT) || str.equals(OkHttpUtils.METHOD.DELETE);
    }

    /* renamed from: b */
    public static boolean m950b(String str) {
        return m949c(str) || str.equals(OkHttpUtils.METHOD.DELETE);
    }

    /* renamed from: c */
    public static boolean m949c(String str) {
        return str.equals("POST") || str.equals(OkHttpUtils.METHOD.PUT) || str.equals(OkHttpUtils.METHOD.PATCH);
    }
}
