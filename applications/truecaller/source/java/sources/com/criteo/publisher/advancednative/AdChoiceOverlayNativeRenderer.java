package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Keep;
import com.criteo.publisher.annotation.Internal;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.p1529r1.C23042e;
import p193e.p1512i.p1516b.p1531s2.C23078c;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer.class */
public class AdChoiceOverlayNativeRenderer implements CriteoNativeRenderer {
    private final C23042e adChoiceOverlay;
    private final CriteoNativeRenderer delegate;

    @Internal({Internal.MOPUB_ADAPTER, Internal.ADMOB_ADAPTER})
    public AdChoiceOverlayNativeRenderer(CriteoNativeRenderer criteoNativeRenderer) {
        this(criteoNativeRenderer, C23157x2.m7454h().m7455g());
    }

    public AdChoiceOverlayNativeRenderer(CriteoNativeRenderer criteoNativeRenderer, C23042e c23042e) {
        this.delegate = criteoNativeRenderer;
        this.adChoiceOverlay = c23042e;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public View createNativeView(Context context, ViewGroup viewGroup) {
        C23042e c23042e = this.adChoiceOverlay;
        View createNativeView = this.delegate.createNativeView(context, viewGroup);
        Objects.requireNonNull(c23042e);
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
        C23078c c23078c = c23042e.f63838c;
        Objects.requireNonNull(c23042e.f63837b);
        layoutParams2.width = c23078c.m7565b(19);
        C23078c c23078c2 = c23042e.f63838c;
        Objects.requireNonNull(c23042e.f63837b);
        layoutParams2.height = c23078c2.m7565b(15);
        imageView.setMinimumWidth(layoutParams2.width);
        imageView.setMinimumHeight(layoutParams2.height);
        imageView.setElevation(1000.0f);
        imageView.setOutlineProvider(null);
        c23042e.f63836a.put(frameLayout, new WeakReference<>(imageView));
        return frameLayout;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd) {
        View childAt = this.adChoiceOverlay.m7577a(view) == null ? null : ((ViewGroup) view).getChildAt(0);
        if (childAt != null) {
            this.delegate.renderNativeView(rendererHelper, childAt, criteoNativeAd);
        }
    }
}
