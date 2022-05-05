package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/drawable/UnitDrawableDecoder.class */
public class UnitDrawableDecoder implements ResourceDecoder<Drawable, Drawable> {
    @Nullable
    public Resource<Drawable> decode(@NonNull Drawable drawable, int i, int i2, @NonNull Options options) {
        return NonOwnedDrawableResource.newInstance(drawable);
    }

    public boolean handles(@NonNull Drawable drawable, @NonNull Options options) {
        return true;
    }
}
