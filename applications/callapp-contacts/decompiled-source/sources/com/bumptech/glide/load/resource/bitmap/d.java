package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.a.f;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.resource.a;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/d.class */
public final class d extends a<Bitmap> {

    /* renamed from: b  reason: collision with root package name */
    private final e f7657b = new f();

    @Override // com.bumptech.glide.load.resource.a
    public final u<Bitmap> a(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, onHeaderDecodedListener);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            StringBuilder sb = new StringBuilder("Decoded [");
            sb.append(decodeBitmap.getWidth());
            sb.append("x");
            sb.append(decodeBitmap.getHeight());
            sb.append("] for [");
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            sb.append("]");
        }
        return new e(decodeBitmap, this.f7657b);
    }
}
