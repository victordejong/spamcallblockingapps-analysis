package com.criteo.publisher.advancednative;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.criteo.publisher.C8520q;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer.class */
public class AdChoiceOverlayNativeRenderer implements CriteoNativeRenderer {
    private final C8227b adChoiceOverlay;
    private final CriteoNativeRenderer delegate;

    AdChoiceOverlayNativeRenderer(CriteoNativeRenderer criteoNativeRenderer) {
        this(criteoNativeRenderer, C8520q.m25449a().m25390s());
    }

    public AdChoiceOverlayNativeRenderer(CriteoNativeRenderer criteoNativeRenderer, C8227b c8227b) {
        this.delegate = criteoNativeRenderer;
        this.adChoiceOverlay = c8227b;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public View createNativeView(Context context, ViewGroup viewGroup) {
        C8227b c8227b = this.adChoiceOverlay;
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
        layoutParams2.width = c8227b.f29757b.m25696a(19);
        layoutParams2.height = c8227b.f29757b.m25696a(15);
        imageView.setMinimumWidth(layoutParams2.width);
        imageView.setMinimumHeight(layoutParams2.height);
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setElevation(1000.0f);
            imageView.setOutlineProvider(null);
        }
        c8227b.f29756a.put(frameLayout, new WeakReference<>(imageView));
        return frameLayout;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd) {
        View childAt = this.adChoiceOverlay.m25982a(view) == null ? null : ((ViewGroup) view).getChildAt(0);
        if (childAt != null) {
            this.delegate.renderNativeView(rendererHelper, childAt, criteoNativeAd);
        }
    }
}
