package com.criteo.mediation.mopub.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeRenderer;
import com.criteo.publisher.advancednative.RendererHelper;
/* renamed from: com.criteo.mediation.mopub.advancednative.b */
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/advancednative/b.class */
public class C1891b implements CriteoNativeRenderer {
    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    @NonNull
    public View createNativeView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return new View(context);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
    public void renderNativeView(@NonNull RendererHelper rendererHelper, @NonNull View view, @NonNull CriteoNativeAd criteoNativeAd) {
    }
}
