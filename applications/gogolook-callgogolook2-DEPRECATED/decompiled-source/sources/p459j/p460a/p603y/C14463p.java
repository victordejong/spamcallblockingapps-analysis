package p459j.p460a.p603y;

import gogolook.callgogolook2.job.DailySyncJobWorker;
import p459j.p460a.p567t0.C13625a;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
/* renamed from: j.a.y.p */
/* loaded from: classes2-dex2jar.jar:j/a/y/p.class */
public final class C14463p extends AbstractC15150l implements AbstractC15107a<C14989s> {

    /* renamed from: a */
    public final /* synthetic */ DailySyncJobWorker f32362a;

    /* renamed from: b */
    public final /* synthetic */ boolean f32363b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14463p(DailySyncJobWorker dailySyncJobWorker, boolean z) {
        super(0);
        this.f32362a = dailySyncJobWorker;
        this.f32363b = z;
    }

    @Override // p626l.p641z.p642c.AbstractC15107a
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.f32363b) {
            C13625a.m3798b(this.f32362a.m27935c());
        }
    }
}
