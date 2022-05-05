package p081h.p203i.p204a.p224e.p259j.p271l;

import gogolook.callgogolook2.gson.UserProfile;
import java.util.logging.Level;
import java.util.logging.Logger;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.a.e.j.l.e1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/e1.class */
public final class C8074e1 {
    /* renamed from: a */
    public static String m18604a(Object obj) {
        if (obj == null) {
            return C14247d.f31851f;
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
            sb.append(name);
            sb.append('@');
            sb.append(hexString);
            String sb2 = sb.toString();
            Logger logger = Logger.getLogger("com.google.common.base.Strings");
            Level level = Level.WARNING;
            String valueOf = String.valueOf(sb2);
            logger.logp(level, "com.google.common.base.Strings", "lenientToString", valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
            String name2 = e.getClass().getName();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 9 + String.valueOf(name2).length());
            sb3.append("<");
            sb3.append(sb2);
            sb3.append(" threw ");
            sb3.append(name2);
            sb3.append(">");
            return sb3.toString();
        }
    }

    /* renamed from: a */
    public static String m18603a(String str, Object... objArr) {
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
                objArr[i2] = m18604a(objArr[i2]);
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
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                sb.append(objArr2[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
