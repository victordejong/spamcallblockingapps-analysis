package com.bumptech.glide.load.engine.p090a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.engine.a.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k.class */
public class C1687k implements AbstractC1678e {

    /* renamed from: a */
    private static final Bitmap.Config f5137a = Bitmap.Config.ARGB_8888;

    /* renamed from: b */
    private final AbstractC1690l f5138b;

    /* renamed from: c */
    private final Set<Bitmap.Config> f5139c;

    /* renamed from: d */
    private final long f5140d;

    /* renamed from: e */
    private final AbstractC1688a f5141e;

    /* renamed from: f */
    private long f5142f;

    /* renamed from: g */
    private long f5143g;

    /* renamed from: h */
    private int f5144h;

    /* renamed from: i */
    private int f5145i;

    /* renamed from: j */
    private int f5146j;

    /* renamed from: k */
    private int f5147k;

    /* renamed from: com.bumptech.glide.load.engine.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k$a.class */
    public interface AbstractC1688a {
        /* renamed from: a */
        void mo16528a(Bitmap bitmap);

        /* renamed from: b */
        void mo16527b(Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.a.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k$b.class */
    public static final class C1689b implements AbstractC1688a {
        C1689b() {
        }

        @Override // com.bumptech.glide.load.engine.p090a.C1687k.AbstractC1688a
        /* renamed from: a */
        public void mo16528a(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.p090a.C1687k.AbstractC1688a
        /* renamed from: b */
        public void mo16527b(Bitmap bitmap) {
        }
    }

    public C1687k(long j) {
        this(j, m16530f(), m16529g());
    }

    C1687k(long j, AbstractC1690l abstractC1690l, Set<Bitmap.Config> set) {
        this.f5140d = j;
        this.f5142f = j;
        this.f5138b = abstractC1690l;
        this.f5139c = set;
        this.f5141e = new C1689b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
        android.util.Log.w("LruBitmapPool", "Size mismatch, resetting");
        m16531e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        r6.f5143g = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (android.util.Log.isLoggable("LruBitmapPool", 5) == false) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m16542a(long r7) {
        /*
            r6 = this;
            r0 = r6
            monitor-enter(r0)
        L2:
            r0 = r6
            long r0 = r0.f5143g     // Catch: java.lang.Throwable -> L99
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L33
            r0 = r6
            com.bumptech.glide.load.engine.a.l r0 = r0.f5138b     // Catch: java.lang.Throwable -> L99
            android.graphics.Bitmap r0 = r0.mo16526a()     // Catch: java.lang.Throwable -> L99
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L36
            java.lang.String r0 = "LruBitmapPool"
            r1 = 5
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L99
            if (r0 == 0) goto L2e
            java.lang.String r0 = "LruBitmapPool"
            java.lang.String r1 = "Size mismatch, resetting"
            int r0 = android.util.Log.w(r0, r1)     // Catch: java.lang.Throwable -> L99
            r0 = r6
            r0.m16531e()     // Catch: java.lang.Throwable -> L99
        L2e:
            r0 = r6
            r1 = 0
            r0.f5143g = r1     // Catch: java.lang.Throwable -> L99
        L33:
            r0 = r6
            monitor-exit(r0)
            return
        L36:
            r0 = r6
            com.bumptech.glide.load.engine.a.k$a r0 = r0.f5141e     // Catch: java.lang.Throwable -> L99
            r1 = r9
            r0.mo16527b(r1)     // Catch: java.lang.Throwable -> L99
            r0 = r6
            r1 = r6
            long r1 = r1.f5143g     // Catch: java.lang.Throwable -> L99
            r2 = r6
            com.bumptech.glide.load.engine.a.l r2 = r2.f5138b     // Catch: java.lang.Throwable -> L99
            r3 = r9
            int r2 = r2.mo16516c(r3)     // Catch: java.lang.Throwable -> L99
            long r2 = (long) r2     // Catch: java.lang.Throwable -> L99
            long r1 = r1 - r2
            r0.f5143g = r1     // Catch: java.lang.Throwable -> L99
            r0 = r6
            r1 = r6
            int r1 = r1.f5147k     // Catch: java.lang.Throwable -> L99
            r2 = 1
            int r1 = r1 + r2
            r0.f5147k = r1     // Catch: java.lang.Throwable -> L99
            java.lang.String r0 = "LruBitmapPool"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L99
            if (r0 == 0) goto L8e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L99
            r10 = r0
            r0 = r10
            r0.<init>()     // Catch: java.lang.Throwable -> L99
            java.lang.String r0 = "LruBitmapPool"
            r1 = r10
            java.lang.String r2 = "Evicting bitmap="
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L99
            r2 = r6
            com.bumptech.glide.load.engine.a.l r2 = r2.f5138b     // Catch: java.lang.Throwable -> L99
            r3 = r9
            java.lang.String r2 = r2.mo16517b(r3)     // Catch: java.lang.Throwable -> L99
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L99
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L99
            int r0 = android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L99
        L8e:
            r0 = r6
            r0.m16533d()     // Catch: java.lang.Throwable -> L99
            r0 = r9
            r0.recycle()     // Catch: java.lang.Throwable -> L99
            goto L2
        L99:
            r10 = move-exception
            r0 = r6
            monitor-exit(r0)
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.p090a.C1687k.m16542a(long):void");
    }

    @TargetApi(26)
    /* renamed from: a */
    private static void m16541a(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    /* renamed from: b */
    private static void m16537b(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        m16534c(bitmap);
    }

    /* renamed from: c */
    private static Bitmap m16535c(int i, int i2, Bitmap.Config config) {
        if (config == null) {
            config = f5137a;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    /* renamed from: c */
    private void m16536c() {
        m16542a(this.f5142f);
    }

    @TargetApi(19)
    /* renamed from: c */
    private static void m16534c(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    /* renamed from: d */
    private Bitmap m16532d(int i, int i2, Bitmap.Config config) {
        Bitmap mo16525a;
        synchronized (this) {
            m16541a(config);
            mo16525a = this.f5138b.mo16525a(i, i2, config != null ? config : f5137a);
            if (mo16525a == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Missing bitmap=" + this.f5138b.mo16520b(i, i2, config));
                }
                this.f5145i++;
            } else {
                this.f5144h++;
                this.f5143g -= this.f5138b.mo16516c(mo16525a);
                this.f5141e.mo16527b(mo16525a);
                m16537b(mo16525a);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Get bitmap=" + this.f5138b.mo16520b(i, i2, config));
            }
            m16533d();
        }
        return mo16525a;
    }

    /* renamed from: d */
    private void m16533d() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            m16531e();
        }
    }

    /* renamed from: e */
    private void m16531e() {
        Log.v("LruBitmapPool", "Hits=" + this.f5144h + ", misses=" + this.f5145i + ", puts=" + this.f5146j + ", evictions=" + this.f5147k + ", currentSize=" + this.f5143g + ", maxSize=" + this.f5142f + "\nStrategy=" + this.f5138b);
    }

    /* renamed from: f */
    private static AbstractC1690l m16530f() {
        return Build.VERSION.SDK_INT >= 19 ? new C1692n() : new C1674c();
    }

    @TargetApi(26)
    /* renamed from: g */
    private static Set<Bitmap.Config> m16529g() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: a */
    public Bitmap mo16543a(int i, int i2, Bitmap.Config config) {
        Bitmap m16535c;
        Bitmap m16532d = m16532d(i, i2, config);
        if (m16532d != null) {
            m16532d.eraseColor(0);
            m16535c = m16532d;
        } else {
            m16535c = m16535c(i, i2, config);
        }
        return m16535c;
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: a */
    public void mo16545a() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        m16542a(0L);
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo16544a(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i);
        }
        if (i >= 40) {
            mo16545a();
        } else if (i < 20 && i != 15) {
        } else {
            m16542a(m16539b() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: a */
    public void mo16540a(Bitmap bitmap) {
        synchronized (this) {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (!bitmap.isMutable() || this.f5138b.mo16516c(bitmap) > this.f5142f || !this.f5139c.contains(bitmap.getConfig())) {
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f5138b.mo16517b(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f5139c.contains(bitmap.getConfig()));
                }
                bitmap.recycle();
            } else {
                int mo16516c = this.f5138b.mo16516c(bitmap);
                this.f5138b.mo16522a(bitmap);
                this.f5141e.mo16528a(bitmap);
                this.f5146j++;
                this.f5143g = mo16516c + this.f5143g;
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f5138b.mo16517b(bitmap));
                }
                m16533d();
                m16536c();
            }
        }
    }

    /* renamed from: b */
    public long m16539b() {
        return this.f5142f;
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: b */
    public Bitmap mo16538b(int i, int i2, Bitmap.Config config) {
        Bitmap m16532d = m16532d(i, i2, config);
        Bitmap bitmap = m16532d;
        if (m16532d == null) {
            bitmap = m16535c(i, i2, config);
        }
        return bitmap;
    }
}
