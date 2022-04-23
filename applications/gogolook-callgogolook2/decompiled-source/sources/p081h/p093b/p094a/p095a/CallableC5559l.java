package p081h.p093b.p094a.p095a;

import java.util.concurrent.Callable;
import p081h.p093b.p094a.p095a.C5547g;
/* renamed from: h.b.a.a.l */
/* loaded from: classes-dex2jar.jar:h/b/a/a/l.class */
public final class CallableC5559l implements Callable<C5547g.C5548a> {

    /* renamed from: a */
    public final /* synthetic */ String f13884a;

    /* renamed from: b */
    public final /* synthetic */ C5534b f13885b;

    public CallableC5559l(C5534b bVar, String str) {
        this.f13885b = bVar;
        this.f13884a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ C5547g.C5548a call() throws Exception {
        C5547g.C5548a d;
        d = this.f13885b.m25209d(this.f13884a);
        return d;
    }
}
