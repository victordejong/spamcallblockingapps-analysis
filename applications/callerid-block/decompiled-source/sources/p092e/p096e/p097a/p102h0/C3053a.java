package p092e.p096e.p097a.p102h0;
/* renamed from: e.e.a.h0.a */
/* loaded from: classes2-dex2jar.jar:e/e/a/h0/a.class */
public class C3053a {
    /* renamed from: a */
    public static byte m434a(int i) {
        m433b("request get the status for the task[%d] in the download service", Integer.valueOf(i));
        return (byte) 0;
    }

    /* renamed from: b */
    private static void m433b(String str, Object... objArr) {
        C3062d.m406i(C3053a.class, str + ", but the download service isn't connected yet.\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your code invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()", objArr);
    }

    /* renamed from: c */
    public static boolean m432c(int i) {
        m433b("request pause the task[%d] in the download service", Integer.valueOf(i));
        return false;
    }

    /* renamed from: d */
    public static boolean m431d(String str, String str2, boolean z) {
        m433b("request start the task([%s], [%s], [%B]) in the download service", str, str2, Boolean.valueOf(z));
        return false;
    }

    /* renamed from: e */
    public static void m430e(boolean z) {
        m433b("request cancel the foreground status[%B] for the download service", Boolean.valueOf(z));
    }
}
