package p078c.p122d.p123a.p128i0;
/* renamed from: c.d.a.i0.a */
/* loaded from: classes2-dex2jar.jar:c/d/a/i0/a.class */
public class C2028a {
    /* renamed from: a */
    public static byte m28270a(int i) {
        m28269b("request get the status for the task[%d] in the download service", Integer.valueOf(i));
        return (byte) 0;
    }

    /* renamed from: b */
    private static void m28269b(String str, Object... objArr) {
        C2036d.m28245i(C2028a.class, str + ", but the download service isn't connected yet.\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your code invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()", objArr);
    }

    /* renamed from: c */
    public static boolean m28268c(int i) {
        m28269b("request pause the task[%d] in the download service", Integer.valueOf(i));
        return false;
    }

    /* renamed from: d */
    public static boolean m28267d(String str, String str2, boolean z) {
        m28269b("request start the task([%s], [%s], [%B]) in the download service", str, str2, Boolean.valueOf(z));
        return false;
    }

    /* renamed from: e */
    public static void m28266e(boolean z) {
        m28269b("request cancel the foreground status[%B] for the download service", Boolean.valueOf(z));
    }
}
