package p026c0;

import java.lang.reflect.Method;
/* renamed from: c0.e */
/* loaded from: classes-dex2jar.jar:c0/e.class */
public class RunnableC0784e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Object f2915a;

    /* renamed from: b */
    public final /* synthetic */ Object f2916b;

    public RunnableC0784e(Object obj, Object obj2) {
        this.f2915a = obj;
        this.f2916b = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Method method = C0780d.f2901d;
            if (method != null) {
                method.invoke(this.f2915a, this.f2916b, Boolean.FALSE, "AppCompat recreation");
            } else {
                C0780d.f2902e.invoke(this.f2915a, this.f2916b, Boolean.FALSE);
            }
        } catch (RuntimeException e) {
            if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                throw e;
            }
        } catch (Throwable th) {
        }
    }
}
