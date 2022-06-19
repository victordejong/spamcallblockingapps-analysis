package com.bumptech.glide.load.p214j.p218g;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C3991b;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.p214j.C4240c;
import com.bumptech.glide.p207l.AbstractC3984a;
import com.bumptech.glide.p207l.C3987c;
import com.bumptech.glide.p207l.C3988d;
import com.bumptech.glide.p207l.C3989e;
import com.bumptech.glide.p223p.C4377f;
import com.bumptech.glide.p223p.C4383k;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.j.g.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/a.class */
public class C4251a implements AbstractC4146f<ByteBuffer, C4255c> {

    /* renamed from: a */
    private static final C4252a f13143a = new C4252a();

    /* renamed from: b */
    private static final C4253b f13144b = new C4253b();

    /* renamed from: c */
    private final Context f13145c;

    /* renamed from: d */
    private final List<ImageHeaderParser> f13146d;

    /* renamed from: e */
    private final C4253b f13147e;

    /* renamed from: f */
    private final C4252a f13148f;

    /* renamed from: g */
    private final C4254b f13149g;

    /* renamed from: com.bumptech.glide.load.j.g.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/a$a.class */
    public static class C4252a {
        C4252a() {
        }

        /* renamed from: a */
        AbstractC3984a m23046a(AbstractC3984a.AbstractC3985a abstractC3985a, C3987c c3987c, ByteBuffer byteBuffer, int i) {
            return new C3989e(abstractC3985a, c3987c, byteBuffer, i);
        }
    }

    /* renamed from: com.bumptech.glide.load.j.g.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/a$b.class */
    public static class C4253b {

        /* renamed from: a */
        private final Queue<C3988d> f13150a = C4383k.m22713e(0);

        C4253b() {
        }

        /* renamed from: a */
        C3988d m23045a(ByteBuffer byteBuffer) {
            C3988d m23546p;
            synchronized (this) {
                C3988d poll = this.f13150a.poll();
                C3988d c3988d = poll;
                if (poll == null) {
                    c3988d = new C3988d();
                }
                m23546p = c3988d.m23546p(byteBuffer);
            }
            return m23546p;
        }

        /* renamed from: b */
        void m23044b(C3988d c3988d) {
            synchronized (this) {
                c3988d.m23561a();
                this.f13150a.offer(c3988d);
            }
        }
    }

    public C4251a(Context context, List<ImageHeaderParser> list, AbstractC4096e abstractC4096e, AbstractC4091b abstractC4091b) {
        this(context, list, abstractC4096e, abstractC4091b, f13144b, f13143a);
    }

    C4251a(Context context, List<ImageHeaderParser> list, AbstractC4096e abstractC4096e, AbstractC4091b abstractC4091b, C4253b c4253b, C4252a c4252a) {
        this.f13145c = context.getApplicationContext();
        this.f13146d = list;
        this.f13148f = c4252a;
        this.f13149g = new C4254b(abstractC4096e, abstractC4091b);
        this.f13147e = c4253b;
    }

    /* renamed from: c */
    private C4258e m23050c(ByteBuffer byteBuffer, int i, int i2, C3988d c3988d, C4032e c4032e) {
        long m22735b = C4377f.m22735b();
        try {
            C3987c m23559c = c3988d.m23559c();
            if (m23559c.m23564b() > 0 && m23559c.m23563c() == 0) {
                Bitmap.Config config = c4032e.m23457c(C4266i.f13191a) == DecodeFormat.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                AbstractC3984a m23046a = this.f13148f.m23046a(this.f13149g, m23559c, byteBuffer, m23048e(m23559c, i, i2));
                m23046a.mo23539e(config);
                m23046a.mo23542b();
                Bitmap mo23543a = m23046a.mo23543a();
                if (mo23543a == null) {
                    if (!Log.isLoggable("BufferGifDecoder", 2)) {
                        return null;
                    }
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C4377f.m22736a(m22735b));
                    return null;
                }
                C4258e c4258e = new C4258e(new C4255c(this.f13145c, m23046a, C4240c.m23075c(), i, i2, mo23543a));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C4377f.m22736a(m22735b));
                }
                return c4258e;
            }
            if (!Log.isLoggable("BufferGifDecoder", 2)) {
                return null;
            }
            Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C4377f.m22736a(m22735b));
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C4377f.m22736a(m22735b));
            }
            throw th;
        }
    }

    /* renamed from: e */
    private static int m23048e(C3987c c3987c, int i, int i2) {
        int min = Math.min(c3987c.m23565a() / i2, c3987c.m23562d() / i);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i + "x" + i2 + "], actual dimens: [" + c3987c.m23562d() + "x" + c3987c.m23565a() + "]");
        }
        return max;
    }

    /* renamed from: d */
    public C4258e mo22861b(ByteBuffer byteBuffer, int i, int i2, C4032e c4032e) {
        C3988d m23045a = this.f13147e.m23045a(byteBuffer);
        try {
            return m23050c(byteBuffer, i, i2, m23045a, c4032e);
        } finally {
            this.f13147e.m23044b(m23045a);
        }
    }

    /* renamed from: f */
    public boolean mo22862a(ByteBuffer byteBuffer, C4032e c4032e) {
        return !((Boolean) c4032e.m23457c(C4266i.f13192b)).booleanValue() && C3991b.m23519f(this.f13146d, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }
}
