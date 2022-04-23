package p459j.p460a.p582w0;

import gogolook.callgogolook2.developmode.LogManager;
import java.io.PrintWriter;
import java.io.StringWriter;
/* renamed from: j.a.w0.m2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/m2.class */
public class C14080m2 {
    /* renamed from: a */
    public static void m2616a(Object obj) {
        m2615a((String) null, obj);
    }

    /* renamed from: a */
    public static void m2615a(String str, Object obj) {
    }

    /* renamed from: a */
    public static void m2614a(String str, Throwable th) {
        m2613a(str, th, false);
    }

    /* renamed from: a */
    public static void m2613a(String str, Throwable th, boolean z) {
        if (z) {
            try {
                StringWriter stringWriter = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter));
                LogManager.m28568c(stringWriter.toString());
            } catch (Throwable th2) {
            }
        }
    }

    /* renamed from: a */
    public static void m2612a(Throwable th) {
        m2613a("exception", th, false);
    }
}
