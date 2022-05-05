package p459j.p460a.p474c0.p499h;

import android.util.Log;
import java.io.PrintWriter;
/* renamed from: j.a.c0.h.d0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/d0.class */
public class C12153d0 {

    /* renamed from: a */
    public static AbstractC12147c0 f27296a;

    /* renamed from: b */
    public static volatile boolean f27297b;

    /* renamed from: j.a.c0.h.d0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/d0$a.class */
    public static final class RunnableC12154a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12170i f27298a;

        public RunnableC12154a(AbstractC12170i iVar) {
            this.f27298a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C12153d0.m6988b(this.f27298a);
        }
    }

    /* renamed from: a */
    public static String m6993a(String str) {
        if (str == null) {
            return null;
        }
        if (Log.isLoggable("MessagingApp", 3)) {
            return str;
        }
        return "Redacted-" + str.length();
    }

    /* renamed from: a */
    public static void m6996a(int i, String str, String str2) {
        Log.println(i, str, str2);
        AbstractC12147c0 c0Var = f27296a;
        if (c0Var != null && i >= 3) {
            c0Var.mo7016a(i, str, str2);
        }
    }

    /* renamed from: a */
    public static void m6995a(AbstractC12170i iVar) {
        iVar.mo6922a(new RunnableC12154a(iVar));
        m6988b(iVar);
    }

    /* renamed from: a */
    public static void m6994a(PrintWriter printWriter) {
        AbstractC12147c0 c0Var = f27296a;
        if (c0Var != null) {
            c0Var.mo7015a(printWriter);
        }
    }

    /* renamed from: a */
    public static void m6991a(String str, String str2) {
        m6996a(3, str, str2);
    }

    /* renamed from: a */
    public static void m6990a(String str, String str2, Throwable th) {
        m6996a(3, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    /* renamed from: a */
    public static boolean m6992a(String str, int i) {
        return Log.isLoggable(str, i);
    }

    /* renamed from: b */
    public static void m6989b(int i, String str, String str2) {
        AbstractC12147c0 c0Var = f27296a;
        if (c0Var != null) {
            c0Var.mo7016a(i, str, str2);
        }
    }

    /* renamed from: b */
    public static void m6988b(AbstractC12170i iVar) {
        AbstractC12147c0 c0Var;
        iVar.mo6916a("bugle_logsaver", false);
        f27297b = false;
        if (f27297b && ((c0Var = f27296a) == null || !c0Var.mo7017a())) {
            f27296a = AbstractC12147c0.m7019b();
        } else if (!f27297b && f27296a != null) {
            f27296a = null;
        }
    }

    /* renamed from: b */
    public static void m6987b(String str, String str2) {
        m6996a(6, str, str2);
    }

    /* renamed from: b */
    public static void m6986b(String str, String str2, Throwable th) {
        m6996a(6, str, str2);
        m6996a(6, str, Log.getStackTraceString(th));
    }

    /* renamed from: c */
    public static void m6985c(String str, String str2) {
        m6996a(4, str, str2);
    }

    /* renamed from: c */
    public static void m6984c(String str, String str2, Throwable th) {
        m6996a(4, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    /* renamed from: d */
    public static void m6983d(String str, String str2) {
        m6996a(2, str, str2);
    }

    /* renamed from: d */
    public static void m6982d(String str, String str2, Throwable th) {
        m6996a(5, str, str2);
        m6996a(5, str, Log.getStackTraceString(th));
    }

    /* renamed from: e */
    public static void m6981e(String str, String str2) {
        m6996a(5, str, str2);
    }

    /* renamed from: e */
    public static void m6980e(String str, String str2, Throwable th) {
        m6996a(7, str, "wtf\n" + str2 + '\n' + Log.getStackTraceString(th));
        Log.wtf(str, str2, th);
    }

    /* renamed from: f */
    public static void m6979f(String str, String str2) {
        m6996a(7, str, "wtf\n" + str2);
        Log.wtf(str, str2, new Exception());
    }
}
