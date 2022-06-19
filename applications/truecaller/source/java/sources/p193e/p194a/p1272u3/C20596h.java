package p193e.p194a.p1272u3;

import com.truecaller.featuretoggles.FeatureKey;
/* renamed from: e.a.u3.h */
/* loaded from: classes9-dex2jar.jar:e/a/u3/h.class */
public final class C20596h implements AbstractC20583b {

    /* renamed from: a */
    public final boolean f58084a;

    /* renamed from: b */
    public final FeatureKey f58085b;

    /* renamed from: c */
    public final String f58086c;

    /* renamed from: d */
    public final /* synthetic */ FeatureKey f58087d;

    public C20596h(FeatureKey featureKey, boolean z, String str) {
        this.f58087d = featureKey;
        this.f58084a = z;
        this.f58085b = featureKey;
        this.f58086c = str;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public String getDescription() {
        return this.f58086c;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public FeatureKey getKey() {
        return this.f58085b;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public boolean isEnabled() {
        return this.f58084a;
    }
}
