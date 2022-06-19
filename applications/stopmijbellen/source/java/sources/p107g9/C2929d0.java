package p107g9;

import android.graphics.Bitmap;
import android.os.Looper;
import android.os.Process;
import java.util.List;
import java.util.concurrent.ThreadFactory;
import p011aa.C0056i;
/* renamed from: g9.d0 */
/* loaded from: classes2-dex2jar.jar:g9/d0.class */
public final class C2929d0 {

    /* renamed from: a */
    public static final StringBuilder f9877a = new StringBuilder();

    /* renamed from: b */
    public static final C0056i f9878b = C0056i.m8835f("RIFF");

    /* renamed from: c */
    public static final C0056i f9879c = C0056i.m8835f("WEBP");

    /* renamed from: g9.d0$a */
    /* loaded from: classes2-dex2jar.jar:g9/d0$a.class */
    public static class C2930a extends Thread {
        public C2930a(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* renamed from: g9.d0$b */
    /* loaded from: classes2-dex2jar.jar:g9/d0$b.class */
    public static class ThreadFactoryC2931b implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C2930a(runnable);
        }
    }

    /* renamed from: a */
    public static void m2842a() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Method call should happen from the main thread.");
    }

    /* renamed from: b */
    public static int m2841b(Bitmap bitmap) {
        int allocationByteCount = bitmap.getAllocationByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    /* renamed from: c */
    public static String m2840c(RunnableC2920c runnableC2920c) {
        return m2839d(runnableC2920c, "");
    }

    /* renamed from: d */
    public static String m2839d(RunnableC2920c runnableC2920c, String str) {
        StringBuilder sb = new StringBuilder(str);
        AbstractC2915a abstractC2915a = runnableC2920c.f9863k;
        if (abstractC2915a != null) {
            sb.append(abstractC2915a.f9820b.m2813b());
        }
        List<AbstractC2915a> list = runnableC2920c.f9864l;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || abstractC2915a != null) {
                    sb.append(", ");
                }
                sb.append(list.get(i).f9820b.m2813b());
            }
        }
        return sb.toString();
    }

    /* renamed from: e */
    public static void m2838e(String str, String str2, String str3, String str4) {
        String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4);
    }
}
