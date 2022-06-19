package p193e.p194a.p1272u3;

import com.truecaller.featuretoggles.FeatureKey;
import p193e.p194a.p1272u3.C20602n;
/* renamed from: e.a.u3.o */
/* loaded from: classes9-dex2jar.jar:e/a/u3/o.class */
public final class C20606o implements AbstractC20583b {

    /* renamed from: a */
    public final boolean f58109a;

    /* renamed from: b */
    public final FeatureKey f58110b;

    /* renamed from: c */
    public final String f58111c;

    /* renamed from: d */
    public final /* synthetic */ C20602n.C20604b f58112d;

    public C20606o(C20602n.C20604b c20604b) {
        this.f58112d = c20604b;
        this.f58109a = ((C20598j) c20604b.f58104b).isEnabled();
        this.f58110b = c20604b.f58104b.getKey();
        this.f58111c = c20604b.f58104b.getDescription();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public String getDescription() {
        return this.f58111c;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public FeatureKey getKey() {
        return this.f58110b;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public boolean isEnabled() {
        return this.f58109a;
    }
}
