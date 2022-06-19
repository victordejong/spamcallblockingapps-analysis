package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.mopub.common.Preconditions;
import com.mopub.network.MaxWidthImageLoader;
import com.mopub.network.Networking;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeImageHelper.class */
public class NativeImageHelper {

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$ImageListener.class */
    public interface ImageListener {
        void onImagesCached();

        void onImagesFailedToCache(NativeErrorCode nativeErrorCode);
    }

    public static void loadImageView(String str, ImageView imageView) {
        if (Preconditions.NoThrow.checkNotNull(imageView, "Cannot load image into null ImageView") && Preconditions.NoThrow.checkNotNull(imageView.getContext(), "Cannot load image into ImageView with null context")) {
            if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load image with null url")) {
                imageView.setImageDrawable(null);
            } else {
                Networking.getImageLoader(imageView.getContext()).get(str, new b(imageView));
            }
        }
    }

    public static void preCacheImages(Context context, List<String> list, ImageListener imageListener) {
        MaxWidthImageLoader imageLoader = Networking.getImageLoader(context);
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        a aVar = new a(atomicInteger, atomicBoolean, imageListener);
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                atomicBoolean.set(true);
                imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                return;
            }
            imageLoader.get(str, aVar);
        }
    }
}
