package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import java.lang.reflect.Method;
/* renamed from: com.freshchat.consumer.sdk.j.ao */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ao.class */
public class C1621ao {
    /* renamed from: ay */
    public static Class m40250ay(String str) {
        if (C1626as.isEmpty(str)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: c */
    public static Method m40249c(Class cls, String str) {
        Method method;
        if (cls == null) {
            return null;
        }
        try {
            method = cls.getMethod(str, new Class[0]);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: u */
    public static Class m40248u(Context context, String str) {
        Class<?> cls = null;
        if (C1626as.isEmpty(str)) {
            return null;
        }
        try {
            cls = Class.forName(str);
        } catch (Exception e) {
        }
        return cls;
    }
}
