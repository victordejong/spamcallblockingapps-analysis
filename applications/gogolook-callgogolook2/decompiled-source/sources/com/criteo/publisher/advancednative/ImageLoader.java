package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.net.URL;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/ImageLoader.class */
public interface ImageLoader {
    @UiThread
    void loadImageInto(@NonNull URL url, @NonNull ImageView imageView, @Nullable Drawable drawable) throws Exception;

    void preload(@NonNull URL url) throws Exception;
}
