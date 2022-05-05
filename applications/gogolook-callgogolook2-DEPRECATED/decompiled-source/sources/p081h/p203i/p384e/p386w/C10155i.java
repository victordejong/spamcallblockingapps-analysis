package p081h.p203i.p384e.p386w;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* renamed from: h.i.e.w.i */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/i.class */
public class C10155i {
    /* renamed from: a */
    public static String m13308a(int i) {
        if (i == 0) {
            return "EEEE, MMMM d, yyyy";
        }
        if (i == 1) {
            return "MMMM d, yyyy";
        }
        if (i == 2) {
            return "MMM d, yyyy";
        }
        if (i == 3) {
            return "M/d/yy";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i);
    }

    /* renamed from: a */
    public static DateFormat m13307a(int i, int i2) {
        return new SimpleDateFormat(m13308a(i) + " " + m13306b(i2), Locale.US);
    }

    /* renamed from: b */
    public static String m13306b(int i) {
        if (i == 0 || i == 1) {
            return "h:mm:ss a z";
        }
        if (i == 2) {
            return "h:mm:ss a";
        }
        if (i == 3) {
            return "h:mm a";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i);
    }
}
