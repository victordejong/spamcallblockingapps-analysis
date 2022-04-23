package p131c.p132a.p133a.p134a;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: c.a.a.a.r */
/* loaded from: classes-dex2jar.jar:c/a/a/a/r.class */
public final class CallableC2019r implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f7881a;

    /* renamed from: b */
    public final /* synthetic */ List f7882b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC2009m f7883c;

    /* renamed from: d */
    public final /* synthetic */ C1987d f7884d;

    public CallableC2019r(C1987d dVar, String str, List list, String str2, AbstractC2009m mVar) {
        this.f7884d = dVar;
        this.f7881a = str;
        this.f7882b = list;
        this.f7883c = mVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        this.f7884d.m31337a(new RunnableC2017q(this, this.f7884d.m31335a(this.f7881a, this.f7882b, (String) null)));
        return null;
    }
}
