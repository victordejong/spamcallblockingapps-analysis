package com.bumptech.glide.g.b;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.d.h;
import com.bumptech.glide.g.a.c;
import com.bumptech.glide.g.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/j.class */
public interface j<R> extends h {
    b getRequest();

    void getSize(h hVar);

    void onLoadCleared(Drawable drawable);

    void onLoadFailed(Exception exc, Drawable drawable);

    void onLoadStarted(Drawable drawable);

    void onResourceReady(R r, c<? super R> cVar);

    void setRequest(b bVar);
}
