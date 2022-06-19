package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.engine.p209x.C4097f;
import com.bumptech.glide.load.p214j.AbstractC4236a;
/* renamed from: com.bumptech.glide.load.resource.bitmap.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/d.class */
public final class C4296d extends AbstractC4236a<Bitmap> {

    /* renamed from: b */
    private final AbstractC4096e f13247b = new C4097f();

    @Override // com.bumptech.glide.load.p214j.AbstractC4236a
    /* renamed from: c */
    protected AbstractC4083s<Bitmap> mo22946c(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, onHeaderDecodedListener);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + decodeBitmap.getWidth() + "x" + decodeBitmap.getHeight() + "] for [" + i + "x" + i2 + "]");
        }
        return new C4297e(decodeBitmap, this.f13247b);
    }
}
