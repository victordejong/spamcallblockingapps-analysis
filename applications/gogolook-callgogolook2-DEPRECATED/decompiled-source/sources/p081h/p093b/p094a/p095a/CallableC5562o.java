package p081h.p093b.p094a.p095a;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: h.b.a.a.o */
/* loaded from: classes-dex2jar.jar:h/b/a/a/o.class */
public final class CallableC5562o implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f13891a;

    /* renamed from: b */
    public final /* synthetic */ List f13892b;

    /* renamed from: c */
    public final /* synthetic */ String f13893c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC5558k f13894d;

    /* renamed from: e */
    public final /* synthetic */ C5534b f13895e;

    public CallableC5562o(C5534b bVar, String str, List list, String str2, AbstractC5558k kVar) {
        this.f13895e = bVar;
        this.f13891a = str;
        this.f13892b = list;
        this.f13893c = str2;
        this.f13894d = kVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        this.f13895e.m25225a(new RunnableC5561n(this, this.f13895e.m25223a(this.f13891a, this.f13892b, this.f13893c)));
        return null;
    }
}
