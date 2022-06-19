package p193e.p1432d.p1433a.p1434a;

import java.util.concurrent.Callable;
import p193e.p1432d.p1433a.p1434a.C22086n;
/* renamed from: e.d.a.a.q0 */
/* loaded from: classes-dex2jar.jar:e/d/a/a/q0.class */
public final class CallableC22094q0 implements Callable<C22086n.C22087a> {

    /* renamed from: a */
    public final /* synthetic */ String f61401a;

    /* renamed from: b */
    public final /* synthetic */ C22068e f61402b;

    public CallableC22094q0(C22068e c22068e, String str) {
        this.f61402b = c22068e;
        this.f61401a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ C22086n.C22087a call() throws Exception {
        return C22068e.m8806p(this.f61402b, this.f61401a);
    }
}
