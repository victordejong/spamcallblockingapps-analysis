package p081h.p082a.p083a;

import androidx.annotation.RestrictTo;
import androidx.core.p005os.TraceCompat;
import androidx.media2.session.MediaSessionImplBase;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: h.a.a.d */
/* loaded from: classes-dex2jar.jar:h/a/a/d.class */
public class C5340d {

    /* renamed from: a */
    public static boolean f13325a = false;

    /* renamed from: b */
    public static String[] f13326b;

    /* renamed from: c */
    public static long[] f13327c;

    /* renamed from: d */
    public static int f13328d;

    /* renamed from: e */
    public static int f13329e;

    /* renamed from: a */
    public static void m25653a(String str) {
        if (f13325a) {
            int i = f13328d;
            if (i == 20) {
                f13329e++;
                return;
            }
            f13326b[i] = str;
            f13327c[i] = System.nanoTime();
            TraceCompat.beginSection(str);
            f13328d++;
        }
    }

    /* renamed from: b */
    public static float m25652b(String str) {
        int i = f13329e;
        if (i > 0) {
            f13329e = i - 1;
            return 0.0f;
        } else if (!f13325a) {
            return 0.0f;
        } else {
            f13328d--;
            int i2 = f13328d;
            if (i2 == -1) {
                throw new IllegalStateException("Can't end trace section. There are none.");
            } else if (str.equals(f13326b[i2])) {
                TraceCompat.endSection();
                return ((float) (System.nanoTime() - f13327c[f13328d])) / 1000000.0f;
            } else {
                throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f13326b[f13328d] + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            }
        }
    }
}
