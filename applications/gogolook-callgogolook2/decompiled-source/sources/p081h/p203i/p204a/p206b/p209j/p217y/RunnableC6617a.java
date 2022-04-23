package p081h.p203i.p204a.p206b.p209j.p217y;

import p081h.p203i.p204a.p206b.AbstractC6499h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
/* renamed from: h.i.a.b.j.y.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/a.class */
public final /* synthetic */ class RunnableC6617a implements Runnable {

    /* renamed from: a */
    public final C6619c f16427a;

    /* renamed from: b */
    public final AbstractC6580m f16428b;

    /* renamed from: c */
    public final AbstractC6499h f16429c;

    /* renamed from: d */
    public final AbstractC6571h f16430d;

    public RunnableC6617a(C6619c cVar, AbstractC6580m mVar, AbstractC6499h hVar, AbstractC6571h hVar2) {
        this.f16427a = cVar;
        this.f16428b = mVar;
        this.f16429c = hVar;
        this.f16430d = hVar2;
    }

    /* renamed from: a */
    public static Runnable m22229a(C6619c cVar, AbstractC6580m mVar, AbstractC6499h hVar, AbstractC6571h hVar2) {
        return new RunnableC6617a(cVar, mVar, hVar, hVar2);
    }

    @Override // java.lang.Runnable
    public void run() {
        C6619c.m22227a(this.f16427a, this.f16428b, this.f16429c, this.f16430d);
    }
}
