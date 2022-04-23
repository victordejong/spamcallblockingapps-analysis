package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeImageHelper.class */
public class NativeImageHelper {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$ImageListener.class */
    public interface ImageListener {
        void onImagesCached();

        void onImagesFailedToCache(NativeErrorCode nativeErrorCode);
    }

    /* renamed from: com.mopub.nativeads.NativeImageHelper$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$a.class */
    public static final class C8962a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ AtomicInteger f34859a;

        /* renamed from: b */
        public final /* synthetic */ AtomicBoolean f34860b;

        /* renamed from: c */
        public final /* synthetic */ ImageListener f34861c;

        public C8962a(AtomicInteger atomicInteger, AtomicBoolean atomicBoolean, ImageListener imageListener) {
            this.f34859a = atomicInteger;
            this.f34860b = atomicBoolean;
            this.f34861c = imageListener;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to download a native ads image:", volleyError);
            boolean andSet = this.f34860b.getAndSet(true);
            this.f34859a.decrementAndGet();
            if (!andSet) {
                this.f34861c.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (imageContainer.getBitmap() != null && this.f34859a.decrementAndGet() == 0 && !this.f34860b.get()) {
                this.f34861c.onImagesCached();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NativeImageHelper$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$b.class */
    public static final class C8963b implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ ImageView f34862a;

        public C8963b(ImageView imageView) {
            this.f34862a = imageView;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to load image.", volleyError);
            this.f34862a.setImageDrawable(null);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (!z) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Image was not loaded immediately into your ad view. You should call preCacheImages as part of your custom event loading process.");
            }
            this.f34862a.setImageBitmap(imageContainer.getBitmap());
        }
    }

    public static void loadImageView(String str, ImageView imageView) {
        if (Preconditions.NoThrow.checkNotNull(imageView, "Cannot load image into null ImageView")) {
            if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load image with null url")) {
                imageView.setImageDrawable(null);
            } else {
                Networking.getImageLoader(imageView.getContext()).get(str, new C8963b(imageView));
            }
        }
    }

    public static void preCacheImages(Context context, List<String> list, ImageListener imageListener) {
        ImageLoader imageLoader = Networking.getImageLoader(context);
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        C8962a aVar = new C8962a(atomicInteger, atomicBoolean, imageListener);
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
