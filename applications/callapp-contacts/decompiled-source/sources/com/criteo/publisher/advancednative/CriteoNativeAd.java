package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.criteo.publisher.advancednative.q;
import com.criteo.publisher.model.b0.n;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAd.class */
public class CriteoNativeAd {
    private final b adChoiceOverlay;
    private final n assets;
    private final e clickDetection;
    private final n clickOnAdChoiceHandler;
    private final n clickOnProductHandler;
    private final j impressionTask;
    private CriteoNativeRenderer renderer;
    private final RendererHelper rendererHelper;
    private final q visibilityTracker;

    public CriteoNativeAd(n nVar, q qVar, j jVar, e eVar, n nVar2, n nVar3, b bVar, CriteoNativeRenderer criteoNativeRenderer, RendererHelper rendererHelper) {
        this.assets = nVar;
        this.visibilityTracker = qVar;
        this.impressionTask = jVar;
        this.clickDetection = eVar;
        this.clickOnProductHandler = nVar2;
        this.clickOnAdChoiceHandler = nVar3;
        this.adChoiceOverlay = bVar;
        this.renderer = criteoNativeRenderer;
        this.rendererHelper = rendererHelper;
    }

    public View createNativeRenderedView(Context context, ViewGroup viewGroup) {
        View createNativeView = this.renderer.createNativeView(context, viewGroup);
        renderNativeView(createNativeView);
        return createNativeView;
    }

    ImageView getAdChoiceView(View view) {
        return this.adChoiceOverlay.a(view);
    }

    public String getAdvertiserDescription() {
        return this.assets.c();
    }

    public String getAdvertiserDomain() {
        return this.assets.d();
    }

    public CriteoMedia getAdvertiserLogoMedia() {
        return CriteoMedia.create(this.assets.f());
    }

    public String getCallToAction() {
        return this.assets.n().a();
    }

    public String getDescription() {
        return this.assets.n().c();
    }

    public String getLegalText() {
        return this.assets.k();
    }

    public String getPrice() {
        return this.assets.n().f();
    }

    public CriteoMedia getProductMedia() {
        return CriteoMedia.create(this.assets.n().e());
    }

    public String getTitle() {
        return this.assets.n().g();
    }

    public void renderNativeView(View view) {
        this.renderer.renderNativeView(this.rendererHelper, view, this);
        watchForImpression(view);
        setProductClickableView(view);
        ImageView a2 = this.adChoiceOverlay.a(view);
        if (a2 != null) {
            setAdChoiceClickableView(a2);
            this.rendererHelper.setMediaInView(this.assets.m(), a2, null);
        }
    }

    void setAdChoiceClickableView(View view) {
        this.clickDetection.a(view, this.clickOnAdChoiceHandler);
    }

    void setProductClickableView(View view) {
        this.clickDetection.a(view, this.clickOnProductHandler);
    }

    void setRenderer(CriteoNativeRenderer criteoNativeRenderer) {
        this.renderer = criteoNativeRenderer;
    }

    void watchForImpression(View view) {
        q.a aVar;
        q qVar = this.visibilityTracker;
        j jVar = this.impressionTask;
        synchronized (qVar.f17194c) {
            q.a aVar2 = qVar.f17193b.get(view);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = new q.a(new WeakReference(view), qVar.f17192a);
                qVar.f17193b.put(view, aVar);
            }
        }
        aVar.f17195a = jVar;
    }
}
