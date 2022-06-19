package com.bumptech.glide.load.engine.p209x;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.engine.x.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/k.class */
public class C4105k implements AbstractC4096e {

    /* renamed from: a */
    private static final Bitmap.Config f12933a = Bitmap.Config.ARGB_8888;

    /* renamed from: b */
    private final AbstractC4108l f12934b;

    /* renamed from: c */
    private final Set<Bitmap.Config> f12935c;

    /* renamed from: d */
    private final long f12936d;

    /* renamed from: e */
    private final AbstractC4106a f12937e;

    /* renamed from: f */
    private long f12938f;

    /* renamed from: g */
    private long f12939g;

    /* renamed from: h */
    private int f12940h;

    /* renamed from: i */
    private int f12941i;

    /* renamed from: j */
    private int f12942j;

    /* renamed from: k */
    private int f12943k;

    /* renamed from: com.bumptech.glide.load.engine.x.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/k$a.class */
    public interface AbstractC4106a {
        /* renamed from: a */
        void mo23244a(Bitmap bitmap);

        /* renamed from: b */
        void mo23243b(Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.x.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/k$b.class */
    public static final class C4107b implements AbstractC4106a {
        C4107b() {
        }

        @Override // com.bumptech.glide.load.engine.p209x.C4105k.AbstractC4106a
        /* renamed from: a */
        public void mo23244a(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.p209x.C4105k.AbstractC4106a
        /* renamed from: b */
        public void mo23243b(Bitmap bitmap) {
        }
    }

    public C4105k(long j) {
        this(j, m23250l(), m23251k());
    }

    C4105k(long j, AbstractC4108l abstractC4108l, Set<Bitmap.Config> set) {
        this.f12936d = j;
        this.f12938f = j;
        this.f12934b = abstractC4108l;
        this.f12935c = set;
        this.f12937e = new C4107b();
    }

    @TargetApi(26)
    /* renamed from: f */
    private static void m23256f(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    /* renamed from: g */
    private static Bitmap m23255g(int i, int i2, Bitmap.Config config) {
        if (config == null) {
            config = f12933a;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    /* renamed from: h */
    private void m23254h() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            m23253i();
        }
    }

    /* renamed from: i */
    private void m23253i() {
        Log.v("LruBitmapPool", "Hits=" + this.f12940h + ", misses=" + this.f12941i + ", puts=" + this.f12942j + ", evictions=" + this.f12943k + ", currentSize=" + this.f12939g + ", maxSize=" + this.f12938f + "\nStrategy=" + this.f12934b);
    }

    /* renamed from: j */
    private void m23252j() {
        m23245q(this.f12938f);
    }

    @TargetApi(26)
    /* renamed from: k */
    private static Set<Bitmap.Config> m23251k() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            hashSet.add(null);
        }
        if (i >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: l */
    private static AbstractC4108l m23250l() {
        return Build.VERSION.SDK_INT >= 19 ? new C4110n() : new C4092c();
    }

    /* renamed from: m */
    private Bitmap m23249m(int i, int i2, Bitmap.Config config) {
        Bitmap mo23239d;
        synchronized (this) {
            m23256f(config);
            mo23239d = this.f12934b.mo23239d(i, i2, config != null ? config : f12933a);
            if (mo23239d == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Missing bitmap=" + this.f12934b.mo23241b(i, i2, config));
                }
                this.f12941i++;
            } else {
                this.f12940h++;
                this.f12939g -= this.f12934b.mo23238e(mo23239d);
                this.f12937e.mo23244a(mo23239d);
                m23246p(mo23239d);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Get bitmap=" + this.f12934b.mo23241b(i, i2, config));
            }
            m23254h();
        }
        return mo23239d;
    }

    @TargetApi(19)
    /* renamed from: o */
    private static void m23247o(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    /* renamed from: p */
    private static void m23246p(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        m23247o(bitmap);
    }

    /* renamed from: q */
    private void m23245q(long j) {
        synchronized (this) {
            while (this.f12939g > j) {
                Bitmap mo23242a = this.f12934b.mo23242a();
                if (mo23242a == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        m23253i();
                    }
                    this.f12939g = 0L;
                    return;
                }
                this.f12937e.mo23244a(mo23242a);
                this.f12939g -= this.f12934b.mo23238e(mo23242a);
                this.f12943k++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Evicting bitmap=" + this.f12934b.mo23237f(mo23242a));
                }
                m23254h();
                mo23242a.recycle();
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo23260a(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i);
        }
        if (i >= 40 || (Build.VERSION.SDK_INT >= 23 && i >= 20)) {
            mo23259b();
        } else if (i < 20 && i != 15) {
        } else {
            m23245q(m23248n() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: b */
    public void mo23259b() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        m23245q(0L);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: c */
    public void mo22911c(Bitmap bitmap) {
        synchronized (this) {
            if (bitmap != null) {
                if (bitmap.isRecycled()) {
                    throw new IllegalStateException("Cannot pool recycled bitmap");
                }
                if (bitmap.isMutable() && this.f12934b.mo23238e(bitmap) <= this.f12938f && this.f12935c.contains(bitmap.getConfig())) {
                    int mo23238e = this.f12934b.mo23238e(bitmap);
                    this.f12934b.mo23240c(bitmap);
                    this.f12937e.mo23243b(bitmap);
                    this.f12942j++;
                    this.f12939g += mo23238e;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f12934b.mo23237f(bitmap));
                    }
                    m23254h();
                    m23252j();
                    return;
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f12934b.mo23237f(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f12935c.contains(bitmap.getConfig()));
                }
                bitmap.recycle();
                return;
            }
            throw new NullPointerException("Bitmap must not be null");
        }
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: d */
    public Bitmap mo23258d(int i, int i2, Bitmap.Config config) {
        Bitmap bitmap;
        Bitmap m23249m = m23249m(i, i2, config);
        if (m23249m != null) {
            m23249m.eraseColor(0);
            bitmap = m23249m;
        } else {
            bitmap = m23255g(i, i2, config);
        }
        return bitmap;
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: e */
    public Bitmap mo23257e(int i, int i2, Bitmap.Config config) {
        Bitmap m23249m = m23249m(i, i2, config);
        Bitmap bitmap = m23249m;
        if (m23249m == null) {
            bitmap = m23255g(i, i2, config);
        }
        return bitmap;
    }

    /* renamed from: n */
    public long m23248n() {
        return this.f12938f;
    }
}
