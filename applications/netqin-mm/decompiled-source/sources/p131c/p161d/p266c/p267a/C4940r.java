package p131c.p161d.p266c.p267a;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.d.c.a.r */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/r.class */
public final class C4940r {
    /* renamed from: a */
    public static String m24756a(Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Exception e) {
            String str = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
            Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str, (Throwable) e);
            return "<" + str + " threw " + e.getClass().getName() + ">";
        }
    }

    /* renamed from: a */
    public static String m24754a(String str, Object... objArr) {
        Object[] objArr2;
        int indexOf;
        String valueOf = String.valueOf(str);
        int i = 0;
        if (objArr != null) {
            int i2 = 0;
            while (true) {
                objArr2 = objArr;
                if (i2 >= objArr.length) {
                    break;
                }
                objArr[i2] = m24756a(objArr[i2]);
                i2++;
            }
        } else {
            objArr2 = new Object[]{"(Object[])null"};
        }
        StringBuilder sb = new StringBuilder(valueOf.length() + (objArr2.length * 16));
        int i3 = 0;
        while (i < objArr2.length && (indexOf = valueOf.indexOf("%s", i3)) != -1) {
            sb.append((CharSequence) valueOf, i3, indexOf);
            sb.append(objArr2[i]);
            i3 = indexOf + 2;
            i++;
        }
        sb.append((CharSequence) valueOf, i3, valueOf.length());
        if (i < objArr2.length) {
            sb.append(" [");
            sb.append(objArr2[i]);
            for (int i4 = i + 1; i4 < objArr2.length; i4++) {
                sb.append(", ");
                sb.append(objArr2[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static boolean m24755a(String str) {
        return C4930m.m24802b(str);
    }
}
