package p186o1;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.C1676a;
/* renamed from: o1.q */
/* loaded from: classes-dex2jar.jar:o1/q.class */
public abstract class AbstractC3841q {

    /* renamed from: a */
    public static final String f12336a = AbstractC3824h.m1773e("WorkerFactory");

    /* renamed from: a */
    public final ListenableWorker m1764a(Context context, String str, WorkerParameters workerParameters) {
        Class cls;
        try {
            cls = Class.forName(str).asSubclass(ListenableWorker.class);
        } catch (Throwable th) {
            AbstractC3824h.m1774c().mo1771b(f12336a, C1676a.m4789h("Invalid class: ", str), th);
            cls = null;
        }
        ListenableWorker listenableWorker = null;
        if (cls != null) {
            try {
                listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Throwable th2) {
                AbstractC3824h.m1774c().mo1771b(f12336a, C1676a.m4789h("Could not instantiate ", str), th2);
                listenableWorker = null;
            }
        }
        if (listenableWorker == null || !listenableWorker.isUsed()) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
