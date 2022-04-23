package com.callapp.common.util;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Objects.class */
public class Objects {
    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
