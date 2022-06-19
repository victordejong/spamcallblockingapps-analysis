package androidx.emoji2.text;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.emoji2.text.b */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/b.class */
public class C0348b {

    /* renamed from: androidx.emoji2.text.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/b$a.class */
    public static class C0349a {
        /* renamed from: a */
        public static Handler m8260a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    /* renamed from: a */
    public static ThreadPoolExecutor m8262a(final String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactory() { // from class: androidx.emoji2.text.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setPriority(10);
                return thread;
            }
        });
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: b */
    public static Handler m8261b() {
        return Build.VERSION.SDK_INT >= 28 ? C0349a.m8260a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper());
    }
}
