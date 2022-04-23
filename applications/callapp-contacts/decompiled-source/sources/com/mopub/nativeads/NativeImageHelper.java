package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.MaxWidthImageLoader;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeImageHelper.class */
public class NativeImageHelper {

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$ImageListener.class */
    public interface ImageListener {
        void onImagesCached();

        void onImagesFailedToCache(NativeErrorCode nativeErrorCode);
    }

    public static void loadImageView(String str, final ImageView imageView) {
        if (!Preconditions.NoThrow.checkNotNull(imageView, "Cannot load image into null ImageView") || !Preconditions.NoThrow.checkNotNull(imageView.getContext(), "Cannot load image into ImageView with null context")) {
            return;
        }
        if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load image with null url")) {
            imageView.setImageDrawable(null);
        } else {
            Networking.getImageLoader(imageView.getContext()).get(str, new ImageLoader.ImageListener() { // from class: com.mopub.nativeads.NativeImageHelper.2
                @Override // com.mopub.volley.Response.ErrorListener
                public final void onErrorResponse(VolleyError volleyError) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to load image.", volleyError);
                    imageView.setImageDrawable(null);
                }

                @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Image was not loaded immediately into your ad view. You should call preCacheImages as part of your custom event loading process.");
                    }
                    imageView.setImageBitmap(imageContainer.getBitmap());
                }
            });
        }
    }

    public static void preCacheImages(Context context, List<String> list, final ImageListener imageListener) {
        final MaxWidthImageLoader imageLoader = Networking.getImageLoader(context);
        final AtomicInteger atomicInteger = new AtomicInteger(list.size());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ImageLoader.ImageListener imageListener2 = new ImageLoader.ImageListener() { // from class: com.mopub.nativeads.NativeImageHelper.1
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                int i;
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to download a native ads image:", volleyError);
                if (!(volleyError == null || volleyError.networkResponse == null || (301 != (i = volleyError.networkResponse.statusCode) && 302 != i && 303 != i))) {
                    String str = volleyError.networkResponse.headers.get("Location");
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Location: ".concat(String.valueOf(str)));
                    if (str != null) {
                        imageLoader.get(str, this);
                        return;
                    }
                }
                boolean andSet = atomicBoolean.getAndSet(true);
                atomicInteger.decrementAndGet();
                if (!andSet) {
                    imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                }
            }

            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                if (imageContainer.getBitmap() != null && atomicInteger.decrementAndGet() == 0 && !atomicBoolean.get()) {
                    imageListener.onImagesCached();
                }
            }
        };
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                atomicBoolean.set(true);
                imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                return;
            }
            imageLoader.get(str, imageListener2);
        }
    }
}
