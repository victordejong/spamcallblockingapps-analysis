package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.C1974i;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer.class */
public class AdChoiceOverlayNativeRenderer implements CriteoNativeRenderer {
    @NonNull
    public final C1941b adChoiceOverlay;
    @NonNull
    public final CriteoNativeRenderer delegate;

    public AdChoiceOverlayNativeRenderer(@NonNull CriteoNativeRenderer criteoNativeRenderer) {
        this(criteoNativeRenderer, C1974i.m35912U().m35911a());
    }

    public AdChoiceOverlayNativeRenderer(@NonNull CriteoNativeRenderer criteoNativeRenderer, @NonNull C1941b bVar) {
        this.delegate = criteoNativeRenderer;
        this.adChoiceOverlay = bVar;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    @NonNull
    public View createNativeView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return this.adChoiceOverlay.m35984a(this.delegate.createNativeView(context, viewGroup));
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public void renderNativeView(@NonNull RendererHelper rendererHelper, @NonNull View view, @NonNull CriteoNativeAd criteoNativeAd) {
        View c = this.adChoiceOverlay.m35982c(view);
        if (c != null) {
            this.delegate.renderNativeView(rendererHelper, c, criteoNativeAd);
        }
    }
}
