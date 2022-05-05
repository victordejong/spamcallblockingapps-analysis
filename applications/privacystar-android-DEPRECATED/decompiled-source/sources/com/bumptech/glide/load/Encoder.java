package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/Encoder.class */
public interface Encoder<T> {
    boolean encode(@NonNull T t, @NonNull File file, @NonNull Options options);
}
