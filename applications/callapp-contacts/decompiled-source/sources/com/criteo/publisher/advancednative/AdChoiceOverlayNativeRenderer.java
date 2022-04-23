package com.criteo.publisher.advancednative;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.criteo.publisher.q;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer.class */
class AdChoiceOverlayNativeRenderer implements CriteoNativeRenderer {
    private final b adChoiceOverlay;
    private final CriteoNativeRenderer delegate;

    AdChoiceOverlayNativeRenderer(CriteoNativeRenderer criteoNativeRenderer) {
        this(criteoNativeRenderer, q.a().s());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdChoiceOverlayNativeRenderer(CriteoNativeRenderer criteoNativeRenderer, b bVar) {
        this.delegate = criteoNativeRenderer;
        this.adChoiceOverlay = bVar;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public View createNativeView(Context context, ViewGroup viewGroup) {
        b bVar = this.adChoiceOverlay;
        View createNativeView = this.delegate.createNativeView(context, viewGroup);
        Context context2 = createNativeView.getContext();
        ImageView imageView = new ImageView(context2);
        FrameLayout frameLayout = new FrameLayout(context2);
        ViewGroup.LayoutParams layoutParams = createNativeView.getLayoutParams();
        if (layoutParams != null) {
            frameLayout.setLayoutParams(layoutParams);
        }
        frameLayout.addView(createNativeView);
        frameLayout.addView(imageView);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams2.gravity = 5;
        layoutParams2.width = bVar.f17153b.a(19);
        layoutParams2.height = bVar.f17153b.a(15);
        imageView.setMinimumWidth(layoutParams2.width);
        imageView.setMinimumHeight(layoutParams2.height);
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setElevation(1000.0f);
            imageView.setOutlineProvider(null);
        }
        bVar.f17152a.put(frameLayout, new WeakReference<>(imageView));
        return frameLayout;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd) {
        View childAt = this.adChoiceOverlay.a(view) == null ? null : ((ViewGroup) view).getChildAt(0);
        if (childAt != null) {
            this.delegate.renderNativeView(rendererHelper, childAt, criteoNativeAd);
        }
    }
}
