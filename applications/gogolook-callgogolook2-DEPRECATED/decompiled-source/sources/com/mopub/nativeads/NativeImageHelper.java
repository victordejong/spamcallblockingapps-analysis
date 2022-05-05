package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
    public static final class C4001a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ AtomicInteger f9240a;

        /* renamed from: b */
        public final /* synthetic */ AtomicBoolean f9241b;

        /* renamed from: c */
        public final /* synthetic */ ImageListener f9242c;

        public C4001a(AtomicInteger atomicInteger, AtomicBoolean atomicBoolean, ImageListener imageListener) {
            this.f9240a = atomicInteger;
            this.f9241b = atomicBoolean;
            this.f9242c = imageListener;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to download a native ads image:", volleyError);
            boolean andSet = this.f9241b.getAndSet(true);
            this.f9240a.decrementAndGet();
            if (!andSet) {
                this.f9242c.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (imageContainer.getBitmap() != null && this.f9240a.decrementAndGet() == 0 && !this.f9241b.get()) {
                this.f9242c.onImagesCached();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NativeImageHelper$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeImageHelper$b.class */
    public static final class C4002b implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ ImageView f9243a;

        public C4002b(ImageView imageView) {
            this.f9243a = imageView;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to load image.", volleyError);
            this.f9243a.setImageDrawable(null);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (!z) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Image was not loaded immediately into your ad view. You should call preCacheImages as part of your custom event loading process.");
            }
            this.f9243a.setImageBitmap(imageContainer.getBitmap());
        }
    }

    public static void loadImageView(@Nullable String str, @Nullable ImageView imageView) {
        if (Preconditions.NoThrow.checkNotNull(imageView, "Cannot load image into null ImageView")) {
            if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load image with null url")) {
                imageView.setImageDrawable(null);
            } else {
                Networking.getImageLoader(imageView.getContext()).get(str, new C4002b(imageView));
            }
        }
    }

    public static void preCacheImages(@NonNull Context context, @NonNull List<String> list, @NonNull ImageListener imageListener) {
        ImageLoader imageLoader = Networking.getImageLoader(context);
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        C4001a aVar = new C4001a(atomicInteger, atomicBoolean, imageListener);
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
