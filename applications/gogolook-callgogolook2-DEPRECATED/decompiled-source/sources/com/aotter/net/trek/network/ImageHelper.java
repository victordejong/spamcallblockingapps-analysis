package com.aotter.net.trek.network;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.volley.toolbox.ImageLoader;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/ImageHelper.class */
public class ImageHelper {

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/ImageHelper$ImageListener.class */
    public interface ImageListener {
        void onImagesCached();
    }

    public static void loadImageView(@Nullable String str, @Nullable ImageView imageView) {
        if (Preconditions.NoThrow.checkNotNull(imageView, "Cannot load image into null ImageView")) {
            if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load image with null url")) {
                imageView.setImageDrawable(null);
            } else {
                Networking.getImageLoader(imageView.getContext()).get(str, new C1756b(imageView));
            }
        }
    }

    public static void preCacheImages(@NonNull Context context, @NonNull List<String> list, @NonNull ImageListener imageListener) {
        ImageLoader imageLoader = Networking.getImageLoader(context);
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        C1755a aVar = new C1755a(atomicInteger, atomicBoolean, imageListener);
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                atomicBoolean.set(true);
                return;
            }
            imageLoader.get(str, aVar);
        }
    }
}
