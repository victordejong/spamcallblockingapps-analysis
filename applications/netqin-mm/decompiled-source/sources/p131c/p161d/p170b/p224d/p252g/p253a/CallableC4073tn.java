package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzcru;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.g.a.tn */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/tn.class */
public final /* synthetic */ class CallableC4073tn implements Callable {

    /* renamed from: a */
    public final zzcru f15417a;

    public CallableC4073tn(zzcru zzcruVar) {
        this.f15417a = zzcruVar;
    }

    /* renamed from: a */
    public static Callable m26313a(zzcru zzcruVar) {
        return new CallableC4073tn(zzcruVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f15417a.getWritableDatabase();
    }
}
