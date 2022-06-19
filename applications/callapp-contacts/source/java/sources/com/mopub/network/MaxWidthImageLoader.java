package com.mopub.network;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/MaxWidthImageLoader.class */
public class MaxWidthImageLoader extends ImageLoader {

    /* renamed from: c */
    private final int f60295c;

    public MaxWidthImageLoader(RequestQueue requestQueue, Context context, ImageLoader.ImageCache imageCache) {
        super(requestQueue, imageCache);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.f60295c = Math.min(point.x, point.y);
    }

    @Override // com.mopub.volley.toolbox.ImageLoader
    public ImageLoader.ImageContainer get(String str, ImageLoader.ImageListener imageListener) {
        return super.get(str, imageListener, this.f60295c, 0);
    }
}
