package com.bumptech.glide.load.resource;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.bitmap.k;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.bitmap.q;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a.class */
public abstract class a<T> implements j<ImageDecoder.Source, T> {

    /* renamed from: a  reason: collision with root package name */
    final q f7625a = q.a();

    protected abstract u<T> a(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException;

    public final u<T> a(ImageDecoder.Source source, final int i, final int i2, h hVar) throws IOException {
        final b bVar = (b) hVar.a(l.f7671a);
        final k kVar = (k) hVar.a(k.h);
        final boolean z = hVar.a(l.e) != null && ((Boolean) hVar.a(l.e)).booleanValue();
        final i iVar = (i) hVar.a(l.f7672b);
        return a(source, i, i2, new ImageDecoder.OnHeaderDecodedListener() { // from class: com.bumptech.glide.load.resource.a.1
            @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source2) {
                if (a.this.f7625a.a(i, i2, z, false)) {
                    imageDecoder.setAllocator(3);
                } else {
                    imageDecoder.setAllocator(1);
                }
                if (bVar == b.PREFER_RGB_565) {
                    imageDecoder.setMemorySizePolicy(0);
                }
                imageDecoder.setOnPartialImageListener(new ImageDecoder.OnPartialImageListener() { // from class: com.bumptech.glide.load.resource.a.1.1
                    @Override // android.graphics.ImageDecoder.OnPartialImageListener
                    public final boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
                        return false;
                    }
                });
                Size size = imageInfo.getSize();
                int i3 = i;
                int i4 = i3;
                if (i3 == Integer.MIN_VALUE) {
                    i4 = size.getWidth();
                }
                int i5 = i2;
                int i6 = i5;
                if (i5 == Integer.MIN_VALUE) {
                    i6 = size.getHeight();
                }
                float a2 = kVar.a(size.getWidth(), size.getHeight(), i4, i6);
                int round = Math.round(size.getWidth() * a2);
                int round2 = Math.round(size.getHeight() * a2);
                if (Log.isLoggable("ImageDecoder", 2)) {
                    StringBuilder sb = new StringBuilder("Resizing from [");
                    sb.append(size.getWidth());
                    sb.append("x");
                    sb.append(size.getHeight());
                    sb.append("] to [");
                    sb.append(round);
                    sb.append("x");
                    sb.append(round2);
                    sb.append("] scaleFactor: ");
                    sb.append(a2);
                }
                imageDecoder.setTargetSize(round, round2);
                if (Build.VERSION.SDK_INT >= 28) {
                    boolean z2 = false;
                    if (iVar == i.DISPLAY_P3) {
                        z2 = false;
                        if (imageInfo.getColorSpace() != null) {
                            z2 = false;
                            if (imageInfo.getColorSpace().isWideGamut()) {
                                z2 = true;
                            }
                        }
                    }
                    imageDecoder.setTargetColorSpace(ColorSpace.get(z2 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
                } else if (Build.VERSION.SDK_INT >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                }
            }
        });
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(ImageDecoder.Source source, h hVar) throws IOException {
        return true;
    }
}
