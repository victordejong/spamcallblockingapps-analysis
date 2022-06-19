package p193e.p1451f.p1452a.p1457n.p1460o.p1461b0;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.o.b0.j */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/j.class */
public class C22312j implements AbstractC22303d {

    /* renamed from: j */
    public static final Bitmap.Config f61976j = Bitmap.Config.ARGB_8888;

    /* renamed from: a */
    public final AbstractC22315k f61977a;

    /* renamed from: b */
    public final Set<Bitmap.Config> f61978b;

    /* renamed from: c */
    public final AbstractC22313a f61979c;

    /* renamed from: d */
    public long f61980d;

    /* renamed from: e */
    public long f61981e;

    /* renamed from: f */
    public int f61982f;

    /* renamed from: g */
    public int f61983g;

    /* renamed from: h */
    public int f61984h;

    /* renamed from: i */
    public int f61985i;

    /* renamed from: e.f.a.n.o.b0.j$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/j$a.class */
    public interface AbstractC22313a {
    }

    /* renamed from: e.f.a.n.o.b0.j$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/j$b.class */
    public static final class C22314b implements AbstractC22313a {
    }

    public C22312j(long j) {
        C22317m c22317m = new C22317m();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set<Bitmap.Config> unmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f61980d = j;
        this.f61977a = c22317m;
        this.f61978b = unmodifiableSet;
        this.f61979c = new C22314b();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d
    /* renamed from: a */
    public void mo8329a(int i) {
        Log.isLoggable("LruBitmapPool", 3);
        if (i >= 40 || i >= 20) {
            Log.isLoggable("LruBitmapPool", 3);
            m8321i(0L);
        } else if (i < 20 && i != 15) {
        } else {
            m8321i(this.f61980d / 2);
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d
    /* renamed from: b */
    public void mo8328b() {
        Log.isLoggable("LruBitmapPool", 3);
        m8321i(0L);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d
    /* renamed from: c */
    public void mo8327c(Bitmap bitmap) {
        synchronized (this) {
            if (bitmap != null) {
                if (bitmap.isRecycled()) {
                    throw new IllegalStateException("Cannot pool recycled bitmap");
                }
                if (bitmap.isMutable()) {
                    Objects.requireNonNull((C22317m) this.f61977a);
                    if (C22623j.m8020d(bitmap) <= this.f61980d && this.f61978b.contains(bitmap.getConfig())) {
                        Objects.requireNonNull((C22317m) this.f61977a);
                        int m8020d = C22623j.m8020d(bitmap);
                        ((C22317m) this.f61977a).m8315f(bitmap);
                        Objects.requireNonNull((C22314b) this.f61979c);
                        this.f61984h++;
                        this.f61981e += m8020d;
                        if (Log.isLoggable("LruBitmapPool", 2)) {
                            ((C22317m) this.f61977a).m8316e(bitmap);
                        }
                        m8324f();
                        m8321i(this.f61980d);
                        return;
                    }
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    ((C22317m) this.f61977a).m8316e(bitmap);
                    bitmap.isMutable();
                    this.f61978b.contains(bitmap.getConfig());
                }
                bitmap.recycle();
                return;
            }
            throw new NullPointerException("Bitmap must not be null");
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d
    /* renamed from: d */
    public Bitmap mo8326d(int i, int i2, Bitmap.Config config) {
        Bitmap m8322h = m8322h(i, i2, config);
        Bitmap bitmap = m8322h;
        if (m8322h == null) {
            if (config == null) {
                config = f61976j;
            }
            bitmap = Bitmap.createBitmap(i, i2, config);
        }
        return bitmap;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d
    /* renamed from: e */
    public Bitmap mo8325e(int i, int i2, Bitmap.Config config) {
        Bitmap bitmap;
        Bitmap m8322h = m8322h(i, i2, config);
        if (m8322h != null) {
            m8322h.eraseColor(0);
            bitmap = m8322h;
        } else {
            if (config == null) {
                config = f61976j;
            }
            bitmap = Bitmap.createBitmap(i, i2, config);
        }
        return bitmap;
    }

    /* renamed from: f */
    public final void m8324f() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            m8323g();
        }
    }

    /* renamed from: g */
    public final void m8323g() {
        StringBuilder m8728C = C22128a.m8728C("Hits=");
        m8728C.append(this.f61982f);
        m8728C.append(", misses=");
        m8728C.append(this.f61983g);
        m8728C.append(", puts=");
        m8728C.append(this.f61984h);
        m8728C.append(", evictions=");
        m8728C.append(this.f61985i);
        m8728C.append(", currentSize=");
        m8728C.append(this.f61981e);
        m8728C.append(", maxSize=");
        m8728C.append(this.f61980d);
        m8728C.append("\nStrategy=");
        m8728C.append(this.f61977a);
        m8728C.toString();
    }

    /* renamed from: h */
    public final Bitmap m8322h(int i, int i2, Bitmap.Config config) {
        Bitmap m8319b;
        synchronized (this) {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            m8319b = ((C22317m) this.f61977a).m8319b(i, i2, config != null ? config : f61976j);
            if (m8319b == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Objects.requireNonNull((C22317m) this.f61977a);
                    C22317m.m8318c(C22623j.m8021c(i, i2, config), config);
                }
                this.f61983g++;
            } else {
                this.f61982f++;
                long j = this.f61981e;
                Objects.requireNonNull((C22317m) this.f61977a);
                this.f61981e = j - C22623j.m8020d(m8319b);
                Objects.requireNonNull((C22314b) this.f61979c);
                m8319b.setHasAlpha(true);
                m8319b.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Objects.requireNonNull((C22317m) this.f61977a);
                C22317m.m8318c(C22623j.m8021c(i, i2, config), config);
            }
            m8324f();
        }
        return m8319b;
    }

    /* renamed from: i */
    public final void m8321i(long j) {
        synchronized (this) {
            while (this.f61981e > j) {
                C22317m c22317m = (C22317m) this.f61977a;
                Bitmap m8343c = c22317m.f61992b.m8343c();
                if (m8343c != null) {
                    c22317m.m8320a(Integer.valueOf(C22623j.m8020d(m8343c)), m8343c);
                }
                if (m8343c == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        m8323g();
                    }
                    this.f61981e = 0L;
                    return;
                }
                Objects.requireNonNull((C22314b) this.f61979c);
                long j2 = this.f61981e;
                Objects.requireNonNull((C22317m) this.f61977a);
                this.f61981e = j2 - C22623j.m8020d(m8343c);
                this.f61985i++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    ((C22317m) this.f61977a).m8316e(m8343c);
                }
                m8324f();
                m8343c.recycle();
            }
        }
    }
}
