package p131c.p135b.p136a.p138b.p139a.p140a;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.mopub.mobileads.resource.DrawableConstants;
import p131c.p135b.p136a.p138b.C2095k;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.b.a.a.a */
/* loaded from: classes-dex2jar.jar:c/b/a/b/a/a/a.class */
public abstract class AbstractC2037a {

    /* renamed from: a */
    public final C2341l f7943a;

    /* renamed from: b */
    public final AppLovinFullscreenActivity f7944b;

    /* renamed from: c */
    public final AbstractC7036g f7945c;

    /* renamed from: d */
    public final ViewGroup f7946d;

    /* renamed from: e */
    public final FrameLayout.LayoutParams f7947e = new FrameLayout.LayoutParams(-1, -1, 17);

    public AbstractC2037a(AbstractC7036g gVar, AppLovinFullscreenActivity appLovinFullscreenActivity, C2341l lVar) {
        this.f7945c = gVar;
        this.f7943a = lVar;
        this.f7944b = appLovinFullscreenActivity;
        FrameLayout frameLayout = new FrameLayout(appLovinFullscreenActivity);
        this.f7946d = frameLayout;
        frameLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f7946d.setLayoutParams(this.f7947e);
    }

    /* renamed from: a */
    public void m31207a(AbstractC7036g.C7041e eVar, int i, C2095k kVar) {
        kVar.m31078a(eVar.f21712a, eVar.f21716e, eVar.f21715d, i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(kVar.getLayoutParams());
        int i2 = eVar.f21714c;
        layoutParams.setMargins(i2, eVar.f21713b, i2, 0);
        layoutParams.gravity = i;
        this.f7946d.addView(kVar, layoutParams);
    }
}
