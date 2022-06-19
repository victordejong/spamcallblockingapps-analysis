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
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeImageHelper.class */
public class NativeImageHelper {

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$ImageListener.class */
    public interface ImageListener {
        void onImagesCached();

        void onImagesFailedToCache(NativeErrorCode nativeErrorCode);
    }

    /* renamed from: com.mopub.nativeads.NativeImageHelper$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$a.class */
    public static final class C1204a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ AtomicInteger f5250a;

        /* renamed from: b */
        public final /* synthetic */ AtomicBoolean f5251b;

        /* renamed from: c */
        public final /* synthetic */ ImageListener f5252c;

        public C1204a(AtomicInteger atomicInteger, AtomicBoolean atomicBoolean, ImageListener imageListener) {
            this.f5250a = atomicInteger;
            this.f5251b = atomicBoolean;
            this.f5252c = imageListener;
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to download a native ads image:", volleyError);
            boolean andSet = this.f5251b.getAndSet(true);
            this.f5250a.decrementAndGet();
            if (!andSet) {
                this.f5252c.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (imageContainer.getBitmap() == null || this.f5250a.decrementAndGet() != 0 || this.f5251b.get()) {
                return;
            }
            this.f5252c.onImagesCached();
        }
    }

    /* renamed from: com.mopub.nativeads.NativeImageHelper$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$b.class */
    public static final class C1205b implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ ImageView f5253a;

        public C1205b(ImageView imageView) {
            this.f5253a = imageView;
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to load image.", volleyError);
            this.f5253a.setImageDrawable(null);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (!z) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Image was not loaded immediately into your ad view. You should call preCacheImages as part of your custom event loading process.");
            }
            this.f5253a.setImageBitmap(imageContainer.getBitmap());
        }
    }

    public static void loadImageView(String str, ImageView imageView) {
        if (Preconditions.NoThrow.checkNotNull(imageView, "Cannot load image into null ImageView") && Preconditions.NoThrow.checkNotNull(imageView.getContext(), "Cannot load image into ImageView with null context")) {
            if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load image with null url")) {
                imageView.setImageDrawable(null);
            } else {
                Networking.getImageLoader(imageView.getContext()).get(str, new C1205b(imageView));
            }
        }
    }

    public static void preCacheImages(Context context, List<String> list, ImageListener imageListener) {
        MaxWidthImageLoader imageLoader = Networking.getImageLoader(context);
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        C1204a c1204a = new C1204a(atomicInteger, atomicBoolean, imageListener);
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                atomicBoolean.set(true);
                imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                return;
            }
            imageLoader.get(str, c1204a);
        }
    }
}
