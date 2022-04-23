package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeRenderer.class */
public interface CriteoNativeRenderer {
    @NonNull
    View createNativeView(@NonNull Context context, @Nullable ViewGroup viewGroup);

    void renderNativeView(@NonNull RendererHelper rendererHelper, @NonNull View view, @NonNull CriteoNativeAd criteoNativeAd);
}
