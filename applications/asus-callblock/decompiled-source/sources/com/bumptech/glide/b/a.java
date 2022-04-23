package com.bumptech.glide.b;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/a.class */
public class a {
    private static final String h = a.class.getSimpleName();
    private static final Bitmap.Config i = Bitmap.Config.ARGB_8888;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f3372a;

    /* renamed from: b  reason: collision with root package name */
    public int[] f3373b;
    public int c;
    public byte[] d;
    public AbstractC0091a f;
    public Bitmap g;
    private int[] j;
    private ByteBuffer k;
    private short[] m;
    private byte[] n;
    private byte[] o;
    private boolean p;
    private int q;
    private final byte[] l = new byte[256];
    public c e = new c();

    /* renamed from: com.bumptech.glide.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/a$a.class */
    public interface AbstractC0091a {
        Bitmap a(int i, int i2, Bitmap.Config config);

        void a(Bitmap bitmap);
    }

    public a(AbstractC0091a aVar) {
        this.f = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x04cf, code lost:
        r25 = r0;
        r28 = r0;
        r21 = r22;
        r22 = r24;
        r24 = r20;
        r20 = r15;
        r15 = r28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0316 A[LOOP:5: B:81:0x0311->B:83:0x0316, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap a(com.bumptech.glide.b.b r10, com.bumptech.glide.b.b r11) {
        /*
            Method dump skipped, instructions count: 1274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.b.a.a(com.bumptech.glide.b.b, com.bumptech.glide.b.b):android.graphics.Bitmap");
    }

    private int c() {
        int i2 = 0;
        try {
            i2 = this.k.get() & 255;
        } catch (Exception e) {
            this.q = 1;
        }
        return i2;
    }

    private int d() {
        int c = c();
        int i2 = 0;
        int i3 = 0;
        if (c > 0) {
            while (true) {
                i2 = i3;
                if (i3 >= c) {
                    break;
                }
                int i4 = c - i3;
                try {
                    this.k.get(this.l, i3, i4);
                    i3 += i4;
                } catch (Exception e) {
                    Log.w(h, "Error Reading Block", e);
                    this.q = 1;
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    private Bitmap e() {
        Bitmap a2 = this.f.a(this.e.f, this.e.g, i);
        Bitmap bitmap = a2;
        if (a2 == null) {
            bitmap = Bitmap.createBitmap(this.e.f, this.e.g, i);
        }
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
        return bitmap;
    }

    public final int a(int i2) {
        int i3 = -1;
        if (i2 >= 0) {
            i3 = -1;
            if (i2 < this.e.c) {
                i3 = this.e.e.get(i2).i;
            }
        }
        return i3;
    }

    public final void a() {
        this.c = (this.c + 1) % this.e.c;
    }

    public final void a(c cVar, byte[] bArr) {
        this.e = cVar;
        this.d = bArr;
        this.q = 0;
        this.c = -1;
        this.k = ByteBuffer.wrap(bArr);
        this.k.rewind();
        this.k.order(ByteOrder.LITTLE_ENDIAN);
        this.p = false;
        Iterator<b> it = cVar.e.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().g == 3) {
                    this.p = true;
                    break;
                }
            } else {
                break;
            }
        }
        this.f3372a = new byte[cVar.f * cVar.g];
        this.f3373b = new int[cVar.f * cVar.g];
    }

    public final Bitmap b() {
        Bitmap bitmap;
        int i2 = 0;
        synchronized (this) {
            if (this.e.c <= 0 || this.c < 0) {
                if (Log.isLoggable(h, 3)) {
                    Log.d(h, "unable to decode frame, frameCount=" + this.e.c + " framePointer=" + this.c);
                }
                this.q = 1;
            }
            if (this.q == 1 || this.q == 2) {
                if (Log.isLoggable(h, 3)) {
                    Log.d(h, "Unable to decode frame, status=" + this.q);
                }
                bitmap = null;
            } else {
                this.q = 0;
                b bVar = this.e.e.get(this.c);
                int i3 = this.c - 1;
                b bVar2 = i3 >= 0 ? this.e.e.get(i3) : null;
                if (bVar.k == null) {
                    this.j = this.e.f3376a;
                } else {
                    this.j = bVar.k;
                    if (this.e.j == bVar.h) {
                        this.e.l = 0;
                    }
                }
                if (bVar.f) {
                    i2 = this.j[bVar.h];
                    this.j[bVar.h] = 0;
                }
                if (this.j == null) {
                    if (Log.isLoggable(h, 3)) {
                        Log.d(h, "No Valid Color Table");
                    }
                    this.q = 1;
                    bitmap = null;
                } else {
                    bitmap = a(bVar, bVar2);
                    if (bVar.f) {
                        this.j[bVar.h] = i2;
                    }
                }
            }
        }
        return bitmap;
    }
}
