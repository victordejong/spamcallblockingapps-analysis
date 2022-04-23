package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeRenderer.class */
public interface CriteoNativeRenderer {
    View createNativeView(Context context, ViewGroup viewGroup);

    void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd);
}
