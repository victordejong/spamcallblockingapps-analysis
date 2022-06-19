package com.google.api.client.http;
/* renamed from: com.google.api.client.http.v */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/v.class */
public class C8660v {
    /* renamed from: a */
    public static boolean m3056a(int i) {
        if (i == 307 || i == 308) {
            return true;
        }
        switch (i) {
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: b */
    public static boolean m3055b(int i) {
        return i >= 200 && i < 300;
    }
}
