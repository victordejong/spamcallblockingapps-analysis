package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.p021z.AbstractC2075n;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAd.class */
public class CriteoNativeAd {
    @NonNull
    public final C1941b adChoiceOverlay;
    @NonNull
    public final AbstractC2075n assets;
    @NonNull
    public final C1945e clickDetection;
    @NonNull
    public final AbstractC1958l clickOnAdChoiceHandler;
    @NonNull
    public final AbstractC1958l clickOnProductHandler;
    @NonNull
    public final C1956j impressionTask;
    @NonNull
    public CriteoNativeRenderer renderer;
    @NonNull
    public final RendererHelper rendererHelper;
    @NonNull
    public final C1961o visibilityTracker;

    public CriteoNativeAd(@NonNull AbstractC2075n nVar, @NonNull C1961o oVar, @NonNull C1956j jVar, @NonNull C1945e eVar, @NonNull AbstractC1958l lVar, @NonNull AbstractC1958l lVar2, @NonNull C1941b bVar, @NonNull CriteoNativeRenderer criteoNativeRenderer, @NonNull RendererHelper rendererHelper) {
        this.assets = nVar;
        this.visibilityTracker = oVar;
        this.impressionTask = jVar;
        this.clickDetection = eVar;
        this.clickOnProductHandler = lVar;
        this.clickOnAdChoiceHandler = lVar2;
        this.adChoiceOverlay = bVar;
        this.renderer = criteoNativeRenderer;
        this.rendererHelper = rendererHelper;
    }

    @NonNull
    public View createNativeRenderedView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        View createNativeView = this.renderer.createNativeView(context, viewGroup);
        renderNativeView(createNativeView);
        return createNativeView;
    }

    @Nullable
    @VisibleForTesting
    public ImageView getAdChoiceView(@NonNull View view) {
        return this.adChoiceOverlay.m35983b(view);
    }

    @NonNull
    public String getAdvertiserDescription() {
        return this.assets.m35755b();
    }

    @NonNull
    public String getAdvertiserDomain() {
        return this.assets.m35754c();
    }

    @NonNull
    public CriteoMedia getAdvertiserLogoMedia() {
        return CriteoMedia.create(this.assets.m35752e());
    }

    @NonNull
    public String getCallToAction() {
        return this.assets.m35744m().mo35726a();
    }

    @NonNull
    public String getDescription() {
        return this.assets.m35744m().mo35723c();
    }

    @NonNull
    public String getPrice() {
        return this.assets.m35744m().mo35720f();
    }

    @NonNull
    public CriteoMedia getProductMedia() {
        return CriteoMedia.create(this.assets.m35744m().m35721e());
    }

    @NonNull
    public String getTitle() {
        return this.assets.m35744m().mo35719g();
    }

    public void renderNativeView(@NonNull View view) {
        this.renderer.renderNativeView(this.rendererHelper, view, this);
        watchForImpression(view);
        setProductClickableView(view);
        ImageView b = this.adChoiceOverlay.m35983b(view);
        if (b != null) {
            setAdChoiceClickableView(b);
            this.rendererHelper.setMediaInView(this.assets.m35745l(), b, null);
        }
    }

    @VisibleForTesting
    public void setAdChoiceClickableView(@NonNull View view) {
        this.clickDetection.m35979a(view, this.clickOnAdChoiceHandler);
    }

    @VisibleForTesting
    public void setProductClickableView(@NonNull View view) {
        this.clickDetection.m35979a(view, this.clickOnProductHandler);
    }

    public void setRenderer(@NonNull CriteoNativeRenderer criteoNativeRenderer) {
        this.renderer = criteoNativeRenderer;
    }

    @VisibleForTesting
    public void watchForImpression(@NonNull View view) {
        this.visibilityTracker.m35965a(view, this.impressionTask);
    }
}
