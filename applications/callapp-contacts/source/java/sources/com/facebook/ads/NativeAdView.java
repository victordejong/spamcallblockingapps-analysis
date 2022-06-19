package com.facebook.ads;

import android.content.Context;
import android.view.View;
import com.facebook.ads.internal.api.NativeAdViewTypeApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.util.common.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdView.class */
public class NativeAdView {

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdView$Type.class */
    public enum Type {
        HEIGHT_300(2),
        HEIGHT_400(3);
        
        private final int mEnumCode;
        private NativeAdViewTypeApi mNativeAdViewTypeApi;

        @Deprecated
        Type(int i) {
            this.mEnumCode = i;
        }

        private NativeAdViewTypeApi getNativeAdViewTypeApi(int i) {
            if (this.mNativeAdViewTypeApi == null) {
                this.mNativeAdViewTypeApi = DynamicLoaderFactory.makeLoaderUnsafe().createNativeAdViewTypeApi(i);
            }
            return this.mNativeAdViewTypeApi;
        }

        public final int getEnumCode() {
            return this.mEnumCode;
        }

        @Deprecated
        public final int getHeight() {
            return getNativeAdViewTypeApi(this.mEnumCode).getHeight();
        }

        @Deprecated
        public final int getValue() {
            return getNativeAdViewTypeApi(this.mEnumCode).getValue();
        }

        @Deprecated
        public final int getWidth() {
            return getNativeAdViewTypeApi(this.mEnumCode).getWidth();
        }
    }

    public static View render(Context context, NativeAd nativeAd) {
        Preconditions.checkNotNull(context, "context must be not null");
        Preconditions.checkNotNull(nativeAd, "nativeAd must be not null");
        return DynamicLoaderFactory.makeLoader(context).createNativeAdViewApi().render(context, nativeAd);
    }

    @Deprecated
    public static View render(Context context, NativeAd nativeAd, Type type) {
        Preconditions.checkNotNull(context, "context must be not null");
        Preconditions.checkNotNull(nativeAd, "nativeAd must be not null");
        return DynamicLoaderFactory.makeLoader(context).createNativeAdViewApi().render(context, nativeAd, type);
    }

    @Deprecated
    public static View render(Context context, NativeAd nativeAd, Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        Preconditions.checkNotNull(context, "context must be not null");
        Preconditions.checkNotNull(nativeAd, "nativeAd must be not null");
        Preconditions.checkNotNull(type, "type must be not null");
        return DynamicLoaderFactory.makeLoader(context).createNativeAdViewApi().render(context, nativeAd, type, nativeAdViewAttributes);
    }

    public static View render(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        Preconditions.checkNotNull(context, "context must be not null");
        Preconditions.checkNotNull(nativeAd, "nativeAd must be not null");
        return DynamicLoaderFactory.makeLoader(context).createNativeAdViewApi().render(context, nativeAd, nativeAdViewAttributes);
    }
}
