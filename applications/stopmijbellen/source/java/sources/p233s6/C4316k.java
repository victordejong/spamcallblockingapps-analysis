package p233s6;

import p243t6.C4414e;
/* renamed from: s6.k */
/* loaded from: classes-dex2jar.jar:s6/k.class */
public final class C4316k extends AbstractC4314i {

    /* renamed from: a */
    public final C4414e<String, AbstractC4314i> f13470a = new C4414e<>();

    /* renamed from: e */
    public final AbstractC4314i m1109e(Object obj) {
        return obj == null ? C4315j.f13469a : new C4318m(obj);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof C4316k) && ((C4316k) obj).f13470a.equals(this.f13470a));
    }

    /* renamed from: f */
    public AbstractC4314i m1108f(String str) {
        C4414e.C4421e<String, AbstractC4314i> m948c = this.f13470a.m948c(str);
        return m948c != null ? m948c.f13766g : null;
    }

    public int hashCode() {
        return this.f13470a.hashCode();
    }
}
