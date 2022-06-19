package p193e.p1538j;

import android.content.Context;
import java.util.concurrent.Callable;
import s1.z.c.l;
/* renamed from: e.j.m */
/* loaded from: classes2-dex2jar.jar:e/j/m.class */
public final /* synthetic */ class CallableC23245m implements Callable {

    /* renamed from: a */
    public static final /* synthetic */ CallableC23245m f64337a = new CallableC23245m();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Context context = C23228f0.f64300j;
        if (context != null) {
            return context.getCacheDir();
        }
        l.l("applicationContext");
        throw null;
    }
}
