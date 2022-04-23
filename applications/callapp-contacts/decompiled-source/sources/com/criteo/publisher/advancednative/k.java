package com.criteo.publisher.advancednative;

import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import java.lang.ref.Reference;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/k.class */
public final class k implements CriteoNativeAdListener {

    /* renamed from: a  reason: collision with root package name */
    private final g f17185a;

    /* renamed from: b  reason: collision with root package name */
    private final CriteoNativeAdListener f17186b;

    /* renamed from: c  reason: collision with root package name */
    private final Reference<CriteoNativeLoader> f17187c;

    public k(CriteoNativeAdListener delegate, Reference<CriteoNativeLoader> nativeLoaderRef) {
        p.c(delegate, "delegate");
        p.c(nativeLoaderRef, "nativeLoaderRef");
        this.f17186b = delegate;
        this.f17187c = nativeLoaderRef;
        g a2 = h.a(getClass());
        p.a((Object) a2, "LoggerFactory.getLogger(javaClass)");
        this.f17185a = a2;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdClicked() {
        this.f17185a.a(m.e(this.f17187c.get()));
        this.f17186b.onAdClicked();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public /* synthetic */ void onAdClosed() {
        CriteoNativeAdListener._CC.$default$onAdClosed(this);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdFailedToReceive(CriteoErrorCode errorCode) {
        p.c(errorCode, "errorCode");
        this.f17185a.a(m.c(this.f17187c.get()));
        this.f17186b.onAdFailedToReceive(errorCode);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdImpression() {
        this.f17185a.a(m.d(this.f17187c.get()));
        this.f17186b.onAdImpression();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public /* synthetic */ void onAdLeftApplication() {
        CriteoNativeAdListener._CC.$default$onAdLeftApplication(this);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdReceived(CriteoNativeAd nativeAd) {
        p.c(nativeAd, "nativeAd");
        this.f17185a.a(m.b(this.f17187c.get()));
        this.f17186b.onAdReceived(nativeAd);
    }
}
