package com.google.android.libraries.places.api.net;

import android.graphics.Bitmap;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/net/FetchPhotoResponse.class */
public abstract class FetchPhotoResponse {
    public static FetchPhotoResponse newInstance(Bitmap bitmap) {
        return new zzc(bitmap);
    }

    public abstract Bitmap getBitmap();
}
