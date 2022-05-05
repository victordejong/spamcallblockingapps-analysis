package p081h.p203i.p204a.p224e.p259j.p260a;

import android.util.Log;
import androidx.annotation.Nullable;
import com.google.ads.AdRequest;
import kotlinx.coroutines.CoroutineContextKt;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.x1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/x1.class */
public class C7452x1 {
    /* renamed from: a */
    public static void m20574a(String str) {
        if (m20575a(6)) {
            Log.e(AdRequest.LOGTAG, str);
        }
    }

    /* renamed from: a */
    public static void m20573a(String str, Throwable th) {
        m20575a(3);
    }

    /* renamed from: a */
    public static boolean m20575a(int i) {
        return i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i);
    }

    /* renamed from: b */
    public static void m20572b(String str) {
        m20575a(3);
    }

    /* renamed from: b */
    public static void m20571b(String str, Throwable th) {
        if (m20575a(6)) {
            Log.e(AdRequest.LOGTAG, str, th);
        }
    }

    /* renamed from: c */
    public static void m20570c(String str) {
        m20575a(4);
    }

    /* renamed from: c */
    public static void m20569c(String str, Throwable th) {
        m20575a(5);
    }

    /* renamed from: d */
    public static void m20568d(String str) {
        m20575a(5);
    }

    /* renamed from: d */
    public static void m20567d(String str, @Nullable Throwable th) {
        if (!m20575a(5)) {
            return;
        }
        if (th != null) {
            m20569c(m20566e(str), th);
        } else {
            m20568d(m20566e(str));
        }
    }

    /* renamed from: e */
    public static String m20566e(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String str2 = str;
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
            sb.append(str);
            sb.append(CoroutineContextKt.DEBUG_THREAD_NAME_SEPARATOR);
            sb.append(lineNumber);
            str2 = sb.toString();
        }
        return str2;
    }
}
