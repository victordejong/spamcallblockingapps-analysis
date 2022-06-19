package p193e.p194a.p1272u3;

import com.truecaller.featuretoggles.FeatureKey;
import s1.z.c.l;
/* renamed from: e.a.u3.l */
/* loaded from: classes9-dex2jar.jar:e/a/u3/l.class */
public final class C20600l implements AbstractC20599k, AbstractC20583b {

    /* renamed from: a */
    public boolean f58093a;

    /* renamed from: b */
    public final AbstractC20583b f58094b;

    /* renamed from: c */
    public final AbstractC20585d f58095c;

    public C20600l(AbstractC20583b abstractC20583b, AbstractC20585d abstractC20585d) {
        l.e(abstractC20583b, "feature");
        l.e(abstractC20585d, "prefs");
        this.f58094b = abstractC20583b;
        this.f58095c = abstractC20585d;
        this.f58093a = abstractC20583b.isEnabled();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public String getDescription() {
        return this.f58094b.getDescription();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public FeatureKey getKey() {
        return this.f58094b.getKey();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public boolean isEnabled() {
        return this.f58095c.getBoolean(getKey().name(), this.f58093a);
    }

    @Override // p193e.p194a.p1272u3.AbstractC20599k
    /* renamed from: k */
    public void mo10927k() {
        this.f58095c.putBoolean(getKey().name(), this.f58094b.isEnabled());
    }

    @Override // p193e.p194a.p1272u3.AbstractC20599k
    public void setEnabled(boolean z) {
        this.f58095c.putBoolean(getKey().name(), z);
    }
}
