package p459j.p460a.p603y;

import p459j.p460a.p530k.AsyncTaskC12839g;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
/* renamed from: j.a.y.h */
/* loaded from: classes2-dex2jar.jar:j/a/y/h.class */
public final class C14454h extends AbstractC15150l implements AbstractC15107a<C14989s> {

    /* renamed from: a */
    public static final C14454h f32353a = new C14454h();

    public C14454h() {
        super(0);
    }

    @Override // p626l.p641z.p642c.AbstractC15107a
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (C13891a.m3160d() && !C13978e.f31386a.m9462a("isSendInboxNumberDone", (Boolean) false)) {
            C14217x3.m2181a(new AsyncTaskC12839g());
        }
    }
}
