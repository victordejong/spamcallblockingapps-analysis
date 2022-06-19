package p134j4;

import android.os.Bundle;
import com.google.android.play.core.assetpacks.AssetPackException;
import p220r4.C4203l;
/* renamed from: j4.m */
/* loaded from: classes-dex2jar.jar:j4/m.class */
public final class BinderC3229m extends BinderC3213i {

    /* renamed from: c */
    public final /* synthetic */ C3238p f10879c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC3229m(C3238p c3238p, C4203l c4203l) {
        super(c3238p, c4203l);
        this.f10879c = c3238p;
    }

    @Override // p134j4.BinderC3213i, p189o4.AbstractC3867f0
    /* renamed from: m */
    public final void mo1751m(Bundle bundle, Bundle bundle2) {
        super.mo1751m(bundle, bundle2);
        if (!this.f10879c.f10915f.compareAndSet(true, false)) {
            C3238p.f10908g.m1506f("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f10879c.zzf();
        }
    }

    @Override // p134j4.BinderC3213i, p189o4.AbstractC3867f0
    public final void zzd(Bundle bundle) {
        this.f10879c.f10914e.m1747c(this.f10822a);
        int i = bundle.getInt("error_code");
        C3238p.f10908g.m1509c("onError(%d)", Integer.valueOf(i));
        this.f10822a.m1294a(new AssetPackException(i));
    }
}
