package p107g9;

import android.graphics.Bitmap;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: g9.v */
/* loaded from: classes2-dex2jar.jar:g9/v.class */
public final class C2964v {

    /* renamed from: s */
    public static final long f9953s = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: a */
    public int f9954a;

    /* renamed from: b */
    public long f9955b;

    /* renamed from: c */
    public final Uri f9956c;

    /* renamed from: d */
    public final int f9957d;

    /* renamed from: e */
    public final List<AbstractC2919b0> f9958e;

    /* renamed from: f */
    public final int f9959f;

    /* renamed from: g */
    public final int f9960g;

    /* renamed from: h */
    public final boolean f9961h;

    /* renamed from: i */
    public final int f9962i;

    /* renamed from: j */
    public final boolean f9963j;

    /* renamed from: k */
    public final boolean f9964k;

    /* renamed from: l */
    public final float f9965l;

    /* renamed from: m */
    public final float f9966m;

    /* renamed from: n */
    public final float f9967n;

    /* renamed from: o */
    public final boolean f9968o;

    /* renamed from: p */
    public final boolean f9969p;

    /* renamed from: q */
    public final Bitmap.Config f9970q;

    /* renamed from: r */
    public final int f9971r;

    /* renamed from: g9.v$b */
    /* loaded from: classes2-dex2jar.jar:g9/v$b.class */
    public static final class C2966b {

        /* renamed from: a */
        public Uri f9972a;

        /* renamed from: b */
        public int f9973b;

        /* renamed from: c */
        public int f9974c;

        /* renamed from: d */
        public int f9975d;

        /* renamed from: e */
        public List<AbstractC2919b0> f9976e;

        /* renamed from: f */
        public Bitmap.Config f9977f;

        /* renamed from: g */
        public int f9978g;

        public C2966b(Uri uri, int i, Bitmap.Config config) {
            this.f9972a = uri;
            this.f9973b = i;
            this.f9977f = config;
        }

        /* renamed from: a */
        public C2966b m2810a(int i, int i2) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("Height must be positive number or 0.");
                }
                if (i2 == 0 && i == 0) {
                    throw new IllegalArgumentException("At least one dimension has to be positive number.");
                }
                this.f9974c = i;
                this.f9975d = i2;
                return this;
            }
            throw new IllegalArgumentException("Width must be positive number or 0.");
        }
    }

    public C2964v(Uri uri, int i, String str, List list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config, int i5, C2965a c2965a) {
        this.f9956c = uri;
        this.f9957d = i;
        if (list == null) {
            this.f9958e = null;
        } else {
            this.f9958e = Collections.unmodifiableList(list);
        }
        this.f9959f = i2;
        this.f9960g = i3;
        this.f9961h = z;
        this.f9963j = z2;
        this.f9962i = i4;
        this.f9964k = z3;
        this.f9965l = f;
        this.f9966m = f2;
        this.f9967n = f3;
        this.f9968o = z4;
        this.f9969p = z5;
        this.f9970q = config;
        this.f9971r = i5;
    }

    /* renamed from: a */
    public boolean m2814a() {
        return (this.f9959f == 0 && this.f9960g == 0) ? false : true;
    }

    /* renamed from: b */
    public String m2813b() {
        long nanoTime = System.nanoTime() - this.f9955b;
        if (nanoTime > f9953s) {
            return m2811d() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return m2811d() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    /* renamed from: c */
    public boolean m2812c() {
        return m2814a() || this.f9965l != 0.0f;
    }

    /* renamed from: d */
    public String m2811d() {
        StringBuilder m8752j = C0082b.m8752j("[R");
        m8752j.append(this.f9954a);
        m8752j.append(']');
        return m8752j.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.f9957d;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.f9956c);
        }
        List<AbstractC2919b0> list = this.f9958e;
        if (list != null && !list.isEmpty()) {
            for (AbstractC2919b0 abstractC2919b0 : this.f9958e) {
                sb.append(' ');
                sb.append(abstractC2919b0.mo1592b());
            }
        }
        if (this.f9959f > 0) {
            sb.append(" resize(");
            sb.append(this.f9959f);
            sb.append(',');
            sb.append(this.f9960g);
            sb.append(')');
        }
        if (this.f9961h) {
            sb.append(" centerCrop");
        }
        if (this.f9963j) {
            sb.append(" centerInside");
        }
        if (this.f9965l != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.f9965l);
            if (this.f9968o) {
                sb.append(" @ ");
                sb.append(this.f9966m);
                sb.append(',');
                sb.append(this.f9967n);
            }
            sb.append(')');
        }
        if (this.f9969p) {
            sb.append(" purgeable");
        }
        if (this.f9970q != null) {
            sb.append(' ');
            sb.append(this.f9970q);
        }
        sb.append('}');
        return sb.toString();
    }
}
