package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Environment;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.g.a.b */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b.class */
public final class CallableC3374b implements Callable<Boolean> {
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
