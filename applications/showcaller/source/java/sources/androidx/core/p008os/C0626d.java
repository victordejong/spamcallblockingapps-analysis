package androidx.core.p008os;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
/* renamed from: androidx.core.os.d */
/* loaded from: classes-dex2jar.jar:androidx/core/os/d.class */
public final class C0626d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.os.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/os/d$a.class */
    public static class C0627a {
        /* renamed from: a */
        public static Handler m33193a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    /* renamed from: a */
    public static Handler m33194a(Looper looper) {
        Throwable e;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return C0627a.m33193a(looper);
        }
        if (i >= 17) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (IllegalAccessException e2) {
                e = e2;
                Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                return new Handler(looper);
            } catch (InstantiationException e3) {
                e = e3;
                Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                return new Handler(looper);
            } catch (NoSuchMethodException e4) {
                e = e4;
                Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                return new Handler(looper);
            } catch (InvocationTargetException e5) {
                Throwable cause = e5.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(cause);
                }
                throw ((Error) cause);
            }
        }
        return new Handler(looper);
    }
}
