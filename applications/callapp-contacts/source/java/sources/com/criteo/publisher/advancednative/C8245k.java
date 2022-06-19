package com.criteo.publisher.advancednative;

import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import java.lang.ref.Reference;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.advancednative.k */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/k.class */
public final class C8245k implements CriteoNativeAdListener {

    /* renamed from: a */
    private final C8402g f29789a;

    /* renamed from: b */
    private final CriteoNativeAdListener f29790b;

    /* renamed from: c */
    private final Reference<CriteoNativeLoader> f29791c;

    public C8245k(CriteoNativeAdListener delegate, Reference<CriteoNativeLoader> nativeLoaderRef) {
        C18524p.m3841c(delegate, "delegate");
        C18524p.m3841c(nativeLoaderRef, "nativeLoaderRef");
        this.f29790b = delegate;
        this.f29791c = nativeLoaderRef;
        C8402g m25741a = C8404h.m25741a(getClass());
        C18524p.m3849a((Object) m25741a, "LoggerFactory.getLogger(javaClass)");
        this.f29789a = m25741a;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdClicked() {
        this.f29789a.m25744a(C8247m.m25968e(this.f29791c.get()));
        this.f29790b.onAdClicked();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public /* synthetic */ void onAdClosed() {
        CriteoNativeAdListener._CC.$default$onAdClosed(this);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdFailedToReceive(CriteoErrorCode errorCode) {
        C18524p.m3841c(errorCode, "errorCode");
        this.f29789a.m25744a(C8247m.m25970c(this.f29791c.get()));
        this.f29790b.onAdFailedToReceive(errorCode);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdImpression() {
        this.f29789a.m25744a(C8247m.m25969d(this.f29791c.get()));
        this.f29790b.onAdImpression();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public /* synthetic */ void onAdLeftApplication() {
        CriteoNativeAdListener._CC.$default$onAdLeftApplication(this);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public final void onAdReceived(CriteoNativeAd nativeAd) {
        C18524p.m3841c(nativeAd, "nativeAd");
        this.f29789a.m25744a(C8247m.m25971b(this.f29791c.get()));
        this.f29790b.onAdReceived(nativeAd);
    }
}
