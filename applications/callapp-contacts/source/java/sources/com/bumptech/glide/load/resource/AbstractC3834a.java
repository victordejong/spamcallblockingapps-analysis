package com.bumptech.glide.load.resource;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3659b;
import com.bumptech.glide.load.EnumC3823i;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.resource.bitmap.AbstractC3870k;
import com.bumptech.glide.load.resource.bitmap.C3878l;
import com.bumptech.glide.load.resource.bitmap.C3886q;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a.class */
public abstract class AbstractC3834a<T> implements AbstractC3824j<ImageDecoder.Source, T> {

    /* renamed from: a */
    final C3886q f14183a = C3886q.m37262a();

    /* renamed from: a */
    protected abstract AbstractC3811u<T> mo37284a(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException;

    /* renamed from: a */
    public final AbstractC3811u<T> mo37196a(ImageDecoder.Source source, final int i, final int i2, C3822h c3822h) throws IOException {
        final EnumC3659b enumC3659b = (EnumC3659b) c3822h.m37322a(C3878l.f14239a);
        final AbstractC3870k abstractC3870k = (AbstractC3870k) c3822h.m37322a(AbstractC3870k.f14234h);
        final boolean z = c3822h.m37322a(C3878l.f14243e) != null && ((Boolean) c3822h.m37322a(C3878l.f14243e)).booleanValue();
        final EnumC3823i enumC3823i = (EnumC3823i) c3822h.m37322a(C3878l.f14240b);
        return mo37284a(source, i, i2, new ImageDecoder.OnHeaderDecodedListener() { // from class: com.bumptech.glide.load.resource.a.1
            @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source2) {
                if (AbstractC3834a.this.f14183a.m37261a(i, i2, z, false)) {
                    imageDecoder.setAllocator(3);
                } else {
                    imageDecoder.setAllocator(1);
                }
                if (enumC3659b == EnumC3659b.PREFER_RGB_565) {
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
                float mo37282a = abstractC3870k.mo37282a(size.getWidth(), size.getHeight(), i4, i6);
                int round = Math.round(size.getWidth() * mo37282a);
                int round2 = Math.round(size.getHeight() * mo37282a);
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
                    sb.append(mo37282a);
                }
                imageDecoder.setTargetSize(round, round2);
                if (Build.VERSION.SDK_INT < 28) {
                    if (Build.VERSION.SDK_INT < 26) {
                        return;
                    }
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                    return;
                }
                boolean z2 = false;
                if (enumC3823i == EnumC3823i.DISPLAY_P3) {
                    z2 = false;
                    if (imageInfo.getColorSpace() != null) {
                        z2 = false;
                        if (imageInfo.getColorSpace().isWideGamut()) {
                            z2 = true;
                        }
                    }
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(z2 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            }
        });
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(ImageDecoder.Source source, C3822h c3822h) throws IOException {
        return true;
    }
}
