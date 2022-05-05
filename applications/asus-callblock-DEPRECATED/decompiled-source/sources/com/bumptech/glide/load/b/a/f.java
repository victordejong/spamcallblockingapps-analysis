package com.bumptech.glide.load.b.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/f.class */
public final class f implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config f3497a = Bitmap.Config.ARGB_8888;

    /* renamed from: b  reason: collision with root package name */
    private final g f3498b;
    private final Set<Bitmap.Config> c;
    private final int d;
    private final a e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/f$a.class */
    private interface a {
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/f$b.class */
    private static final class b implements a {
        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(int r6) {
        /*
            r5 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto L_0x0040
            com.bumptech.glide.load.b.a.i r0 = new com.bumptech.glide.load.b.a.i
            r1 = r0
            r1.<init>()
            r7 = r0
        L_0x0010:
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            android.graphics.Bitmap$Config[] r1 = android.graphics.Bitmap.Config.values()
            java.util.List r1 = java.util.Arrays.asList(r1)
            boolean r0 = r0.addAll(r1)
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto L_0x0035
            r0 = r8
            r1 = 0
            boolean r0 = r0.add(r1)
        L_0x0035:
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            java.util.Set r3 = java.util.Collections.unmodifiableSet(r3)
            r0.<init>(r1, r2, r3)
            return
        L_0x0040:
            com.bumptech.glide.load.b.a.a r0 = new com.bumptech.glide.load.b.a.a
            r1 = r0
            r1.<init>()
            r7 = r0
            goto L_0x0010
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.f.<init>(int):void");
    }

    private f(int i, g gVar, Set<Bitmap.Config> set) {
        this.d = i;
        this.f = i;
        this.f3498b = gVar;
        this.c = set;
        this.e = new b((byte) 0);
    }

    private void b() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        android.util.Log.w("LruBitmapPool", "Size mismatch, resetting");
        c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        r5.g = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (android.util.Log.isLoggable("LruBitmapPool", 5) == false) goto L_0x002d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(int r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
        L_0x0002:
            r0 = r5
            int r0 = r0.g     // Catch: all -> 0x0087
            r1 = r6
            if (r0 <= r1) goto L_0x0032
            r0 = r5
            com.bumptech.glide.load.b.a.g r0 = r0.f3498b     // Catch: all -> 0x0087
            android.graphics.Bitmap r0 = r0.a()     // Catch: all -> 0x0087
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0035
            java.lang.String r0 = "LruBitmapPool"
            r1 = 5
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x0087
            if (r0 == 0) goto L_0x002d
            java.lang.String r0 = "LruBitmapPool"
            java.lang.String r1 = "Size mismatch, resetting"
            int r0 = android.util.Log.w(r0, r1)     // Catch: all -> 0x0087
            r0 = r5
            r0.c()     // Catch: all -> 0x0087
        L_0x002d:
            r0 = r5
            r1 = 0
            r0.g = r1     // Catch: all -> 0x0087
        L_0x0032:
            r0 = r5
            monitor-exit(r0)
            return
        L_0x0035:
            r0 = r5
            r1 = r5
            int r1 = r1.g     // Catch: all -> 0x0087
            r2 = r5
            com.bumptech.glide.load.b.a.g r2 = r2.f3498b     // Catch: all -> 0x0087
            r3 = r7
            int r2 = r2.c(r3)     // Catch: all -> 0x0087
            int r1 = r1 - r2
            r0.g = r1     // Catch: all -> 0x0087
            r0 = r7
            r0.recycle()     // Catch: all -> 0x0087
            r0 = r5
            r1 = r5
            int r1 = r1.k     // Catch: all -> 0x0087
            r2 = 1
            int r1 = r1 + r2
            r0.k = r1     // Catch: all -> 0x0087
            java.lang.String r0 = "LruBitmapPool"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x0087
            if (r0 == 0) goto L_0x0080
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0087
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Evicting bitmap="
            r0.<init>(r1)     // Catch: all -> 0x0087
            java.lang.String r0 = "LruBitmapPool"
            r1 = r8
            r2 = r5
            com.bumptech.glide.load.b.a.g r2 = r2.f3498b     // Catch: all -> 0x0087
            r3 = r7
            java.lang.String r2 = r2.b(r3)     // Catch: all -> 0x0087
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x0087
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0087
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x0087
        L_0x0080:
            r0 = r5
            r0.b()     // Catch: all -> 0x0087
            goto L_0x0002
        L_0x0087:
            r8 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.f.b(int):void");
    }

    private void c() {
        Log.v("LruBitmapPool", "Hits=" + this.h + ", misses=" + this.i + ", puts=" + this.j + ", evictions=" + this.k + ", currentSize=" + this.g + ", maxSize=" + this.f + "\nStrategy=" + this.f3498b);
    }

    @Override // com.bumptech.glide.load.b.a.c
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        Bitmap b2;
        synchronized (this) {
            b2 = b(i, i2, config);
            if (b2 != null) {
                b2.eraseColor(0);
            }
        }
        return b2;
    }

    @Override // com.bumptech.glide.load.b.a.c
    public final void a() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        b(0);
    }

    @Override // com.bumptech.glide.load.b.a.c
    @SuppressLint({"InlinedApi"})
    public final void a(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i);
        }
        if (i >= 60) {
            a();
        } else if (i >= 40) {
            b(this.f / 2);
        }
    }

    @Override // com.bumptech.glide.load.b.a.c
    public final boolean a(Bitmap bitmap) {
        boolean z;
        synchronized (this) {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            } else if (!bitmap.isMutable() || this.f3498b.c(bitmap) > this.f || !this.c.contains(bitmap.getConfig())) {
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f3498b.b(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.c.contains(bitmap.getConfig()));
                }
                z = false;
            } else {
                int c = this.f3498b.c(bitmap);
                this.f3498b.a(bitmap);
                this.j++;
                this.g = c + this.g;
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f3498b.b(bitmap));
                }
                b();
                b(this.f);
                z = true;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.b.a.c
    @TargetApi(12)
    public final Bitmap b(int i, int i2, Bitmap.Config config) {
        Bitmap a2;
        synchronized (this) {
            a2 = this.f3498b.a(i, i2, config != null ? config : f3497a);
            if (a2 == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Missing bitmap=" + this.f3498b.b(i, i2, config));
                }
                this.i++;
            } else {
                this.h++;
                this.g -= this.f3498b.c(a2);
                if (Build.VERSION.SDK_INT >= 12) {
                    a2.setHasAlpha(true);
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Get bitmap=" + this.f3498b.b(i, i2, config));
            }
            b();
        }
        return a2;
    }
}
