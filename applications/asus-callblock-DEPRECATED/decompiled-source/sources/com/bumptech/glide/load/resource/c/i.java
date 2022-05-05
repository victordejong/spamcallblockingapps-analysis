package com.bumptech.glide.load.resource.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.b.a;
import com.bumptech.glide.b.d;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.e;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/i.class */
public final class i implements e<InputStream, com.bumptech.glide.load.resource.c.b> {

    /* renamed from: a  reason: collision with root package name */
    private static final b f3645a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final a f3646b = new a();
    private final Context c;
    private final b d;
    private final c e;
    private final a f;
    private final com.bumptech.glide.load.resource.c.a g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<com.bumptech.glide.b.a> f3647a = h.a(0);

        a() {
        }

        public final com.bumptech.glide.b.a a(a.AbstractC0091a aVar) {
            com.bumptech.glide.b.a aVar2;
            synchronized (this) {
                com.bumptech.glide.b.a poll = this.f3647a.poll();
                aVar2 = poll;
                if (poll == null) {
                    aVar2 = new com.bumptech.glide.b.a(aVar);
                }
            }
            return aVar2;
        }

        public final void a(com.bumptech.glide.b.a aVar) {
            synchronized (this) {
                aVar.e = null;
                aVar.d = null;
                aVar.f3372a = null;
                aVar.f3373b = null;
                if (aVar.g != null) {
                    aVar.f.a(aVar.g);
                }
                aVar.g = null;
                this.f3647a.offer(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<d> f3648a = h.a(0);

        b() {
        }

        public final d a(byte[] bArr) {
            d a2;
            synchronized (this) {
                d poll = this.f3648a.poll();
                d dVar = poll;
                if (poll == null) {
                    dVar = new d();
                }
                a2 = dVar.a(bArr);
            }
            return a2;
        }

        public final void a(d dVar) {
            synchronized (this) {
                dVar.f3378a = null;
                dVar.f3379b = null;
                this.f3648a.offer(dVar);
            }
        }
    }

    public i(Context context, c cVar) {
        this(context, cVar, f3645a, f3646b);
    }

    private i(Context context, c cVar, b bVar, a aVar) {
        this.c = context;
        this.e = cVar;
        this.f = aVar;
        this.g = new com.bumptech.glide.load.resource.c.a(cVar);
        this.d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d a(InputStream inputStream, int i, int i2) {
        byte[] a2 = a(inputStream);
        d a3 = this.d.a(a2);
        com.bumptech.glide.b.a a4 = this.f.a(this.g);
        try {
            com.bumptech.glide.b.c a5 = a3.a();
            d dVar = null;
            if (a5.c > 0) {
                if (a5.f3377b != 0) {
                    dVar = null;
                } else {
                    a4.a(a5, a2);
                    a4.a();
                    Bitmap b2 = a4.b();
                    dVar = null;
                    if (b2 != null) {
                        dVar = new d(new com.bumptech.glide.load.resource.c.b(this.c, this.g, this.e, com.bumptech.glide.load.resource.d.b(), i, i2, a5, a2, b2));
                    }
                }
            }
            return dVar;
        } finally {
            this.d.a(a3);
            this.f.a(a4);
        }
    }

    private static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byteArrayOutputStream.flush();
        } catch (IOException e) {
            Log.w("GifResourceDecoder", "Error reading data from stream", e);
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        return BuildConfig.FLAVOR;
    }
}
