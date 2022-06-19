package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.l */
/* loaded from: classes-dex2jar.jar:g5/l.class */
public final class C2856l extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b {

    /* renamed from: a */
    public final C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d> f9742a;

    /* renamed from: b */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b f9743b;

    /* renamed from: c */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c f9744c;

    /* renamed from: d */
    public final C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a> f9745d;

    public C2856l(C2904w c2904w, AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b abstractC2894b, AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c abstractC2895c, C2904w c2904w2, C2857a c2857a) {
        this.f9742a = c2904w;
        this.f9743b = abstractC2894b;
        this.f9744c = abstractC2895c;
        this.f9745d = c2904w2;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b
    /* renamed from: a */
    public C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a> mo2906a() {
        return this.f9745d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b
    /* renamed from: b */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b mo2905b() {
        return this.f9743b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b
    /* renamed from: c */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c mo2904c() {
        return this.f9744c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b
    /* renamed from: d */
    public C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d> mo2903d() {
        return this.f9742a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b abstractC2892b = (AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b) obj;
        if (!this.f9742a.equals(abstractC2892b.mo2903d()) || !this.f9743b.equals(abstractC2892b.mo2905b()) || !this.f9744c.equals(abstractC2892b.mo2904c()) || !this.f9745d.equals(abstractC2892b.mo2906a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f9742a.hashCode() ^ 1000003) * 1000003) ^ this.f9743b.hashCode()) * 1000003) ^ this.f9744c.hashCode()) * 1000003) ^ this.f9745d.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Execution{threads=");
        m8752j.append(this.f9742a);
        m8752j.append(", exception=");
        m8752j.append(this.f9743b);
        m8752j.append(", signal=");
        m8752j.append(this.f9744c);
        m8752j.append(", binaries=");
        m8752j.append(this.f9745d);
        m8752j.append("}");
        return m8752j.toString();
    }
}
