package p193e.p194a.p1011l;

import com.truecaller.premium.PremiumActivity;
import com.truecaller.premium.PremiumDialogActivity;
/* renamed from: e.a.l.v */
/* loaded from: classes12-dex2jar.jar:e/a/l/v.class */
public abstract class AbstractC17249v extends PremiumActivity {

    /* renamed from: e */
    public boolean f48392e = false;

    public AbstractC17249v() {
        addOnContextAvailableListener(new C17243u(this));
    }

    @Override // p193e.p194a.p1011l.AbstractC17231t
    /* renamed from: pa */
    public void mo16329pa() {
        if (!this.f48392e) {
            this.f48392e = true;
            ((AbstractC16950l0) Yt()).mo12045m((PremiumDialogActivity) this);
        }
    }
}
