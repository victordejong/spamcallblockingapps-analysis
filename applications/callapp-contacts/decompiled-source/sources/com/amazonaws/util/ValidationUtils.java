package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/ValidationUtils.class */
public class ValidationUtils {
    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }
}
