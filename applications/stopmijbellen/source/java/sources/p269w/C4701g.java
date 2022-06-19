package p269w;
/* renamed from: w.g */
/* loaded from: classes-dex2jar.jar:w/g.class */
public class C4701g extends C4700f {

    /* renamed from: m */
    public int f14538m;

    public C4701g(AbstractC4711p abstractC4711p) {
        super(abstractC4711p);
        if (abstractC4711p instanceof C4706l) {
            this.f14530e = 2;
        } else {
            this.f14530e = 3;
        }
    }

    @Override // p269w.C4700f
    /* renamed from: c */
    public void mo583c(int i) {
        if (this.f14535j) {
            return;
        }
        this.f14535j = true;
        this.f14532g = i;
        for (AbstractC4698d abstractC4698d : this.f14536k) {
            abstractC4698d.mo561a(abstractC4698d);
        }
    }
}
