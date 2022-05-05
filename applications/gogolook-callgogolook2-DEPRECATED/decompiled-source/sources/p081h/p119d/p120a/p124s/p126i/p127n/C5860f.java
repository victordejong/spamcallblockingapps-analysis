package p081h.p119d.p120a.p124s.p126i.p127n;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: h.d.a.s.i.n.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/f.class */
public class C5860f implements AbstractC5856c {

    /* renamed from: j */
    public static final Bitmap.Config f14774j = Bitmap.Config.ARGB_8888;

    /* renamed from: a */
    public final AbstractC5864g f14775a;

    /* renamed from: b */
    public final Set<Bitmap.Config> f14776b;

    /* renamed from: c */
    public final AbstractC5862b f14777c;

    /* renamed from: d */
    public int f14778d;

    /* renamed from: e */
    public int f14779e;

    /* renamed from: f */
    public int f14780f;

    /* renamed from: g */
    public int f14781g;

    /* renamed from: h */
    public int f14782h;

    /* renamed from: i */
    public int f14783i;

    /* renamed from: h.d.a.s.i.n.f$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/f$b.class */
    public interface AbstractC5862b {
        /* renamed from: a */
        void mo24212a(Bitmap bitmap);

        /* renamed from: b */
        void mo24211b(Bitmap bitmap);
    }

    /* renamed from: h.d.a.s.i.n.f$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/f$c.class */
    public static class C5863c implements AbstractC5862b {
        public C5863c() {
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p127n.C5860f.AbstractC5862b
        /* renamed from: a */
        public void mo24212a(Bitmap bitmap) {
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p127n.C5860f.AbstractC5862b
        /* renamed from: b */
        public void mo24211b(Bitmap bitmap) {
        }
    }

    public C5860f(int i) {
        this(i, m24213f(), m24214e());
    }

    public C5860f(int i, AbstractC5864g gVar, Set<Bitmap.Config> set) {
        this.f14778d = i;
        this.f14775a = gVar;
        this.f14776b = set;
        this.f14777c = new C5863c();
    }

    /* renamed from: e */
    public static Set<Bitmap.Config> m24214e() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: f */
    public static AbstractC5864g m24213f() {
        return Build.VERSION.SDK_INT >= 19 ? new C5866i() : new C5852a();
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c
    /* renamed from: a */
    public Bitmap mo24221a(int i, int i2, Bitmap.Config config) {
        Bitmap b;
        synchronized (this) {
            b = mo24217b(i, i2, config);
            if (b != null) {
                b.eraseColor(0);
            }
        }
        return b;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c
    /* renamed from: a */
    public void mo24223a() {
        Log.isLoggable("LruBitmapPool", 3);
        m24218b(0);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo24222a(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            String str = "trimMemory, level=" + i;
        }
        if (i >= 60) {
            mo24223a();
        } else if (i >= 40) {
            m24218b(this.f14778d / 2);
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c
    /* renamed from: a */
    public boolean mo24220a(Bitmap bitmap) {
        synchronized (this) {
            if (bitmap != null) {
                if (bitmap.isMutable() && this.f14775a.mo24200c(bitmap) <= this.f14778d && this.f14776b.contains(bitmap.getConfig())) {
                    int c = this.f14775a.mo24200c(bitmap);
                    this.f14775a.mo24207a(bitmap);
                    this.f14777c.mo24211b(bitmap);
                    this.f14782h++;
                    this.f14779e += c;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        String str = "Put bitmap in pool=" + this.f14775a.mo24201b(bitmap);
                    }
                    m24219b();
                    m24215d();
                    return true;
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    String str2 = "Reject bitmap from pool, bitmap: " + this.f14775a.mo24201b(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f14776b.contains(bitmap.getConfig());
                }
                return false;
            }
            throw new NullPointerException("Bitmap must not be null");
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c
    @TargetApi(12)
    /* renamed from: b */
    public Bitmap mo24217b(int i, int i2, Bitmap.Config config) {
        Bitmap a;
        synchronized (this) {
            a = this.f14775a.mo24210a(i, i2, config != null ? config : f14774j);
            if (a == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    String str = "Missing bitmap=" + this.f14775a.mo24204b(i, i2, config);
                }
                this.f14781g++;
            } else {
                this.f14780f++;
                this.f14779e -= this.f14775a.mo24200c(a);
                this.f14777c.mo24212a(a);
                if (Build.VERSION.SDK_INT >= 12) {
                    a.setHasAlpha(true);
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                String str2 = "Get bitmap=" + this.f14775a.mo24204b(i, i2, config);
            }
            m24219b();
        }
        return a;
    }

    /* renamed from: b */
    public final void m24219b() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            m24216c();
        }
    }

    /* renamed from: b */
    public final void m24218b(int i) {
        synchronized (this) {
            while (this.f14779e > i) {
                Bitmap removeLast = this.f14775a.removeLast();
                if (removeLast == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        m24216c();
                    }
                    this.f14779e = 0;
                    return;
                }
                this.f14777c.mo24212a(removeLast);
                this.f14779e -= this.f14775a.mo24200c(removeLast);
                removeLast.recycle();
                this.f14783i++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    String str = "Evicting bitmap=" + this.f14775a.mo24201b(removeLast);
                }
                m24219b();
            }
        }
    }

    /* renamed from: c */
    public final void m24216c() {
        String str = "Hits=" + this.f14780f + ", misses=" + this.f14781g + ", puts=" + this.f14782h + ", evictions=" + this.f14783i + ", currentSize=" + this.f14779e + ", maxSize=" + this.f14778d + "\nStrategy=" + this.f14775a;
    }

    /* renamed from: d */
    public final void m24215d() {
        m24218b(this.f14778d);
    }
}
