package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.criteo.publisher.advancednative.C8251q;
import com.criteo.publisher.model.p257b0.AbstractC8474n;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAd.class */
public class CriteoNativeAd {
    private final C8227b adChoiceOverlay;
    private final AbstractC8474n assets;
    private final C8231e clickDetection;
    private final AbstractC8248n clickOnAdChoiceHandler;
    private final AbstractC8248n clickOnProductHandler;
    private final C8244j impressionTask;
    private CriteoNativeRenderer renderer;
    private final RendererHelper rendererHelper;
    private final C8251q visibilityTracker;

    public CriteoNativeAd(AbstractC8474n abstractC8474n, C8251q c8251q, C8244j c8244j, C8231e c8231e, AbstractC8248n abstractC8248n, AbstractC8248n abstractC8248n2, C8227b c8227b, CriteoNativeRenderer criteoNativeRenderer, RendererHelper rendererHelper) {
        this.assets = abstractC8474n;
        this.visibilityTracker = c8251q;
        this.impressionTask = c8244j;
        this.clickDetection = c8231e;
        this.clickOnProductHandler = abstractC8248n;
        this.clickOnAdChoiceHandler = abstractC8248n2;
        this.adChoiceOverlay = c8227b;
        this.renderer = criteoNativeRenderer;
        this.rendererHelper = rendererHelper;
    }

    public View createNativeRenderedView(Context context, ViewGroup viewGroup) {
        View createNativeView = this.renderer.createNativeView(context, viewGroup);
        renderNativeView(createNativeView);
        return createNativeView;
    }

    ImageView getAdChoiceView(View view) {
        return this.adChoiceOverlay.m25982a(view);
    }

    public String getAdvertiserDescription() {
        return this.assets.m25637c();
    }

    public String getAdvertiserDomain() {
        return this.assets.m25636d();
    }

    public CriteoMedia getAdvertiserLogoMedia() {
        return CriteoMedia.create(this.assets.m25634f());
    }

    public String getCallToAction() {
        return this.assets.m25626n().mo25609a();
    }

    public String getDescription() {
        return this.assets.m25626n().mo25606c();
    }

    public String getLegalText() {
        return this.assets.m25629k();
    }

    public String getPrice() {
        return this.assets.m25626n().mo25603f();
    }

    public CriteoMedia getProductMedia() {
        return CriteoMedia.create(this.assets.m25626n().m25604e());
    }

    public String getTitle() {
        return this.assets.m25626n().mo25602g();
    }

    public void renderNativeView(View view) {
        this.renderer.renderNativeView(this.rendererHelper, view, this);
        watchForImpression(view);
        setProductClickableView(view);
        ImageView m25982a = this.adChoiceOverlay.m25982a(view);
        if (m25982a != null) {
            setAdChoiceClickableView(m25982a);
            this.rendererHelper.setMediaInView(this.assets.m25627m(), m25982a, null);
        }
    }

    void setAdChoiceClickableView(View view) {
        this.clickDetection.m25981a(view, this.clickOnAdChoiceHandler);
    }

    void setProductClickableView(View view) {
        this.clickDetection.m25981a(view, this.clickOnProductHandler);
    }

    void setRenderer(CriteoNativeRenderer criteoNativeRenderer) {
        this.renderer = criteoNativeRenderer;
    }

    void watchForImpression(View view) {
        C8251q.ViewTreeObserver$OnPreDrawListenerC8252a viewTreeObserver$OnPreDrawListenerC8252a;
        C8251q c8251q = this.visibilityTracker;
        C8244j c8244j = this.impressionTask;
        synchronized (c8251q.f29800c) {
            C8251q.ViewTreeObserver$OnPreDrawListenerC8252a viewTreeObserver$OnPreDrawListenerC8252a2 = c8251q.f29799b.get(view);
            viewTreeObserver$OnPreDrawListenerC8252a = viewTreeObserver$OnPreDrawListenerC8252a2;
            if (viewTreeObserver$OnPreDrawListenerC8252a2 == null) {
                viewTreeObserver$OnPreDrawListenerC8252a = new C8251q.ViewTreeObserver$OnPreDrawListenerC8252a(new WeakReference(view), c8251q.f29798a);
                c8251q.f29799b.put(view, viewTreeObserver$OnPreDrawListenerC8252a);
            }
        }
        viewTreeObserver$OnPreDrawListenerC8252a.f29801a = c8244j;
    }
}
