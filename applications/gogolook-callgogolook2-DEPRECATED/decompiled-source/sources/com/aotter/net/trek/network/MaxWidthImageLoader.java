package com.aotter.net.trek.network;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.aotter.net.volley.RequestQueue;
import com.aotter.net.volley.toolbox.ImageLoader;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/MaxWidthImageLoader.class */
public class MaxWidthImageLoader extends ImageLoader {

    /* renamed from: a */
    public final int f1550a;

    @TargetApi(13)
    public MaxWidthImageLoader(RequestQueue requestQueue, Context context, ImageLoader.ImageCache imageCache) {
        super(requestQueue, imageCache);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT < 13) {
            point.set(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        } else {
            defaultDisplay.getSize(point);
        }
        this.f1550a = Math.min(point.x, point.y);
    }

    @Override // com.aotter.net.volley.toolbox.ImageLoader
    public ImageLoader.ImageContainer get(String str, ImageLoader.ImageListener imageListener) {
        return super.get(str, imageListener, this.f1550a, 0);
    }
}
