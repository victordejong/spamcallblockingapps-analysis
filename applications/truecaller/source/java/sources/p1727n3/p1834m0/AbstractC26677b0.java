package p1727n3.p1834m0;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.b0 */
/* loaded from: classes-dex2jar.jar:n3/m0/b0.class */
public abstract class AbstractC26677b0 {

    /* renamed from: a */
    public static final String f74665a = AbstractC26839p.m1295e("WorkerFactory");

    /* renamed from: a */
    public abstract ListenableWorker mo1027a(Context context, String str, WorkerParameters workerParameters);

    /* renamed from: b */
    public final ListenableWorker m1451b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker mo1027a = mo1027a(context, str, workerParameters);
        ListenableWorker listenableWorker = mo1027a;
        if (mo1027a == null) {
            Class cls = null;
            try {
                cls = Class.forName(str).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                AbstractC26839p.m1296c().mo1293b(f74665a, C22128a.m8543z2("Invalid class: ", str), th);
            }
            listenableWorker = mo1027a;
            if (cls != null) {
                try {
                    listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th2) {
                    AbstractC26839p.m1296c().mo1293b(f74665a, C22128a.m8543z2("Could not instantiate ", str), th2);
                    listenableWorker = mo1027a;
                }
            }
        }
        if (listenableWorker == null || !listenableWorker.isUsed()) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
