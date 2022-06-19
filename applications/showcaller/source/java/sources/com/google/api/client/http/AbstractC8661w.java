package com.google.api.client.http;

import com.zhy.http.okhttp.OkHttpUtils;
import java.util.Arrays;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.http.w */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/w.class */
public abstract class AbstractC8661w {

    /* renamed from: a */
    static final Logger f38421a = Logger.getLogger(AbstractC8661w.class.getName());

    /* renamed from: b */
    private static final String[] f38422b;

    static {
        String[] strArr = {OkHttpUtils.METHOD.DELETE, "GET", "POST", OkHttpUtils.METHOD.PUT};
        f38422b = strArr;
        Arrays.sort(strArr);
    }

    /* renamed from: a */
    public C8655q m3054a() {
        return new C8655q(this, null);
    }

    /* renamed from: b */
    public abstract AbstractC8664z mo3053b(String str, String str2);

    /* renamed from: c */
    public final C8656r m3052c() {
        return m3051d(null);
    }

    /* renamed from: d */
    public final C8656r m3051d(AbstractC8657s abstractC8657s) {
        return new C8656r(this, abstractC8657s);
    }

    /* renamed from: e */
    public boolean mo3050e(String str) {
        return Arrays.binarySearch(f38422b, str) >= 0;
    }
}
