package p193e.p1512i.p1516b.p1529r1;

import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.criteo.publisher.advancednative.CriteoNativeLoader;
import com.criteo.publisher.model.NativeAdUnit;
import java.lang.ref.Reference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import s1.z.c.l;
/* renamed from: e.i.b.r1.s */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/s.class */
public final class C23059s implements CriteoNativeAdListener {

    /* renamed from: a */
    public final C23021h f63865a;

    /* renamed from: b */
    public final CriteoNativeAdListener f63866b;

    /* renamed from: c */
    public final Reference<CriteoNativeLoader> f63867c;

    public C23059s(CriteoNativeAdListener criteoNativeAdListener, Reference<CriteoNativeLoader> reference) {
        l.f(criteoNativeAdListener, "delegate");
        l.f(reference, "nativeLoaderRef");
        this.f63866b = criteoNativeAdListener;
        this.f63867c = reference;
        C23021h m7583a = C23023i.m7583a(C23059s.class);
        l.b(m7583a, "LoggerFactory.getLogger(javaClass)");
        this.f63865a = m7583a;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdClicked() {
        C23021h c23021h = this.f63865a;
        CriteoNativeLoader criteoNativeLoader = this.f63867c.get();
        NativeAdUnit nativeAdUnit = criteoNativeLoader != null ? criteoNativeLoader.adUnit : null;
        c23021h.m7586a(new C23019f(0, "Native(" + nativeAdUnit + ") clicked", null, null, 13));
        this.f63866b.onAdClicked();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public /* synthetic */ void onAdClosed() {
        C23039c.$default$onAdClosed(this);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
        l.f(criteoErrorCode, "errorCode");
        C23021h c23021h = this.f63865a;
        CriteoNativeLoader criteoNativeLoader = this.f63867c.get();
        StringBuilder m8728C = C22128a.m8728C("Native(");
        m8728C.append(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
        m8728C.append(") failed to load");
        c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        this.f63866b.onAdFailedToReceive(criteoErrorCode);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdImpression() {
        C23021h c23021h = this.f63865a;
        CriteoNativeLoader criteoNativeLoader = this.f63867c.get();
        NativeAdUnit nativeAdUnit = criteoNativeLoader != null ? criteoNativeLoader.adUnit : null;
        c23021h.m7586a(new C23019f(0, "Native(" + nativeAdUnit + ") impression registered", null, null, 13));
        this.f63866b.onAdImpression();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public /* synthetic */ void onAdLeftApplication() {
        C23039c.$default$onAdLeftApplication(this);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdReceived(CriteoNativeAd criteoNativeAd) {
        l.f(criteoNativeAd, "nativeAd");
        C23021h c23021h = this.f63865a;
        CriteoNativeLoader criteoNativeLoader = this.f63867c.get();
        StringBuilder m8728C = C22128a.m8728C("Native(");
        m8728C.append(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
        m8728C.append(") is loaded");
        c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        this.f63866b.onAdReceived(criteoNativeAd);
    }
}
