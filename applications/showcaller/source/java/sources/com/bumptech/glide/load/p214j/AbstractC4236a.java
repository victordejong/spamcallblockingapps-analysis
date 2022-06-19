package com.bumptech.glide.load.p214j;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4000d;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.resource.bitmap.C4304l;
import com.bumptech.glide.load.resource.bitmap.C4312q;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
/* renamed from: com.bumptech.glide.load.j.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/a.class */
public abstract class AbstractC4236a<T> implements AbstractC4146f<ImageDecoder.Source, T> {

    /* renamed from: a */
    final C4312q f13127a = C4312q.m22902b();

    /* renamed from: com.bumptech.glide.load.j.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/a$a.class */
    public class C4237a implements ImageDecoder.OnHeaderDecodedListener {

        /* renamed from: a */
        final /* synthetic */ int f13128a;

        /* renamed from: b */
        final /* synthetic */ int f13129b;

        /* renamed from: c */
        final /* synthetic */ boolean f13130c;

        /* renamed from: d */
        final /* synthetic */ DecodeFormat f13131d;

        /* renamed from: e */
        final /* synthetic */ DownsampleStrategy f13132e;

        /* renamed from: f */
        final /* synthetic */ PreferredColorSpace f13133f;

        /* renamed from: com.bumptech.glide.load.j.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/a$a$a.class */
        class C4238a implements ImageDecoder.OnPartialImageListener {
            C4238a() {
                C4237a.this = r4;
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        C4237a(int i, int i2, boolean z, DecodeFormat decodeFormat, DownsampleStrategy downsampleStrategy, PreferredColorSpace preferredColorSpace) {
            AbstractC4236a.this = r4;
            this.f13128a = i;
            this.f13129b = i2;
            this.f13130c = z;
            this.f13131d = decodeFormat;
            this.f13132e = downsampleStrategy;
            this.f13133f = preferredColorSpace;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            if (AbstractC4236a.this.f13127a.m22899e(this.f13128a, this.f13129b, this.f13130c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f13131d == DecodeFormat.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C4238a());
            Size size = imageInfo.getSize();
            int i = this.f13128a;
            int i2 = i;
            if (i == Integer.MIN_VALUE) {
                i2 = size.getWidth();
            }
            int i3 = this.f13129b;
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                i4 = size.getHeight();
            }
            float mo22970b = this.f13132e.mo22970b(size.getWidth(), size.getHeight(), i2, i4);
            int round = Math.round(size.getWidth() * mo22970b);
            int round2 = Math.round(size.getHeight() * mo22970b);
            if (Log.isLoggable("ImageDecoder", 2)) {
                Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + round + "x" + round2 + "] scaleFactor: " + mo22970b);
            }
            imageDecoder.setTargetSize(round, round2);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 < 28) {
                if (i5 < 26) {
                    return;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                return;
            }
            boolean z = false;
            if (this.f13133f == PreferredColorSpace.DISPLAY_P3) {
                z = false;
                if (imageInfo.getColorSpace() != null) {
                    z = false;
                    if (imageInfo.getColorSpace().isWideGamut()) {
                        z = true;
                    }
                }
            }
            imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }

    /* renamed from: c */
    protected abstract AbstractC4083s<T> mo22946c(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener);

    /* renamed from: d */
    public final AbstractC4083s<T> mo22861b(ImageDecoder.Source source, int i, int i2, C4032e c4032e) {
        DecodeFormat decodeFormat = (DecodeFormat) c4032e.m23457c(C4304l.f13255a);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) c4032e.m23457c(DownsampleStrategy.f13219h);
        C4000d<Boolean> c4000d = C4304l.f13259e;
        return mo22946c(source, i, i2, new C4237a(i, i2, c4032e.m23457c(c4000d) != null && ((Boolean) c4032e.m23457c(c4000d)).booleanValue(), decodeFormat, downsampleStrategy, (PreferredColorSpace) c4032e.m23457c(C4304l.f13256b)));
    }

    /* renamed from: e */
    public final boolean mo22862a(ImageDecoder.Source source, C4032e c4032e) {
        return true;
    }
}
