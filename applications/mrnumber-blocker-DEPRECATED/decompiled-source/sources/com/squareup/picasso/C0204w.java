package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: com.squareup.picasso.w */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/w.class */
public final class C0204w {

    /* renamed from: u */
    private static final long f398u = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: a */
    int f399a;

    /* renamed from: b */
    long f400b;

    /* renamed from: c */
    int f401c;

    /* renamed from: d */
    public final Uri f402d;

    /* renamed from: e */
    public final int f403e;

    /* renamed from: f */
    public final String f404f;

    /* renamed from: g */
    public final List<AbstractC0184e0> f405g;

    /* renamed from: h */
    public final int f406h;

    /* renamed from: i */
    public final int f407i;

    /* renamed from: j */
    public final boolean f408j;

    /* renamed from: k */
    public final int f409k;

    /* renamed from: l */
    public final boolean f410l;

    /* renamed from: m */
    public final boolean f411m;

    /* renamed from: n */
    public final float f412n;

    /* renamed from: o */
    public final float f413o;

    /* renamed from: p */
    public final float f414p;

    /* renamed from: q */
    public final boolean f415q;

    /* renamed from: r */
    public final boolean f416r;

    /* renamed from: s */
    public final Bitmap.Config f417s;

    /* renamed from: t */
    public final Picasso.EnumC0167f f418t;

    /* renamed from: com.squareup.picasso.w$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/w$b.class */
    public static final class C0206b {

        /* renamed from: a */
        private Uri f419a;

        /* renamed from: b */
        private int f420b;

        /* renamed from: c */
        private String f421c;

        /* renamed from: d */
        private int f422d;

        /* renamed from: e */
        private int f423e;

        /* renamed from: f */
        private boolean f424f;

        /* renamed from: g */
        private int f425g;

        /* renamed from: h */
        private boolean f426h;

        /* renamed from: i */
        private boolean f427i;

        /* renamed from: j */
        private float f428j;

        /* renamed from: k */
        private float f429k;

        /* renamed from: l */
        private float f430l;

        /* renamed from: m */
        private boolean f431m;

        /* renamed from: n */
        private boolean f432n;

        /* renamed from: o */
        private List<AbstractC0184e0> f433o;

        /* renamed from: p */
        private Bitmap.Config f434p;

        /* renamed from: q */
        private Picasso.EnumC0167f f435q;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0206b(Uri uri, int i, Bitmap.Config config) {
            this.f419a = uri;
            this.f420b = i;
            this.f434p = config;
        }

        /* renamed from: a */
        public C0204w m722a() {
            boolean z = this.f426h;
            if (z && this.f424f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            } else if (this.f424f && this.f422d == 0 && this.f423e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            } else if (z && this.f422d == 0 && this.f423e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            } else {
                if (this.f435q == null) {
                    this.f435q = Picasso.EnumC0167f.NORMAL;
                }
                return new C0204w(this.f419a, this.f420b, this.f421c, this.f433o, this.f422d, this.f423e, this.f424f, this.f426h, this.f425g, this.f427i, this.f428j, this.f429k, this.f430l, this.f431m, this.f432n, this.f434p, this.f435q);
            }
        }

        /* renamed from: b */
        public C0206b m721b(int i) {
            if (!this.f426h) {
                this.f424f = true;
                this.f425g = i;
                return this;
            }
            throw new IllegalStateException("Center crop can not be used after calling centerInside");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public boolean m720c() {
            return (this.f419a == null && this.f420b == 0) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d */
        public boolean m719d() {
            return (this.f422d == 0 && this.f423e == 0) ? false : true;
        }

        /* renamed from: e */
        public C0206b m718e(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            } else if (i2 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            } else if (i2 == 0 && i == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            } else {
                this.f422d = i;
                this.f423e = i2;
                return this;
            }
        }

        /* renamed from: f */
        public C0206b m717f(AbstractC0184e0 e0Var) {
            if (e0Var == null) {
                throw new IllegalArgumentException("Transformation must not be null.");
            } else if (e0Var.key() != null) {
                if (this.f433o == null) {
                    this.f433o = new ArrayList(2);
                }
                this.f433o.add(e0Var);
                return this;
            } else {
                throw new IllegalArgumentException("Transformation key must not be null.");
            }
        }
    }

    private C0204w(Uri uri, int i, String str, List<AbstractC0184e0> list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config, Picasso.EnumC0167f fVar) {
        this.f402d = uri;
        this.f403e = i;
        this.f404f = str;
        if (list == null) {
            this.f405g = null;
        } else {
            this.f405g = Collections.unmodifiableList(list);
        }
        this.f406h = i2;
        this.f407i = i3;
        this.f408j = z;
        this.f410l = z2;
        this.f409k = i4;
        this.f411m = z3;
        this.f412n = f;
        this.f413o = f2;
        this.f414p = f3;
        this.f415q = z4;
        this.f416r = z5;
        this.f417s = config;
        this.f418t = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public String m729a() {
        Uri uri = this.f402d;
        return uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(this.f403e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public boolean m728b() {
        return this.f405g != null;
    }

    /* renamed from: c */
    public boolean m727c() {
        return (this.f406h == 0 && this.f407i == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public String m726d() {
        long nanoTime = System.nanoTime() - this.f400b;
        if (nanoTime > f398u) {
            return m723g() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return m723g() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m725e() {
        return m727c() || this.f412n != 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m724f() {
        return m725e() || m728b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public String m723g() {
        return "[R" + this.f399a + ']';
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.f403e;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.f402d);
        }
        List<AbstractC0184e0> list = this.f405g;
        if (list != null && !list.isEmpty()) {
            for (AbstractC0184e0 e0Var : this.f405g) {
                sb.append(' ');
                sb.append(e0Var.key());
            }
        }
        if (this.f404f != null) {
            sb.append(" stableKey(");
            sb.append(this.f404f);
            sb.append(')');
        }
        if (this.f406h > 0) {
            sb.append(" resize(");
            sb.append(this.f406h);
            sb.append(',');
            sb.append(this.f407i);
            sb.append(')');
        }
        if (this.f408j) {
            sb.append(" centerCrop");
        }
        if (this.f410l) {
            sb.append(" centerInside");
        }
        if (this.f412n != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.f412n);
            if (this.f415q) {
                sb.append(" @ ");
                sb.append(this.f413o);
                sb.append(',');
                sb.append(this.f414p);
            }
            sb.append(')');
        }
        if (this.f416r) {
            sb.append(" purgeable");
        }
        if (this.f417s != null) {
            sb.append(' ');
            sb.append(this.f417s);
        }
        sb.append('}');
        return sb.toString();
    }
}
