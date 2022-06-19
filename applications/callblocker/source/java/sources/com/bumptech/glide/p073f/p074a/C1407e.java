package com.bumptech.glide.p073f.p074a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* renamed from: com.bumptech.glide.f.a.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a/e.class */
public class C1407e {
    /* renamed from: a */
    public <Z> AbstractC1411i<ImageView, Z> m17188a(ImageView imageView, Class<Z> cls) {
        AbstractC1411i c1405c;
        if (Bitmap.class.equals(cls)) {
            c1405c = new C1404b(imageView);
        } else if (!Drawable.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
        } else {
            c1405c = new C1405c(imageView);
        }
        return c1405c;
    }
}
