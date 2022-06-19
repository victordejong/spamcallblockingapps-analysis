package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Keep;
import java.net.URL;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/ImageLoader.class */
public interface ImageLoader {
    void loadImageInto(URL url, ImageView imageView, Drawable drawable) throws Exception;

    void preload(URL url) throws Exception;
}
