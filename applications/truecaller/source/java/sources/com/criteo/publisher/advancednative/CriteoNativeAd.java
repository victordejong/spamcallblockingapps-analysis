package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Keep;
import com.criteo.publisher.annotation.Internal;
import java.lang.ref.WeakReference;
import p193e.p1512i.p1516b.p1529r1.AbstractC23061u;
import p193e.p1512i.p1516b.p1529r1.C23042e;
import p193e.p1512i.p1516b.p1529r1.C23046h;
import p193e.p1512i.p1516b.p1529r1.C23058r;
import p193e.p1512i.p1516b.p1529r1.C23063w;
import p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23111n;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAd.class */
public class CriteoNativeAd {
    private final C23042e adChoiceOverlay;
    private final AbstractC23111n assets;
    private final C23046h clickDetection;
    private final AbstractC23061u clickOnAdChoiceHandler;
    private final AbstractC23061u clickOnProductHandler;
    private final C23058r impressionTask;
    private CriteoNativeRenderer renderer;
    private final RendererHelper rendererHelper;
    private final C23063w visibilityTracker;

    public CriteoNativeAd(AbstractC23111n abstractC23111n, C23063w c23063w, C23058r c23058r, C23046h c23046h, AbstractC23061u abstractC23061u, AbstractC23061u abstractC23061u2, C23042e c23042e, CriteoNativeRenderer criteoNativeRenderer, RendererHelper rendererHelper) {
        this.assets = abstractC23111n;
        this.visibilityTracker = c23063w;
        this.impressionTask = c23058r;
        this.clickDetection = c23046h;
        this.clickOnProductHandler = abstractC23061u;
        this.clickOnAdChoiceHandler = abstractC23061u2;
        this.adChoiceOverlay = c23042e;
        this.renderer = criteoNativeRenderer;
        this.rendererHelper = rendererHelper;
    }

    public View createNativeRenderedView(Context context, ViewGroup viewGroup) {
        View createNativeView = this.renderer.createNativeView(context, viewGroup);
        renderNativeView(createNativeView);
        return createNativeView;
    }

    @Internal({Internal.ADMOB_ADAPTER})
    public ImageView getAdChoiceView(View view) {
        return this.adChoiceOverlay.m7577a(view);
    }

    public String getAdvertiserDescription() {
        return this.assets.mo7547a().mo7551a();
    }

    public String getAdvertiserDomain() {
        return this.assets.mo7547a().mo7550b();
    }

    public CriteoMedia getAdvertiserLogoMedia() {
        return CriteoMedia.create(this.assets.m7546b());
    }

    public String getCallToAction() {
        return this.assets.m7540h().mo7534a();
    }

    public String getDescription() {
        return this.assets.m7540h().mo7532c();
    }

    public String getLegalText() {
        return this.assets.mo7542f().mo7535c();
    }

    public String getPrice() {
        return this.assets.m7540h().mo7529f();
    }

    public CriteoMedia getProductMedia() {
        return CriteoMedia.create(this.assets.m7540h().m7530e());
    }

    public String getTitle() {
        return this.assets.m7540h().mo7528g();
    }

    public void renderNativeView(View view) {
        this.renderer.renderNativeView(this.rendererHelper, view, this);
        watchForImpression(view);
        setProductClickableView(view);
        ImageView m7577a = this.adChoiceOverlay.m7577a(view);
        if (m7577a != null) {
            setAdChoiceClickableView(m7577a);
            this.rendererHelper.setMediaInView(this.assets.m7541g(), m7577a, null);
        }
    }

    @Internal({Internal.ADMOB_ADAPTER})
    public void setAdChoiceClickableView(View view) {
        this.clickDetection.m7574a(view, this.clickOnAdChoiceHandler);
    }

    public void setProductClickableView(View view) {
        this.clickDetection.m7574a(view, this.clickOnProductHandler);
    }

    @Internal({Internal.MOPUB_ADAPTER, Internal.ADMOB_ADAPTER})
    public void setRenderer(CriteoNativeRenderer criteoNativeRenderer) {
        this.renderer = criteoNativeRenderer;
    }

    public void watchForImpression(View view) {
        C23063w.ViewTreeObserver$OnPreDrawListenerC23064a viewTreeObserver$OnPreDrawListenerC23064a;
        C23063w c23063w = this.visibilityTracker;
        C23058r c23058r = this.impressionTask;
        synchronized (c23063w.f63876c) {
            C23063w.ViewTreeObserver$OnPreDrawListenerC23064a viewTreeObserver$OnPreDrawListenerC23064a2 = c23063w.f63875b.get(view);
            viewTreeObserver$OnPreDrawListenerC23064a = viewTreeObserver$OnPreDrawListenerC23064a2;
            if (viewTreeObserver$OnPreDrawListenerC23064a2 == null) {
                viewTreeObserver$OnPreDrawListenerC23064a = new C23063w.ViewTreeObserver$OnPreDrawListenerC23064a(new WeakReference(view), c23063w.f63874a);
                c23063w.f63875b.put(view, viewTreeObserver$OnPreDrawListenerC23064a);
            }
        }
        viewTreeObserver$OnPreDrawListenerC23064a.f63879c = c23058r;
    }
}
