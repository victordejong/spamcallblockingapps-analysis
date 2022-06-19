package p1727n3.p1807k.p1808a;

import java.lang.reflect.Method;
/* renamed from: n3.k.a.e */
/* loaded from: classes-dex2jar.jar:n3/k/a/e.class */
public class RunnableC26423e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Object f74051a;

    /* renamed from: b */
    public final /* synthetic */ Object f74052b;

    public RunnableC26423e(Object obj, Object obj2) {
        this.f74051a = obj;
        this.f74052b = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Boolean bool = Boolean.FALSE;
        try {
            Method method = C26419d.f74037d;
            if (method != null) {
                method.invoke(this.f74051a, this.f74052b, bool, "AppCompat recreation");
            } else {
                C26419d.f74038e.invoke(this.f74051a, this.f74052b, bool);
            }
        } catch (RuntimeException e) {
            if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                throw e;
            }
        } catch (Throwable th) {
        }
    }
}
