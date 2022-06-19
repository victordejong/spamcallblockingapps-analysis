package p193e.p194a.p1272u3;

import com.truecaller.featuretoggles.FeatureKey;
import p193e.p194a.p1272u3.C20602n;
/* renamed from: e.a.u3.m */
/* loaded from: classes9-dex2jar.jar:e/a/u3/m.class */
public final class C20601m implements AbstractC20583b {

    /* renamed from: a */
    public final boolean f58096a;

    /* renamed from: b */
    public final FeatureKey f58097b;

    /* renamed from: c */
    public final String f58098c;

    /* renamed from: d */
    public final /* synthetic */ C20602n.C20603a f58099d;

    public C20601m(C20602n.C20603a c20603a) {
        this.f58099d = c20603a;
        this.f58096a = ((C20610s) c20603a.f58101b).f58117e.isEnabled();
        this.f58097b = c20603a.f58101b.getKey();
        this.f58098c = c20603a.f58101b.getDescription();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public String getDescription() {
        return this.f58098c;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public FeatureKey getKey() {
        return this.f58097b;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public boolean isEnabled() {
        return this.f58096a;
    }
}
