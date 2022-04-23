package com.bumptech.glide.request.p031h;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* renamed from: com.bumptech.glide.request.h.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/f.class */
public class C0870f {
    /* renamed from: a */
    public <Z> j<ImageView, Z> m10644a(ImageView imageView, Class<Z> cls) {
        if (Bitmap.class.equals(cls)) {
            return new b(imageView);
        }
        if (Drawable.class.isAssignableFrom(cls)) {
            return new d(imageView);
        }
        throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
    }
}
