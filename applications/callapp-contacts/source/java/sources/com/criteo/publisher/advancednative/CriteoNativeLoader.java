package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.criteo.publisher.AbstractC8270d;
import com.criteo.publisher.Bid;
import com.criteo.publisher.C8272e;
import com.criteo.publisher.C8520q;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.model.NativeAdUnit;
import com.criteo.publisher.model.p257b0.AbstractC8474n;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p249i.C8350c;
import com.criteo.publisher.p249i.EnumC8347a;
import com.criteo.publisher.p256m0.C8444o;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader.class */
public class CriteoNativeLoader {
    final NativeAdUnit adUnit;
    private final CriteoNativeAdListener listener;
    private final C8402g logger;
    private final CriteoNativeRenderer publisherRenderer;
    private CriteoNativeRenderer renderer;

    /* renamed from: com.criteo.publisher.advancednative.CriteoNativeLoader$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader$a.class */
    public final class C8222a implements AbstractC8270d {
        C8222a() {
            CriteoNativeLoader.this = r4;
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25712a() {
            CriteoNativeLoader.this.handleNativeAssets(null);
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25711a(C8503s c8503s) {
            CriteoNativeLoader.this.handleNativeAssets(c8503s.m25544g());
        }
    }

    public CriteoNativeLoader(CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        this(null, criteoNativeAdListener, criteoNativeRenderer);
    }

    public CriteoNativeLoader(NativeAdUnit nativeAdUnit, CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        C8402g m25741a = C8404h.m25741a(getClass());
        this.logger = m25741a;
        this.adUnit = nativeAdUnit;
        this.listener = new C8245k(criteoNativeAdListener, new WeakReference(this));
        this.publisherRenderer = criteoNativeRenderer;
        m25741a.m25744a(C8247m.m25972a(nativeAdUnit));
    }

    /* renamed from: a */
    public /* synthetic */ void m25984a() {
        this.listener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
    }

    /* renamed from: a */
    public /* synthetic */ void m25983a(CriteoNativeAd criteoNativeAd) {
        this.listener.onAdReceived(criteoNativeAd);
    }

    private void doLoad(Bid bid) {
        this.logger.m25744a(C8247m.m25973a(this, bid));
        getIntegrationRegistry().m25807a(EnumC8347a.IN_HOUSE);
        handleNativeAssets(bid == null ? null : bid.m25989b());
    }

    private void doLoad(ContextData contextData) {
        this.logger.m25744a(C8247m.m25974a(this));
        getIntegrationRegistry().m25807a(EnumC8347a.STANDALONE);
        getBidManager().m25939a(this.adUnit, contextData, new C8222a());
    }

    private C8227b getAdChoiceOverlay() {
        return C8520q.m25449a().m25390s();
    }

    private C8272e getBidManager() {
        return C8520q.m25449a().m25397l();
    }

    private static C8240h getImageLoaderHolder() {
        return C8520q.m25449a().m25389t();
    }

    private C8350c getIntegrationRegistry() {
        return C8520q.m25449a().m25388u();
    }

    private C8246l getNativeAdMapper() {
        return C8520q.m25449a().m25392q();
    }

    private CriteoNativeRenderer getRenderer() {
        if (this.renderer == null) {
            this.renderer = new AdChoiceOverlayNativeRenderer(this.publisherRenderer, getAdChoiceOverlay());
        }
        return this.renderer;
    }

    private ExecutorC8277c getUiThreadExecutor() {
        return C8520q.m25449a().m25400i();
    }

    public void handleNativeAssets(AbstractC8474n abstractC8474n) {
        if (abstractC8474n == null) {
            notifyForFailureAsync();
            return;
        }
        C8246l nativeAdMapper = getNativeAdMapper();
        WeakReference weakReference = new WeakReference(this.listener);
        CriteoNativeRenderer renderer = getRenderer();
        C8244j c8244j = new C8244j(abstractC8474n.m25633g(), weakReference, nativeAdMapper.f29793b);
        C8228c c8228c = new C8228c(abstractC8474n.m25626n().mo25607b(), weakReference, nativeAdMapper.f29795d);
        C8225a c8225a = new C8225a(abstractC8474n.m25628l(), weakReference, nativeAdMapper.f29795d);
        nativeAdMapper.f29797f.preloadMedia(abstractC8474n.m25626n().m25604e());
        nativeAdMapper.f29797f.preloadMedia(abstractC8474n.m25634f());
        nativeAdMapper.f29797f.preloadMedia(abstractC8474n.m25627m());
        notifyForAdAsync(new CriteoNativeAd(abstractC8474n, nativeAdMapper.f29792a, c8244j, nativeAdMapper.f29794c, c8228c, c8225a, nativeAdMapper.f29796e, renderer, nativeAdMapper.f29797f));
    }

    private void notifyForAdAsync(final CriteoNativeAd criteoNativeAd) {
        getUiThreadExecutor().m25926a(new Runnable() { // from class: com.criteo.publisher.advancednative._$$Lambda$CriteoNativeLoader$BJcgVvav5sviXc_UDLxnWFpFBHs
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.m25983a(criteoNativeAd);
            }
        });
    }

    private void notifyForFailureAsync() {
        getUiThreadExecutor().m25926a(new Runnable() { // from class: com.criteo.publisher.advancednative._$$Lambda$CriteoNativeLoader$_mIWf17QnqUkmoIdnUN7E8yNdsU
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.m25984a();
            }
        });
    }

    public static void setImageLoader(ImageLoader imageLoader) {
        getImageLoaderHolder().f29778a.set(imageLoader);
    }

    public View createEmptyNativeView(Context context, ViewGroup viewGroup) {
        return getRenderer().createNativeView(context, viewGroup);
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(Bid bid) {
        try {
            doLoad(bid);
        } catch (Throwable th) {
            C8444o.m25675a(th);
        }
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoad(contextData);
        } catch (Throwable th) {
            C8444o.m25675a(th);
        }
    }
}
