package com.bumptech.glide.load.engine.p119a;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.engine.a.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k.class */
public final class C3721k implements AbstractC3712e {

    /* renamed from: a */
    private static final Bitmap.Config f13896a = Bitmap.Config.ARGB_8888;

    /* renamed from: b */
    private final AbstractC3724l f13897b;

    /* renamed from: c */
    private final Set<Bitmap.Config> f13898c;

    /* renamed from: d */
    private final long f13899d;

    /* renamed from: e */
    private final AbstractC3722a f13900e;

    /* renamed from: f */
    private long f13901f;

    /* renamed from: g */
    private long f13902g;

    /* renamed from: h */
    private int f13903h;

    /* renamed from: i */
    private int f13904i;

    /* renamed from: j */
    private int f13905j;

    /* renamed from: k */
    private int f13906k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k$a.class */
    public interface AbstractC3722a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/k$b.class */
    public static final class C3723b implements AbstractC3722a {
        C3723b() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3721k(long r7) {
        /*
            r6 = this;
            com.bumptech.glide.load.engine.a.l r0 = m37454d()
            r9 = r0
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            android.graphics.Bitmap$Config[] r2 = android.graphics.Bitmap.Config.values()
            java.util.List r2 = java.util.Arrays.asList(r2)
            r1.<init>(r2)
            r10 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto L24
            r0 = r10
            r1 = 0
            boolean r0 = r0.add(r1)
        L24:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L37
            r0 = r10
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.HARDWARE
            boolean r0 = r0.remove(r1)
        L37:
            r0 = r6
            r1 = r7
            r2 = r9
            r3 = r10
            java.util.Set r3 = java.util.Collections.unmodifiableSet(r3)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.p119a.C3721k.<init>(long):void");
    }

    C3721k(long j, AbstractC3724l abstractC3724l, Set<Bitmap.Config> set) {
        this.f13899d = j;
        this.f13901f = j;
        this.f13897b = abstractC3724l;
        this.f13898c = set;
        this.f13900e = new C3723b();
    }

    public C3721k(long j, Set<Bitmap.Config> set) {
        this(j, m37454d(), set);
    }

    /* renamed from: a */
    private void m37459a(long j) {
        synchronized (this) {
            while (this.f13902g > j) {
                Bitmap mo37452a = this.f13897b.mo37452a();
                if (mo37452a == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        m37456c();
                    }
                    this.f13902g = 0L;
                    return;
                }
                this.f13902g -= this.f13897b.mo37444c(mo37452a);
                this.f13906k++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    new StringBuilder("Evicting bitmap=").append(this.f13897b.mo37445b(mo37452a));
                }
                m37458b();
                mo37452a.recycle();
            }
        }
    }

    /* renamed from: b */
    private void m37458b() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            m37456c();
        }
    }

    /* renamed from: c */
    private static Bitmap m37455c(int i, int i2, Bitmap.Config config) {
        if (config == null) {
            config = f13896a;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    /* renamed from: c */
    private void m37456c() {
        StringBuilder sb = new StringBuilder("Hits=");
        sb.append(this.f13903h);
        sb.append(", misses=");
        sb.append(this.f13904i);
        sb.append(", puts=");
        sb.append(this.f13905j);
        sb.append(", evictions=");
        sb.append(this.f13906k);
        sb.append(", currentSize=");
        sb.append(this.f13902g);
        sb.append(", maxSize=");
        sb.append(this.f13901f);
        sb.append("\nStrategy=");
        sb.append(this.f13897b);
    }

    /* renamed from: d */
    private Bitmap m37453d(int i, int i2, Bitmap.Config config) {
        Bitmap mo37451a;
        synchronized (this) {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            mo37451a = this.f13897b.mo37451a(i, i2, config != null ? config : f13896a);
            if (mo37451a == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    new StringBuilder("Missing bitmap=").append(this.f13897b.mo37446b(i, i2, config));
                }
                this.f13904i++;
            } else {
                this.f13903h++;
                this.f13902g -= this.f13897b.mo37444c(mo37451a);
                mo37451a.setHasAlpha(true);
                if (Build.VERSION.SDK_INT >= 19) {
                    mo37451a.setPremultiplied(true);
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                new StringBuilder("Get bitmap=").append(this.f13897b.mo37446b(i, i2, config));
            }
            m37458b();
        }
        return mo37451a;
    }

    /* renamed from: d */
    private static AbstractC3724l m37454d() {
        return Build.VERSION.SDK_INT >= 19 ? new C3726n() : new C3708c();
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3712e
    /* renamed from: a */
    public final Bitmap mo37460a(int i, int i2, Bitmap.Config config) {
        Bitmap bitmap;
        Bitmap m37453d = m37453d(i, i2, config);
        if (m37453d != null) {
            m37453d.eraseColor(0);
            bitmap = m37453d;
        } else {
            bitmap = m37455c(i, i2, config);
        }
        return bitmap;
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3712e
    /* renamed from: a */
    public final void mo37462a() {
        Log.isLoggable("LruBitmapPool", 3);
        m37459a(0L);
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3712e
    /* renamed from: a */
    public final void mo37461a(int i) {
        Log.isLoggable("LruBitmapPool", 3);
        if (i >= 40 || (Build.VERSION.SDK_INT >= 23 && i >= 20)) {
            mo37462a();
        } else if (i < 20 && i != 15) {
        } else {
            m37459a(this.f13901f / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3712e
    /* renamed from: a */
    public final void mo37266a(Bitmap bitmap) {
        synchronized (this) {
            if (bitmap != null) {
                if (bitmap.isRecycled()) {
                    throw new IllegalStateException("Cannot pool recycled bitmap");
                }
                if (bitmap.isMutable() && this.f13897b.mo37444c(bitmap) <= this.f13901f && this.f13898c.contains(bitmap.getConfig())) {
                    int mo37444c = this.f13897b.mo37444c(bitmap);
                    this.f13897b.mo37448a(bitmap);
                    this.f13905j++;
                    this.f13902g += mo37444c;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        new StringBuilder("Put bitmap in pool=").append(this.f13897b.mo37445b(bitmap));
                    }
                    m37458b();
                    m37459a(this.f13901f);
                    return;
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    StringBuilder sb = new StringBuilder("Reject bitmap from pool, bitmap: ");
                    sb.append(this.f13897b.mo37445b(bitmap));
                    sb.append(", is mutable: ");
                    sb.append(bitmap.isMutable());
                    sb.append(", is allowed config: ");
                    sb.append(this.f13898c.contains(bitmap.getConfig()));
                }
                bitmap.recycle();
                return;
            }
            throw new NullPointerException("Bitmap must not be null");
        }
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3712e
    /* renamed from: b */
    public final Bitmap mo37457b(int i, int i2, Bitmap.Config config) {
        Bitmap m37453d = m37453d(i, i2, config);
        Bitmap bitmap = m37453d;
        if (m37453d == null) {
            bitmap = m37455c(i, i2, config);
        }
        return bitmap;
    }
}
