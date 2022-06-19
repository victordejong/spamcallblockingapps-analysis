package com.squareup.picasso;

import android.graphics.Bitmap;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Transformation.class */
public interface Transformation {
    String key();

    Bitmap transform(Bitmap bitmap);
}
