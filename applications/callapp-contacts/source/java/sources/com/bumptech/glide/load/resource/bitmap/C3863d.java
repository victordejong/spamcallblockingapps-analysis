package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.engine.p119a.C3713f;
import com.bumptech.glide.load.resource.AbstractC3834a;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.bitmap.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/d.class */
public final class C3863d extends AbstractC3834a<Bitmap> {

    /* renamed from: b */
    private final AbstractC3712e f14220b = new C3713f();

    @Override // com.bumptech.glide.load.resource.AbstractC3834a
    /* renamed from: a */
    public final AbstractC3811u<Bitmap> mo37284a(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
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
        return new C3864e(decodeBitmap, this.f14220b);
    }
}
