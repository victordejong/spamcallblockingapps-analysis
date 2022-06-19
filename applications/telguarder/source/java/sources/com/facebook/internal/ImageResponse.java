package com.facebook.internal;

import android.graphics.Bitmap;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/ImageResponse.class */
public class ImageResponse {
    private Bitmap bitmap;
    private Exception error;
    private boolean isCachedRedirect;
    private ImageRequest request;

    public ImageResponse(ImageRequest imageRequest, Exception exc, boolean z, Bitmap bitmap) {
        this.request = imageRequest;
        this.error = exc;
        this.bitmap = bitmap;
        this.isCachedRedirect = z;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public Exception getError() {
        return this.error;
    }

    public ImageRequest getRequest() {
        return this.request;
    }

    public boolean isCachedRedirect() {
        return this.isCachedRedirect;
    }
}
