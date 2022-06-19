package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/ImageLoader.class */
public interface ImageLoader {
    void loadImageInto(URL url, ImageView imageView, Drawable drawable) throws Exception;

    void preload(URL url) throws Exception;
}
