package com.bumptech.glide.load.resource.p125d;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3691e;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3659b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.C3902c;
import com.bumptech.glide.p109b.C3545c;
import com.bumptech.glide.p109b.C3546d;
import com.bumptech.glide.p109b.C3547e;
import com.bumptech.glide.p116g.C3638f;
import com.bumptech.glide.p116g.C3644k;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.resource.d.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/a.class */
public final class C3905a implements AbstractC3824j<ByteBuffer, C3909c> {

    /* renamed from: a */
    private static final C3906a f14297a = new C3906a();

    /* renamed from: b */
    private static final C3907b f14298b = new C3907b();

    /* renamed from: c */
    private final Context f14299c;

    /* renamed from: d */
    private final List<ImageHeaderParser> f14300d;

    /* renamed from: e */
    private final C3907b f14301e;

    /* renamed from: f */
    private final C3906a f14302f;

    /* renamed from: g */
    private final C3908b f14303g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.resource.d.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/a$a.class */
    public static final class C3906a {
        C3906a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.d.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/a$b.class */
    public static final class C3907b {

        /* renamed from: a */
        private final Queue<C3546d> f14304a = C3644k.m37582a(0);

        C3907b() {
        }

        /* renamed from: a */
        final C3546d m37230a(ByteBuffer byteBuffer) {
            C3546d m37750a;
            synchronized (this) {
                C3546d poll = this.f14304a.poll();
                C3546d c3546d = poll;
                if (poll == null) {
                    c3546d = new C3546d();
                }
                m37750a = c3546d.m37750a(byteBuffer);
            }
            return m37750a;
        }

        /* renamed from: a */
        final void m37231a(C3546d c3546d) {
            synchronized (this) {
                c3546d.f13503a = null;
                c3546d.f13504b = null;
                this.f14304a.offer(c3546d);
            }
        }
    }

    public C3905a(Context context) {
        this(context, ComponentCallbacks2C3548c.m37723a(context).f13533c.m37800a(), ComponentCallbacks2C3548c.m37723a(context).f13531a, ComponentCallbacks2C3548c.m37723a(context).f13534d);
    }

    public C3905a(Context context, List<ImageHeaderParser> list, AbstractC3712e abstractC3712e, AbstractC3707b abstractC3707b) {
        this(context, list, abstractC3712e, abstractC3707b, f14298b, f14297a);
    }

    C3905a(Context context, List<ImageHeaderParser> list, AbstractC3712e abstractC3712e, AbstractC3707b abstractC3707b, C3907b c3907b, C3906a c3906a) {
        this.f14299c = context.getApplicationContext();
        this.f14300d = list;
        this.f14302f = c3906a;
        this.f14303g = new C3908b(abstractC3712e, abstractC3707b);
        this.f14301e = c3907b;
    }

    /* renamed from: a */
    private C3912e m37233a(ByteBuffer byteBuffer, int i, int i2, C3546d c3546d, C3822h c3822h) {
        long m37593a = C3638f.m37593a();
        try {
            C3545c m37752a = c3546d.m37752a();
            if (m37752a.f13492c > 0 && m37752a.f13491b == 0) {
                Bitmap.Config config = c3822h.m37322a(C3919i.f14344a) == EnumC3659b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int min = Math.min(m37752a.f13496g / i2, m37752a.f13495f / i);
                int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
                if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
                    StringBuilder sb = new StringBuilder("Downsampling GIF, sampleSize: ");
                    sb.append(max);
                    sb.append(", target dimens: [");
                    sb.append(i);
                    sb.append("x");
                    sb.append(i2);
                    sb.append("], actual dimens: [");
                    sb.append(m37752a.f13495f);
                    sb.append("x");
                    sb.append(m37752a.f13496g);
                    sb.append("]");
                }
                C3547e c3547e = new C3547e(this.f14303g, m37752a, byteBuffer, max);
                c3547e.mo37741a(config);
                c3547e.mo37734b();
                Bitmap mo37727i = c3547e.mo37727i();
                if (mo37727i == null) {
                    if (!Log.isLoggable("BufferGifDecoder", 2)) {
                        return null;
                    }
                    new StringBuilder("Decoded GIF from stream in ").append(C3638f.m37592a(m37593a));
                    return null;
                }
                C3912e c3912e = new C3912e(new C3909c(this.f14299c, c3547e, C3902c.m37234a(), i, i2, mo37727i));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    new StringBuilder("Decoded GIF from stream in ").append(C3638f.m37592a(m37593a));
                }
                return c3912e;
            }
            if (!Log.isLoggable("BufferGifDecoder", 2)) {
                return null;
            }
            new StringBuilder("Decoded GIF from stream in ").append(C3638f.m37592a(m37593a));
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                new StringBuilder("Decoded GIF from stream in ").append(C3638f.m37592a(m37593a));
            }
            throw th;
        }
    }

    /* renamed from: a */
    public C3912e mo37196a(ByteBuffer byteBuffer, int i, int i2, C3822h c3822h) {
        C3546d m37230a = this.f14301e.m37230a(byteBuffer);
        try {
            return m37233a(byteBuffer, i, i2, m37230a, c3822h);
        } finally {
            this.f14301e.m37231a(m37230a);
        }
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ boolean mo37195a(ByteBuffer byteBuffer, C3822h c3822h) throws IOException {
        final ByteBuffer byteBuffer2 = byteBuffer;
        if (!((Boolean) c3822h.m37322a(C3919i.f14345b)).booleanValue()) {
            return (byteBuffer2 == null ? ImageHeaderParser.ImageType.UNKNOWN : C3691e.m37513a(this.f14300d, new C3691e.AbstractC3698b() { // from class: com.bumptech.glide.load.e.2
                @Override // com.bumptech.glide.load.C3691e.AbstractC3698b
                /* renamed from: a */
                public final ImageHeaderParser.ImageType mo37509a(ImageHeaderParser imageHeaderParser) throws IOException {
                    return imageHeaderParser.mo37263a(byteBuffer2);
                }
            })) == ImageHeaderParser.ImageType.GIF;
        }
        return false;
    }
}
