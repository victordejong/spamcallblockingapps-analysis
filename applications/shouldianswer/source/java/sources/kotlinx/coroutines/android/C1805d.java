package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Constructor;
import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.android.d */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/d.class */
public final class C1805d {

    /* renamed from: a */
    public static final AbstractC1804c f4491a;

    static {
        Object obj;
        try {
            C1768j.C1769a c1769a = C1768j.f4443a;
            Looper mainLooper = Looper.getMainLooper();
            C1694h.m3122a((Object) mainLooper, "Looper.getMainLooper()");
            obj = C1768j.m2981e(new C1800b(m2940a(mainLooper, true), "Main"));
        } catch (Throwable th) {
            C1768j.C1769a c1769a2 = C1768j.f4443a;
            obj = C1768j.m2981e(C1771k.m2978a(th));
        }
        Object obj2 = obj;
        if (C1768j.m2984b(obj)) {
            obj2 = null;
        }
        f4491a = (AbstractC1804c) obj2;
    }

    /* renamed from: a */
    public static final Handler m2940a(Looper looper, boolean z) {
        C1694h.m3117b(looper, "receiver$0");
        if (!z || Build.VERSION.SDK_INT < 16) {
            return new Handler(looper);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            if (invoke == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Handler");
            }
            return (Handler) invoke;
        }
        try {
            Constructor declaredConstructor = Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE);
            C1694h.m3122a((Object) declaredConstructor, "Handler::class.java.getD…:class.javaPrimitiveType)");
            Object newInstance = declaredConstructor.newInstance(looper, null, true);
            C1694h.m3122a(newInstance, "constructor.newInstance(this, null, true)");
            return (Handler) newInstance;
        } catch (NoSuchMethodException e) {
            return new Handler(looper);
        }
    }
}
