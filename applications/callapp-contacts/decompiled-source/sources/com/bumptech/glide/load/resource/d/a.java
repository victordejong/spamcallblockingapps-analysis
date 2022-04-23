package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.b.d;
import com.bumptech.glide.c;
import com.bumptech.glide.g.f;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/a.class */
public final class a implements j<ByteBuffer, c> {

    /* renamed from: a  reason: collision with root package name */
    private static final C0150a f7709a = new C0150a();

    /* renamed from: b  reason: collision with root package name */
    private static final b f7710b = new b();

    /* renamed from: c  reason: collision with root package name */
    private final Context f7711c;

    /* renamed from: d  reason: collision with root package name */
    private final List<ImageHeaderParser> f7712d;
    private final b e;
    private final C0150a f;
    private final com.bumptech.glide.load.resource.d.b g;

    /* renamed from: com.bumptech.glide.load.resource.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/a$a.class */
    static final class C0150a {
        C0150a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<d> f7713a = k.a(0);

        b() {
        }

        final d a(ByteBuffer byteBuffer) {
            d a2;
            synchronized (this) {
                d poll = this.f7713a.poll();
                d dVar = poll;
                if (poll == null) {
                    dVar = new d();
                }
                a2 = dVar.a(byteBuffer);
            }
            return a2;
        }

        final void a(d dVar) {
            synchronized (this) {
                dVar.f7224a = null;
                dVar.f7225b = null;
                this.f7713a.offer(dVar);
            }
        }
    }

    public a(Context context) {
        this(context, c.a(context).f7234c.a(), c.a(context).f7232a, c.a(context).f7235d);
    }

    public a(Context context, List<ImageHeaderParser> list, e eVar, com.bumptech.glide.load.engine.a.b bVar) {
        this(context, list, eVar, bVar, f7710b, f7709a);
    }

    a(Context context, List<ImageHeaderParser> list, e eVar, com.bumptech.glide.load.engine.a.b bVar, b bVar2, C0150a aVar) {
        this.f7711c = context.getApplicationContext();
        this.f7712d = list;
        this.f = aVar;
        this.g = new com.bumptech.glide.load.resource.d.b(eVar, bVar);
        this.e = bVar2;
    }

    private e a(ByteBuffer byteBuffer, int i, int i2, d dVar, h hVar) {
        long a2 = f.a();
        try {
            com.bumptech.glide.b.c a3 = dVar.a();
            if (a3.f7222c > 0 && a3.f7221b == 0) {
                Bitmap.Config config = hVar.a(i.f7732a) == com.bumptech.glide.load.b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int min = Math.min(a3.g / i2, a3.f / i);
                int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
                if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
                    StringBuilder sb = new StringBuilder("Downsampling GIF, sampleSize: ");
                    sb.append(max);
                    sb.append(", target dimens: [");
                    sb.append(i);
                    sb.append("x");
                    sb.append(i2);
                    sb.append("], actual dimens: [");
                    sb.append(a3.f);
                    sb.append("x");
                    sb.append(a3.g);
                    sb.append("]");
                }
                com.bumptech.glide.b.e eVar = new com.bumptech.glide.b.e(this.g, a3, byteBuffer, max);
                eVar.a(config);
                eVar.b();
                Bitmap i3 = eVar.i();
                if (i3 != null) {
                    e eVar2 = new e(new c(this.f7711c, eVar, com.bumptech.glide.load.resource.c.a(), i, i2, i3));
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        new StringBuilder("Decoded GIF from stream in ").append(f.a(a2));
                    }
                    return eVar2;
                } else if (!Log.isLoggable("BufferGifDecoder", 2)) {
                    return null;
                } else {
                    new StringBuilder("Decoded GIF from stream in ").append(f.a(a2));
                    return null;
                }
            }
            if (!Log.isLoggable("BufferGifDecoder", 2)) {
                return null;
            }
            new StringBuilder("Decoded GIF from stream in ").append(f.a(a2));
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                new StringBuilder("Decoded GIF from stream in ").append(f.a(a2));
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e a(ByteBuffer byteBuffer, int i, int i2, h hVar) {
        d a2 = this.e.a(byteBuffer);
        try {
            return a(byteBuffer, i, i2, a2, hVar);
        } finally {
            this.e.a(a2);
        }
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ boolean a(ByteBuffer byteBuffer, h hVar) throws IOException {
        final ByteBuffer byteBuffer2 = byteBuffer;
        if (((Boolean) hVar.a(i.f7733b)).booleanValue()) {
            return false;
        }
        return (byteBuffer2 == null ? ImageHeaderParser.ImageType.UNKNOWN : com.bumptech.glide.load.e.a(this.f7712d, new e.b() { // from class: com.bumptech.glide.load.e.2
            @Override // com.bumptech.glide.load.e.b
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
                return imageHeaderParser.a(byteBuffer2);
            }
        })) == ImageHeaderParser.ImageType.GIF;
    }
}
