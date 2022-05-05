package p081h.p119d.p120a.p124s.p134k.p139i;

import p081h.p119d.p120a.EnumC5779n;
import p081h.p119d.p120a.p122q.C5796a;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
/* renamed from: h.d.a.s.k.i.g */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/g.class */
public class C5999g implements AbstractC5918l<C5796a, C5796a> {

    /* renamed from: h.d.a.s.k.i.g$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/g$a.class */
    public static class C6000a implements AbstractC5813c<C5796a> {

        /* renamed from: a */
        public final C5796a f14969a;

        public C6000a(C5796a aVar) {
            this.f14969a = aVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        /* renamed from: a */
        public C5796a mo24058a(EnumC5779n nVar) {
            return this.f14969a;
        }

        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        /* renamed from: a */
        public void mo24059a() {
        }

        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        public void cancel() {
        }

        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        public String getId() {
            return String.valueOf(this.f14969a.m24370c());
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5813c<C5796a> mo24060a(C5796a aVar, int i, int i2) {
        return new C6000a(aVar);
    }
}
