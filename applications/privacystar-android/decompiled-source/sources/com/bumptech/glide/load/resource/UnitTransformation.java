package com.bumptech.glide.load.resource;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/UnitTransformation.class */
public final class UnitTransformation<T> implements Transformation<T> {
    private static final Transformation<?> TRANSFORMATION = new UnitTransformation();

    private UnitTransformation() {
    }

    @NonNull
    public static <T> UnitTransformation<T> get() {
        return (UnitTransformation) TRANSFORMATION;
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<T> transform(@NonNull Context context, @NonNull Resource<T> resource, int i, int i2) {
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
    }
}
