package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/r.class */
public class C7378r {
    /* renamed from: a */
    public static AbstractC7329n m20712a(String str) throws RemoteException {
        try {
            return new BinderC7390s((AbstractC7320m2) Class.forName(str, false, C7378r.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
