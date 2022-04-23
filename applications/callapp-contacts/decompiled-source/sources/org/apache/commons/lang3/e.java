package org.apache.commons.lang3;

import java.io.Serializable;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f39176a = new a();

    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/e$a.class */
    public static final class a implements Serializable {
        a() {
        }

        private Object readResolve() {
            return e.f39176a;
        }
    }

    public static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        StringBuilder sb = new StringBuilder(name.length() + 1 + hexString.length());
        sb.append(name);
        sb.append('@');
        sb.append(hexString);
        return sb.toString();
    }

    public static void a(StringBuffer stringBuffer, Object obj) {
        h.a(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        stringBuffer.ensureCapacity(stringBuffer.length() + name.length() + 1 + hexString.length());
        stringBuffer.append(name);
        stringBuffer.append('@');
        stringBuffer.append(hexString);
    }

    public static boolean a(Object... objArr) {
        for (int i = 0; i < 3; i++) {
            if (objArr[i] == null) {
                return false;
            }
        }
        return true;
    }
}
