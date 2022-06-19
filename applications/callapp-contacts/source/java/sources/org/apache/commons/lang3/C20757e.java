package org.apache.commons.lang3;

import java.io.Serializable;
/* renamed from: org.apache.commons.lang3.e */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/e.class */
public final class C20757e {

    /* renamed from: a */
    public static final C20758a f67254a = new C20758a();

    /* renamed from: org.apache.commons.lang3.e$a */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/e$a.class */
    public static final class C20758a implements Serializable {
        C20758a() {
        }

        private Object readResolve() {
            return C20757e.f67254a;
        }
    }

    /* renamed from: a */
    public static String m523a(Object obj) {
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

    /* renamed from: a */
    public static void m522a(StringBuffer stringBuffer, Object obj) {
        C20766h.m514a(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        stringBuffer.ensureCapacity(stringBuffer.length() + name.length() + 1 + hexString.length());
        stringBuffer.append(name);
        stringBuffer.append('@');
        stringBuffer.append(hexString);
    }

    /* renamed from: a */
    public static boolean m521a(Object... objArr) {
        for (int i = 0; i < 3; i++) {
            if (objArr[i] == null) {
                return false;
            }
        }
        return true;
    }
}
