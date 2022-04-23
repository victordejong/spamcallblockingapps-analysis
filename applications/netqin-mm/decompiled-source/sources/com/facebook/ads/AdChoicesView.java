package com.facebook.ads;

import android.content.Context;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.util.common.Preconditions;
@Keep
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdChoicesView.class */
public class AdChoicesView extends RelativeLayout {
    @Deprecated
    public AdChoicesView(Context context, NativeAdBase nativeAdBase) {
        this((Context) Preconditions.checkNotNull(context, "Context can not be null."), nativeAdBase, false);
    }

    @Deprecated
    public AdChoicesView(Context context, NativeAdBase nativeAdBase, NativeAdLayout nativeAdLayout) {
        this((Context) Preconditions.checkNotNull(context, "Context can not be null."), nativeAdBase, false, nativeAdLayout);
    }

    @Deprecated
    public AdChoicesView(Context context, NativeAdBase nativeAdBase, boolean z) {
        this((Context) Preconditions.checkNotNull(context, "Context can not be null."), nativeAdBase, z, null);
    }

    @Deprecated
    public AdChoicesView(Context context, NativeAdBase nativeAdBase, boolean z, NativeAdLayout nativeAdLayout) {
        super((Context) Preconditions.checkNotNull(context, "Context can not be null."));
        DynamicLoaderFactory.makeLoader(context).createAdChoicesViewApi(this, context, nativeAdBase).initialize(z, nativeAdLayout);
    }
}
