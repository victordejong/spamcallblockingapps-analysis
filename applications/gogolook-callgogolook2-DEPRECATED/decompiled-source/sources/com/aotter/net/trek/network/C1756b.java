package com.aotter.net.trek.network;

import android.widget.ImageView;
import com.aotter.net.trek.util.TrekLog;
import com.aotter.net.volley.VolleyError;
import com.aotter.net.volley.toolbox.ImageLoader;
/* renamed from: com.aotter.net.trek.network.b */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/b.class */
public final class C1756b implements ImageLoader.ImageListener {

    /* renamed from: a */
    public final /* synthetic */ ImageView f1568a;

    public C1756b(ImageView imageView) {
        this.f1568a = imageView;
    }

    @Override // com.aotter.net.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        TrekLog.m36318d("Failed to load image.", volleyError);
        this.f1568a.setImageDrawable(null);
    }

    @Override // com.aotter.net.volley.toolbox.ImageLoader.ImageListener
    public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
        if (!z) {
            TrekLog.m36319d("Image was not loaded immediately into your ad view. You should call preCacheImages as part of your custom event loading process.");
        }
        this.f1568a.setImageBitmap(imageContainer.getBitmap());
    }
}
