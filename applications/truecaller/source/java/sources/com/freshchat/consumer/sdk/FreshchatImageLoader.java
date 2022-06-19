package com.freshchat.consumer.sdk;

import android.graphics.Bitmap;
import android.widget.ImageView;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FreshchatImageLoader.class */
public interface FreshchatImageLoader {
    void fetch(FreshchatImageLoaderRequest freshchatImageLoaderRequest);

    Bitmap get(FreshchatImageLoaderRequest freshchatImageLoaderRequest);

    void load(FreshchatImageLoaderRequest freshchatImageLoaderRequest, ImageView imageView);
}
