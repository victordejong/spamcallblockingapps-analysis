package com.bumptech.glide.load.engine.a;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k.class */
public final class k implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config f7462a = Bitmap.Config.ARGB_8888;

    /* renamed from: b  reason: collision with root package name */
    private final l f7463b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<Bitmap.Config> f7464c;

    /* renamed from: d  reason: collision with root package name */
    private final long f7465d;
    private final a e;
    private long f;
    private long g;
    private int h;
    private int i;
    private int j;
    private int k;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k$a.class */
    interface a {
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k$b.class */
    static final class b implements a {
        b() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k(long r7) {
        /*
            r6 = this;
            com.bumptech.glide.load.engine.a.l r0 = d()
            r9 = r0
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            android.graphics.Bitmap$Config[] r2 = android.graphics.Bitmap.Config.values()
            java.util.List r2 = java.util.Arrays.asList(r2)
            r1.<init>(r2)
            r10 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto L_0x0024
            r0 = r10
            r1 = 0
            boolean r0 = r0.add(r1)
        L_0x0024:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L_0x0037
            r0 = r10
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.HARDWARE
            boolean r0 = r0.remove(r1)
        L_0x0037:
            r0 = r6
            r1 = r7
            r2 = r9
            r3 = r10
            java.util.Set r3 = java.util.Collections.unmodifiableSet(r3)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.a.k.<init>(long):void");
    }

    k(long j, l lVar, Set<Bitmap.Config> set) {
        this.f7465d = j;
        this.f = j;
        this.f7463b = lVar;
        this.f7464c = set;
        this.e = new b();
    }

    public k(long j, Set<Bitmap.Config> set) {
        this(j, d(), set);
    }

    private void a(long j) {
        synchronized (this) {
            while (this.g > j) {
                Bitmap a2 = this.f7463b.a();
                if (a2 == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        c();
                    }
                    this.g = 0L;
                    return;
                }
                this.g -= this.f7463b.c(a2);
                this.k++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    new StringBuilder("Evicting bitmap=").append(this.f7463b.b(a2));
                }
                b();
                a2.recycle();
            }
        }
    }

    private void b() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            c();
        }
    }

    private static Bitmap c(int i, int i2, Bitmap.Config config) {
        if (config == null) {
            config = f7462a;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    private void c() {
        StringBuilder sb = new StringBuilder("Hits=");
        sb.append(this.h);
        sb.append(", misses=");
        sb.append(this.i);
        sb.append(", puts=");
        sb.append(this.j);
        sb.append(", evictions=");
        sb.append(this.k);
        sb.append(", currentSize=");
        sb.append(this.g);
        sb.append(", maxSize=");
        sb.append(this.f);
        sb.append("\nStrategy=");
        sb.append(this.f7463b);
    }

    private Bitmap d(int i, int i2, Bitmap.Config config) {
        Bitmap a2;
        synchronized (this) {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            a2 = this.f7463b.a(i, i2, config != null ? config : f7462a);
            if (a2 == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    new StringBuilder("Missing bitmap=").append(this.f7463b.b(i, i2, config));
                }
                this.i++;
            } else {
                this.h++;
                this.g -= this.f7463b.c(a2);
                a2.setHasAlpha(true);
                if (Build.VERSION.SDK_INT >= 19) {
                    a2.setPremultiplied(true);
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                new StringBuilder("Get bitmap=").append(this.f7463b.b(i, i2, config));
            }
            b();
        }
        return a2;
    }

    private static l d() {
        return Build.VERSION.SDK_INT >= 19 ? new n() : new c();
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        Bitmap bitmap;
        Bitmap d2 = d(i, i2, config);
        if (d2 != null) {
            d2.eraseColor(0);
            bitmap = d2;
        } else {
            bitmap = c(i, i2, config);
        }
        return bitmap;
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final void a() {
        Log.isLoggable("LruBitmapPool", 3);
        a(0L);
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final void a(int i) {
        Log.isLoggable("LruBitmapPool", 3);
        if (i >= 40 || (Build.VERSION.SDK_INT >= 23 && i >= 20)) {
            a();
        } else if (i >= 20 || i == 15) {
            a(this.f / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final void a(Bitmap bitmap) {
        synchronized (this) {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            } else if (!bitmap.isRecycled()) {
                if (bitmap.isMutable() && this.f7463b.c(bitmap) <= this.f && this.f7464c.contains(bitmap.getConfig())) {
                    int c2 = this.f7463b.c(bitmap);
                    this.f7463b.a(bitmap);
                    this.j++;
                    this.g += c2;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        new StringBuilder("Put bitmap in pool=").append(this.f7463b.b(bitmap));
                    }
                    b();
                    a(this.f);
                    return;
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    StringBuilder sb = new StringBuilder("Reject bitmap from pool, bitmap: ");
                    sb.append(this.f7463b.b(bitmap));
                    sb.append(", is mutable: ");
                    sb.append(bitmap.isMutable());
                    sb.append(", is allowed config: ");
                    sb.append(this.f7464c.contains(bitmap.getConfig()));
                }
                bitmap.recycle();
            } else {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final Bitmap b(int i, int i2, Bitmap.Config config) {
        Bitmap d2 = d(i, i2, config);
        Bitmap bitmap = d2;
        if (d2 == null) {
            bitmap = c(i, i2, config);
        }
        return bitmap;
    }
}
