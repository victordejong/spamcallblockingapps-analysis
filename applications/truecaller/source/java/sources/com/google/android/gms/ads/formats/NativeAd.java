package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd.class */
public abstract class NativeAd {
    @RecentlyNonNull
    public static final String ASSET_ADCHOICES_CONTAINER_VIEW = "1098";

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd$AdChoicesInfo.class */
    public static abstract class AdChoicesInfo {
        @RecentlyNonNull
        public abstract List<Image> getImages();

        @RecentlyNonNull
        public abstract CharSequence getText();
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd$Image.class */
    public static abstract class Image {
        @RecentlyNonNull
        public abstract Drawable getDrawable();

        public abstract double getScale();

        @RecentlyNonNull
        public abstract Uri getUri();

        public int zza() {
            return -1;
        }

        public int zzb() {
            return -1;
        }
    }

    @KeepForSdk
    @Deprecated
    public abstract void performClick(@RecentlyNonNull Bundle bundle);

    @KeepForSdk
    @Deprecated
    public abstract boolean recordImpression(@RecentlyNonNull Bundle bundle);

    @KeepForSdk
    @Deprecated
    public abstract void reportTouchEvent(@RecentlyNonNull Bundle bundle);
}
