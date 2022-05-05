package p081h.p203i.p316b.p317a;

import gogolook.callgogolook2.gson.UserProfile;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: h.i.b.a.o */
/* loaded from: classes2-dex2jar.jar:h/i/b/a/o.class */
public final class C9306o {
    /* renamed from: a */
    public static String m15455a(Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Exception e) {
            String str = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
            Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str, (Throwable) e);
            return "<" + str + " threw " + e.getClass().getName() + ">";
        }
    }

    /* renamed from: a */
    public static String m15454a(String str, Object... objArr) {
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
                objArr[i2] = m15455a(objArr[i2]);
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
