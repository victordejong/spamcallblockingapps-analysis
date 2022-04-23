package com.facebook.ads;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.AdComponentView;
import com.facebook.ads.internal.api.NativeAdLayoutApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/NativeAdLayout.class */
public class NativeAdLayout extends AdComponentView {
    public NativeAdLayoutApi mNativeAdLayoutApi;

    public NativeAdLayout(Context context) {
        super(context);
        initializeSelf(context);
    }

    public NativeAdLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initializeSelf(context);
    }

    public NativeAdLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initializeSelf(context);
    }

    public NativeAdLayout(Context context, NativeAdLayoutApi nativeAdLayoutApi) {
        super(context);
        this.mNativeAdLayoutApi = nativeAdLayoutApi;
        attachAdComponentViewApi(nativeAdLayoutApi);
        this.mNativeAdLayoutApi.initialize(this);
    }

    private void initializeSelf(Context context) {
        NativeAdLayoutApi createNativeAdLayoutApi = DynamicLoaderFactory.makeLoader(context).createNativeAdLayoutApi();
        this.mNativeAdLayoutApi = createNativeAdLayoutApi;
        attachAdComponentViewApi(createNativeAdLayoutApi);
        this.mNativeAdLayoutApi.initialize(this);
    }

    public NativeAdLayoutApi getNativeAdLayoutApi() {
        return this.mNativeAdLayoutApi;
    }

    public void setMaxWidth(int i) {
        this.mNativeAdLayoutApi.setMaxWidth(i);
    }

    public void setMinWidth(int i) {
        this.mNativeAdLayoutApi.setMinWidth(i);
    }
}
