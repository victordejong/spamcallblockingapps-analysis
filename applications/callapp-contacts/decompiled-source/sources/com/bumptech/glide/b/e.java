package com.bumptech.glide.b;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.b.a;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/e.class */
public class e implements a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f7228a = "e";

    /* renamed from: b  reason: collision with root package name */
    private int[] f7229b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f7230c;

    /* renamed from: d  reason: collision with root package name */
    private final a.AbstractC0137a f7231d;
    private ByteBuffer e;
    private byte[] f;
    private d g;
    private short[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private int[] l;
    private int m;
    private c n;
    private Bitmap o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private int t;
    private Boolean u;
    private Bitmap.Config v;

    public e(a.AbstractC0137a aVar) {
        this.f7230c = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        this.v = Bitmap.Config.ARGB_8888;
        this.f7231d = aVar;
        this.n = new c();
    }

    public e(a.AbstractC0137a aVar, c cVar, ByteBuffer byteBuffer) {
        this(aVar, cVar, byteBuffer, 1);
    }

    public e(a.AbstractC0137a aVar, c cVar, ByteBuffer byteBuffer, int i) {
        this(aVar);
        a(cVar, byteBuffer, i);
    }

    private int a(byte[] bArr) {
        int i;
        synchronized (this) {
            if (this.g == null) {
                this.g = new d();
            }
            d dVar = this.g;
            if (bArr != null) {
                dVar.a(ByteBuffer.wrap(bArr));
            } else {
                dVar.f7224a = null;
                dVar.f7225b.f7221b = 2;
            }
            c a2 = dVar.a();
            this.n = a2;
            if (bArr != null) {
                a(a2, bArr);
            }
            i = this.q;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
        if (r9.n.j == r10.h) goto L_0x0081;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap a(com.bumptech.glide.b.b r10, com.bumptech.glide.b.b r11) {
        /*
            Method dump skipped, instructions count: 2548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.b.e.a(com.bumptech.glide.b.b, com.bumptech.glide.b.b):android.graphics.Bitmap");
    }

    private void a(c cVar, ByteBuffer byteBuffer) {
        synchronized (this) {
            a(cVar, byteBuffer, 1);
        }
    }

    private void a(c cVar, ByteBuffer byteBuffer, int i) {
        synchronized (this) {
            if (i > 0) {
                int highestOneBit = Integer.highestOneBit(i);
                this.q = 0;
                this.n = cVar;
                this.m = -1;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.e = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                this.e.order(ByteOrder.LITTLE_ENDIAN);
                this.p = false;
                Iterator<b> it2 = cVar.e.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (it2.next().g == 3) {
                            this.p = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                this.r = highestOneBit;
                this.t = cVar.f / highestOneBit;
                this.s = cVar.g / highestOneBit;
                this.k = this.f7231d.a(cVar.f * cVar.g);
                this.l = this.f7231d.b(this.t * this.s);
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: ".concat(String.valueOf(i)));
            }
        }
    }

    private void a(c cVar, byte[] bArr) {
        synchronized (this) {
            a(cVar, ByteBuffer.wrap(bArr));
        }
    }

    private int k() {
        return this.e.get() & 255;
    }

    private Bitmap l() {
        Boolean bool = this.u;
        Bitmap a2 = this.f7231d.a(this.t, this.s, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.v);
        a2.setHasAlpha(true);
        return a2;
    }

    @Override // com.bumptech.glide.b.a
    public final int a(InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                a(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(f7228a, "Error reading data from stream", e);
            }
        } else {
            this.q = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(f7228a, "Error closing stream", e2);
            }
        }
        return this.q;
    }

    @Override // com.bumptech.glide.b.a
    public final ByteBuffer a() {
        return this.e;
    }

    @Override // com.bumptech.glide.b.a
    public final void a(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.v = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    @Override // com.bumptech.glide.b.a
    public final void b() {
        this.m = (this.m + 1) % this.n.f7222c;
    }

    @Override // com.bumptech.glide.b.a
    public final int c() {
        int i;
        if (this.n.f7222c <= 0 || (i = this.m) < 0) {
            return 0;
        }
        int i2 = -1;
        if (i >= 0) {
            i2 = -1;
            if (i < this.n.f7222c) {
                i2 = this.n.e.get(i).i;
            }
        }
        return i2;
    }

    @Override // com.bumptech.glide.b.a
    public final int d() {
        return this.n.f7222c;
    }

    @Override // com.bumptech.glide.b.a
    public final int e() {
        return this.m;
    }

    @Override // com.bumptech.glide.b.a
    public final void f() {
        this.m = -1;
    }

    @Override // com.bumptech.glide.b.a
    public final int g() {
        if (this.n.m == -1) {
            return 1;
        }
        if (this.n.m == 0) {
            return 0;
        }
        return this.n.m + 1;
    }

    @Override // com.bumptech.glide.b.a
    public final int h() {
        return this.e.limit() + this.k.length + (this.l.length * 4);
    }

    @Override // com.bumptech.glide.b.a
    public final Bitmap i() {
        synchronized (this) {
            if (this.n.f7222c <= 0 || this.m < 0) {
                if (Log.isLoggable(f7228a, 3)) {
                    StringBuilder sb = new StringBuilder("Unable to decode frame, frameCount=");
                    sb.append(this.n.f7222c);
                    sb.append(", framePointer=");
                    sb.append(this.m);
                }
                this.q = 1;
            }
            int i = this.q;
            if (i == 1 || i == 2) {
                if (Log.isLoggable(f7228a, 3)) {
                    new StringBuilder("Unable to decode frame, status=").append(this.q);
                }
                return null;
            }
            this.q = 0;
            if (this.f == null) {
                this.f = this.f7231d.a(255);
            }
            b bVar = this.n.e.get(this.m);
            int i2 = this.m - 1;
            b bVar2 = i2 >= 0 ? this.n.e.get(i2) : null;
            int[] iArr = bVar.k != null ? bVar.k : this.n.f7220a;
            this.f7229b = iArr;
            if (iArr == null) {
                if (Log.isLoggable(f7228a, 3)) {
                    new StringBuilder("No valid color table found for frame #").append(this.m);
                }
                this.q = 1;
                return null;
            }
            if (bVar.f) {
                int[] iArr2 = this.f7229b;
                System.arraycopy(iArr2, 0, this.f7230c, 0, iArr2.length);
                int[] iArr3 = this.f7230c;
                this.f7229b = iArr3;
                iArr3[bVar.h] = 0;
                if (bVar.g == 2 && this.m == 0) {
                    this.u = Boolean.TRUE;
                }
            }
            return a(bVar, bVar2);
        }
    }

    @Override // com.bumptech.glide.b.a
    public final void j() {
        this.n = null;
        byte[] bArr = this.k;
        if (bArr != null) {
            this.f7231d.a(bArr);
        }
        int[] iArr = this.l;
        if (iArr != null) {
            this.f7231d.a(iArr);
        }
        Bitmap bitmap = this.o;
        if (bitmap != null) {
            this.f7231d.a(bitmap);
        }
        this.o = null;
        this.e = null;
        this.u = null;
        byte[] bArr2 = this.f;
        if (bArr2 != null) {
            this.f7231d.a(bArr2);
        }
    }
}
