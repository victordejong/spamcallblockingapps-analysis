package p131c.p431l.p432a.p461i;

import android.text.TextUtils;
import java.util.Calendar;
/* renamed from: c.l.a.i.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/c.class */
public class C6823c {
    /* renamed from: a */
    public static long m19678a(String str) {
        long j;
        if (str == null || TextUtils.isEmpty(str) || str.length() < 16) {
            j = 0;
        } else {
            int parseInt = Integer.parseInt(str.substring(0, 4));
            int parseInt2 = Integer.parseInt(str.substring(5, 7));
            int parseInt3 = Integer.parseInt(str.substring(8, 10));
            int parseInt4 = Integer.parseInt(str.substring(11, 13));
            int parseInt5 = Integer.parseInt(str.substring(14, 16));
            Calendar instance = Calendar.getInstance();
            instance.set(parseInt, parseInt2 - 1, parseInt3, parseInt4, parseInt5);
            j = instance.getTimeInMillis();
        }
        return j;
    }

    /* renamed from: a */
    public static String m19677a(String str, int i) {
        if (str == null || i <= 0) {
            return null;
        }
        return str.length() <= i ? str : str.substring(str.length() - i, str.length());
    }

    /* renamed from: b */
    public static boolean m19676b(String str) {
        boolean z = false;
        if (str.length() != 0) {
            int length = str.length() - 1;
            while (true) {
                if (length < 0) {
                    z = true;
                    break;
                } else if (!Character.isDigit(str.charAt(length))) {
                    break;
                } else {
                    length--;
                }
            }
        }
        return z;
    }
}
