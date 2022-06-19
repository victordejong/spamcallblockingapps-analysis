package com.facebook.ads.internal.api;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/api/AdCompanionView.class */
public class AdCompanionView extends AdComponentFrameLayout {

    /* renamed from: a */
    public AdCompanionViewApi f2581a;

    public AdCompanionView(Context context) {
        super(context);
        initializeSelf(context);
    }

    public AdCompanionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initializeSelf(context);
    }

    public AdCompanionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initializeSelf(context);
    }

    public AdCompanionViewApi getAdCompanionViewApi() {
        return this.f2581a;
    }

    public final void initializeSelf(Context context) {
        AdCompanionViewApi createAdCompanionViewApi = DynamicLoaderFactory.makeLoader(context).createAdCompanionViewApi();
        this.f2581a = createAdCompanionViewApi;
        attachAdComponentViewApi(createAdCompanionViewApi);
        this.f2581a.initialize(this);
    }
}
