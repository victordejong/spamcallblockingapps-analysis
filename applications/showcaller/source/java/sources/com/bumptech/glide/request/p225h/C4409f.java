package com.bumptech.glide.request.p225h;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* renamed from: com.bumptech.glide.request.h.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/f.class */
public class C4409f {
    /* renamed from: a */
    public <Z> AbstractC4412i<ImageView, Z> m22562a(ImageView imageView, Class<Z> cls) {
        if (Bitmap.class.equals(cls)) {
            return new C4405b(imageView);
        }
        if (Drawable.class.isAssignableFrom(cls)) {
            return new C4407d(imageView);
        }
        throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
    }
}
