package p193e.p1411b.p1412a;

import android.content.Context;
import java.util.concurrent.Callable;
/* renamed from: e.b.a.i */
/* loaded from: classes-dex2jar.jar:e/b/a/i.class */
public final class CallableC21920i implements Callable<C21942p<C21913e>> {

    /* renamed from: a */
    public final /* synthetic */ Context f60847a;

    /* renamed from: b */
    public final /* synthetic */ int f60848b;

    public CallableC21920i(Context context, int i) {
        this.f60847a = context;
        this.f60848b = i;
    }

    @Override // java.util.concurrent.Callable
    public C21942p<C21913e> call() throws Exception {
        return C21914f.m8900d(this.f60847a, this.f60848b);
    }
}
