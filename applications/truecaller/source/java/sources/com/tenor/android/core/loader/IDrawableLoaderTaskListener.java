package com.tenor.android.core.loader;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/loader/IDrawableLoaderTaskListener.class */
public interface IDrawableLoaderTaskListener<T extends ImageView, R extends Drawable> {
    void failure(T t, R r);

    void success(T t, R r);
}
