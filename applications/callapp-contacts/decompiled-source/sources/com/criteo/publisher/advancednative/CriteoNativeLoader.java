package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.d;
import com.criteo.publisher.e;
import com.criteo.publisher.i.c;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.o;
import com.criteo.publisher.model.NativeAdUnit;
import com.criteo.publisher.model.b0.n;
import com.criteo.publisher.model.s;
import com.criteo.publisher.q;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader.class */
public class CriteoNativeLoader {
    final NativeAdUnit adUnit;
    private final CriteoNativeAdListener listener;
    private final g logger;
    private final CriteoNativeRenderer publisherRenderer;
    private CriteoNativeRenderer renderer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader$a.class */
    public final class a implements d {
        a() {
        }

        @Override // com.criteo.publisher.d
        public final void a() {
            CriteoNativeLoader.this.handleNativeAssets(null);
        }

        @Override // com.criteo.publisher.d
        public final void a(s sVar) {
            CriteoNativeLoader.this.handleNativeAssets(sVar.g());
        }
    }

    public CriteoNativeLoader(CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        this(null, criteoNativeAdListener, criteoNativeRenderer);
    }

    public CriteoNativeLoader(NativeAdUnit nativeAdUnit, CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        g a2 = h.a(getClass());
        this.logger = a2;
        this.adUnit = nativeAdUnit;
        this.listener = new k(criteoNativeAdListener, new WeakReference(this));
        this.publisherRenderer = criteoNativeRenderer;
        a2.a(m.a(nativeAdUnit));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.listener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CriteoNativeAd criteoNativeAd) {
        this.listener.onAdReceived(criteoNativeAd);
    }

    private void doLoad(Bid bid) {
        this.logger.a(m.a(this, bid));
        getIntegrationRegistry().a(com.criteo.publisher.i.a.IN_HOUSE);
        handleNativeAssets(bid == null ? null : bid.b());
    }

    private void doLoad(ContextData contextData) {
        this.logger.a(m.a(this));
        getIntegrationRegistry().a(com.criteo.publisher.i.a.STANDALONE);
        getBidManager().a(this.adUnit, contextData, new a());
    }

    private b getAdChoiceOverlay() {
        return q.a().s();
    }

    private e getBidManager() {
        return q.a().l();
    }

    private static h getImageLoaderHolder() {
        return q.a().t();
    }

    private c getIntegrationRegistry() {
        return q.a().u();
    }

    private l getNativeAdMapper() {
        return q.a().q();
    }

    private CriteoNativeRenderer getRenderer() {
        if (this.renderer == null) {
            this.renderer = new AdChoiceOverlayNativeRenderer(this.publisherRenderer, getAdChoiceOverlay());
        }
        return this.renderer;
    }

    private com.criteo.publisher.e.c getUiThreadExecutor() {
        return q.a().i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNativeAssets(n nVar) {
        if (nVar == null) {
            notifyForFailureAsync();
            return;
        }
        l nativeAdMapper = getNativeAdMapper();
        WeakReference weakReference = new WeakReference(this.listener);
        CriteoNativeRenderer renderer = getRenderer();
        j jVar = new j(nVar.g(), weakReference, nativeAdMapper.f17189b);
        c cVar = new c(nVar.n().b(), weakReference, nativeAdMapper.f17191d);
        com.criteo.publisher.advancednative.a aVar = new com.criteo.publisher.advancednative.a(nVar.l(), weakReference, nativeAdMapper.f17191d);
        nativeAdMapper.f.preloadMedia(nVar.n().e());
        nativeAdMapper.f.preloadMedia(nVar.f());
        nativeAdMapper.f.preloadMedia(nVar.m());
        notifyForAdAsync(new CriteoNativeAd(nVar, nativeAdMapper.f17188a, jVar, nativeAdMapper.f17190c, cVar, aVar, nativeAdMapper.e, renderer, nativeAdMapper.f));
    }

    private void notifyForAdAsync(final CriteoNativeAd criteoNativeAd) {
        getUiThreadExecutor().a(new Runnable() { // from class: com.criteo.publisher.advancednative._$$Lambda$CriteoNativeLoader$BJcgVvav5sviXc_UDLxnWFpFBHs
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.a(criteoNativeAd);
            }
        });
    }

    private void notifyForFailureAsync() {
        getUiThreadExecutor().a(new Runnable() { // from class: com.criteo.publisher.advancednative._$$Lambda$CriteoNativeLoader$_mIWf17QnqUkmoIdnUN7E8yNdsU
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.a();
            }
        });
    }

    public static void setImageLoader(ImageLoader imageLoader) {
        getImageLoaderHolder().f17174a.set(imageLoader);
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
            o.a(th);
        }
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoad(contextData);
        } catch (Throwable th) {
            o.a(th);
        }
    }
}
