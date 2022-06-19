package com.bumptech.glide.load.p024j;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
/* renamed from: com.bumptech.glide.load.j.a$a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/a$a.class */
class a$a implements ImageDecoder.OnHeaderDecodedListener {

    /* renamed from: a */
    final /* synthetic */ int f3687a;

    /* renamed from: b */
    final /* synthetic */ int f3688b;

    /* renamed from: c */
    final /* synthetic */ boolean f3689c;

    /* renamed from: d */
    final /* synthetic */ DecodeFormat f3690d;

    /* renamed from: e */
    final /* synthetic */ DownsampleStrategy f3691e;

    /* renamed from: f */
    final /* synthetic */ PreferredColorSpace f3692f;

    /* renamed from: g */
    final /* synthetic */ a f3693g;

    /* renamed from: com.bumptech.glide.load.j.a$a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/a$a$a.class */
    class C0809a implements ImageDecoder.OnPartialImageListener {
        C0809a(a$a a_a) {
        }

        @Override // android.graphics.ImageDecoder.OnPartialImageListener
        public boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
            return false;
        }
    }

    a$a(a aVar, int i, int i2, boolean z, DecodeFormat decodeFormat, DownsampleStrategy downsampleStrategy, PreferredColorSpace preferredColorSpace) {
        this.f3693g = aVar;
        this.f3687a = i;
        this.f3688b = i2;
        this.f3689c = z;
        this.f3690d = decodeFormat;
        this.f3691e = downsampleStrategy;
        this.f3692f = preferredColorSpace;
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    @SuppressLint({"Override"})
    public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        ColorSpace.Named named;
        if (this.f3693g.a.m10875e(this.f3687a, this.f3688b, this.f3689c, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f3690d == DecodeFormat.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new C0809a(this));
        Size size = imageInfo.getSize();
        int i = this.f3687a;
        int i2 = i;
        if (i == Integer.MIN_VALUE) {
            i2 = size.getWidth();
        }
        int i3 = this.f3688b;
        int i4 = i3;
        if (i3 == Integer.MIN_VALUE) {
            i4 = size.getHeight();
        }
        float m10916b = this.f3691e.m10916b(size.getWidth(), size.getHeight(), i2, i4);
        int round = Math.round(size.getWidth() * m10916b);
        int round2 = Math.round(size.getHeight() * m10916b);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + round + "x" + round2 + "] scaleFactor: " + m10916b);
        }
        imageDecoder.setTargetSize(round, round2);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 28) {
            boolean z = false;
            if (this.f3692f == PreferredColorSpace.DISPLAY_P3) {
                z = false;
                if (imageInfo.getColorSpace() != null) {
                    z = false;
                    if (imageInfo.getColorSpace().isWideGamut()) {
                        z = true;
                    }
                }
            }
            if (z) {
                named = ColorSpace.Named.DISPLAY_P3;
                imageDecoder.setTargetColorSpace(ColorSpace.get(named));
            }
        } else if (i5 < 26) {
            return;
        }
        named = ColorSpace.Named.SRGB;
        imageDecoder.setTargetColorSpace(ColorSpace.get(named));
    }
}
