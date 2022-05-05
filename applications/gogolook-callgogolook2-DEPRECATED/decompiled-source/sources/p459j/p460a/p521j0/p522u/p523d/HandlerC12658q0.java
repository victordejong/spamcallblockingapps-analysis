package p459j.p460a.p521j0.p522u.p523d;

import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.RowInfo;
import p459j.p460a.p533l.HandlerC12947l;
/* renamed from: j.a.j0.u.d.q0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/q0.class */
public class HandlerC12658q0 extends HandlerC12947l {

    /* renamed from: a */
    public final /* synthetic */ CallStats.Call f28528a;

    /* renamed from: b */
    public final /* synthetic */ RowInfo f28529b;

    /* renamed from: c */
    public final /* synthetic */ C12640p0 f28530c;

    public HandlerC12658q0(C12640p0 p0Var, CallStats.Call call, RowInfo rowInfo) {
        this.f28530c = p0Var;
        this.f28528a = call;
        this.f28529b = rowInfo;
    }

    @Override // p459j.p460a.p533l.HandlerC12947l
    /* renamed from: a */
    public void mo4945a() {
        mo4944a((Object) null);
    }

    @Override // p459j.p460a.p533l.HandlerC12947l
    /* renamed from: a */
    public void mo4944a(Object obj) {
        if (!this.f28528a.m28529B()) {
            this.f28529b.m28226g().m28332f();
        }
        this.f28530c.f28479b.m5556b(true);
    }

    @Override // p459j.p460a.p533l.HandlerC12947l
    /* renamed from: b */
    public void mo4942b() {
        this.f28530c.f28479b.m5555b(false, "openReport");
    }
}
