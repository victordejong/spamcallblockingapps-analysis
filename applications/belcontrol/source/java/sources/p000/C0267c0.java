package p000;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
/* renamed from: c0 */
/* loaded from: classes-dex2jar.jar:c0.class */
public class C0267c0 extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    public AbstractC0270c f2033a;

    /* renamed from: b */
    public Rect f2034b;

    /* renamed from: c */
    public Drawable f2035c;

    /* renamed from: d */
    public Drawable f2036d;

    /* renamed from: g */
    public boolean f2038g;

    /* renamed from: j */
    public boolean f2040j;

    /* renamed from: k */
    public Runnable f2041k;

    /* renamed from: l */
    public long f2042l;

    /* renamed from: m */
    public long f2043m;

    /* renamed from: n */
    public C0269b f2044n;

    /* renamed from: f */
    public int f2037f = 255;

    /* renamed from: h */
    public int f2039h = -1;

    /* renamed from: c0$a */
    /* loaded from: classes-dex2jar.jar:c0$a.class */
    public class RunnableC0268a implements Runnable {
        public RunnableC0268a() {
            C0267c0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0267c0.this.m5545d(true);
            C0267c0.this.invalidateSelf();
        }
    }

    /* renamed from: c0$b */
    /* loaded from: classes-dex2jar.jar:c0$b.class */
    public static class C0269b implements Drawable.Callback {

        /* renamed from: a */
        public Drawable.Callback f2046a;

        /* renamed from: a */
        public Drawable.Callback m5536a() {
            Drawable.Callback callback = this.f2046a;
            this.f2046a = null;
            return callback;
        }

        /* renamed from: b */
        public C0269b m5535b(Drawable.Callback callback) {
            this.f2046a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f2046a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f2046a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: c0$c */
    /* loaded from: classes-dex2jar.jar:c0$c.class */
    public static abstract class AbstractC0270c extends Drawable.ConstantState {

        /* renamed from: A */
        public int f2047A;

        /* renamed from: B */
        public int f2048B;

        /* renamed from: C */
        public boolean f2049C;

        /* renamed from: D */
        public ColorFilter f2050D;

        /* renamed from: E */
        public boolean f2051E;

        /* renamed from: F */
        public ColorStateList f2052F;

        /* renamed from: G */
        public PorterDuff.Mode f2053G;

        /* renamed from: H */
        public boolean f2054H;

        /* renamed from: I */
        public boolean f2055I;

        /* renamed from: a */
        public final C0267c0 f2056a;

        /* renamed from: b */
        public Resources f2057b;

        /* renamed from: c */
        public int f2058c;

        /* renamed from: d */
        public int f2059d;

        /* renamed from: e */
        public int f2060e;

        /* renamed from: f */
        public SparseArray<Drawable.ConstantState> f2061f;

        /* renamed from: g */
        public Drawable[] f2062g;

        /* renamed from: h */
        public int f2063h;

        /* renamed from: i */
        public boolean f2064i;

        /* renamed from: j */
        public boolean f2065j;

        /* renamed from: k */
        public Rect f2066k;

        /* renamed from: l */
        public boolean f2067l;

        /* renamed from: m */
        public boolean f2068m;

        /* renamed from: n */
        public int f2069n;

        /* renamed from: o */
        public int f2070o;

        /* renamed from: p */
        public int f2071p;

        /* renamed from: q */
        public int f2072q;

        /* renamed from: r */
        public boolean f2073r;

        /* renamed from: s */
        public int f2074s;

        /* renamed from: t */
        public boolean f2075t;

        /* renamed from: u */
        public boolean f2076u;

        /* renamed from: v */
        public boolean f2077v;

        /* renamed from: w */
        public boolean f2078w;

        /* renamed from: x */
        public boolean f2079x;

        /* renamed from: y */
        public boolean f2080y;

        /* renamed from: z */
        public int f2081z;

        public AbstractC0270c(AbstractC0270c abstractC0270c, C0267c0 c0267c0, Resources resources) {
            this.f2058c = 160;
            this.f2064i = false;
            this.f2067l = false;
            this.f2079x = true;
            this.f2047A = 0;
            this.f2048B = 0;
            this.f2056a = c0267c0;
            this.f2057b = resources != null ? resources : abstractC0270c != null ? abstractC0270c.f2057b : null;
            int m5540i = C0267c0.m5540i(resources, abstractC0270c != null ? abstractC0270c.f2058c : 0);
            this.f2058c = m5540i;
            if (abstractC0270c == null) {
                this.f2062g = new Drawable[10];
                this.f2063h = 0;
                return;
            }
            this.f2059d = abstractC0270c.f2059d;
            this.f2060e = abstractC0270c.f2060e;
            this.f2077v = true;
            this.f2078w = true;
            this.f2064i = abstractC0270c.f2064i;
            this.f2067l = abstractC0270c.f2067l;
            this.f2079x = abstractC0270c.f2079x;
            this.f2080y = abstractC0270c.f2080y;
            this.f2081z = abstractC0270c.f2081z;
            this.f2047A = abstractC0270c.f2047A;
            this.f2048B = abstractC0270c.f2048B;
            this.f2049C = abstractC0270c.f2049C;
            this.f2050D = abstractC0270c.f2050D;
            this.f2051E = abstractC0270c.f2051E;
            this.f2052F = abstractC0270c.f2052F;
            this.f2053G = abstractC0270c.f2053G;
            this.f2054H = abstractC0270c.f2054H;
            this.f2055I = abstractC0270c.f2055I;
            if (abstractC0270c.f2058c == m5540i) {
                if (abstractC0270c.f2065j) {
                    this.f2066k = new Rect(abstractC0270c.f2066k);
                    this.f2065j = true;
                }
                if (abstractC0270c.f2068m) {
                    this.f2069n = abstractC0270c.f2069n;
                    this.f2070o = abstractC0270c.f2070o;
                    this.f2071p = abstractC0270c.f2071p;
                    this.f2072q = abstractC0270c.f2072q;
                    this.f2068m = true;
                }
            }
            if (abstractC0270c.f2073r) {
                this.f2074s = abstractC0270c.f2074s;
                this.f2073r = true;
            }
            if (abstractC0270c.f2075t) {
                this.f2076u = abstractC0270c.f2076u;
                this.f2075t = true;
            }
            Drawable[] drawableArr = abstractC0270c.f2062g;
            this.f2062g = new Drawable[drawableArr.length];
            this.f2063h = abstractC0270c.f2063h;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC0270c.f2061f;
            this.f2061f = sparseArray != null ? sparseArray.clone() : new SparseArray<>(this.f2063h);
            int i = this.f2063h;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f2061f.put(i2, constantState);
                    } else {
                        this.f2062g[i2] = drawableArr[i2];
                    }
                }
            }
        }

        /* renamed from: a */
        public final int m5534a(Drawable drawable) {
            int i = this.f2063h;
            if (i >= this.f2062g.length) {
                m5520o(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f2056a);
            this.f2062g[i] = drawable;
            this.f2063h++;
            this.f2060e = drawable.getChangingConfigurations() | this.f2060e;
            m5519p();
            this.f2066k = null;
            this.f2065j = false;
            this.f2068m = false;
            this.f2077v = false;
            return i;
        }

        /* renamed from: b */
        public final void m5533b(Resources.Theme theme) {
            if (theme != null) {
                m5530e();
                int i = this.f2063h;
                Drawable[] drawableArr = this.f2062g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.f2060e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m5510y(theme.getResources());
            }
        }

        /* renamed from: c */
        public boolean m5532c() {
            synchronized (this) {
                if (this.f2077v) {
                    return this.f2078w;
                }
                m5530e();
                this.f2077v = true;
                int i = this.f2063h;
                Drawable[] drawableArr = this.f2062g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        this.f2078w = false;
                        return false;
                    }
                }
                this.f2078w = true;
                return true;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f2063h;
            Drawable[] drawableArr = this.f2062g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f2061f.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        public void m5531d() {
            this.f2068m = true;
            m5530e();
            int i = this.f2063h;
            Drawable[] drawableArr = this.f2062g;
            this.f2070o = -1;
            this.f2069n = -1;
            this.f2072q = 0;
            this.f2071p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f2069n) {
                    this.f2069n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f2070o) {
                    this.f2070o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f2071p) {
                    this.f2071p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f2072q) {
                    this.f2072q = minimumHeight;
                }
            }
        }

        /* renamed from: e */
        public final void m5530e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f2061f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f2062g[this.f2061f.keyAt(i)] = m5516s(this.f2061f.valueAt(i).newDrawable(this.f2057b));
                }
                this.f2061f = null;
            }
        }

        /* renamed from: f */
        public final int m5529f() {
            return this.f2062g.length;
        }

        /* renamed from: g */
        public final Drawable m5528g(int i) {
            int indexOfKey;
            Drawable drawable = this.f2062g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f2061f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable m5516s = m5516s(this.f2061f.valueAt(indexOfKey).newDrawable(this.f2057b));
            this.f2062g[i] = m5516s;
            this.f2061f.removeAt(indexOfKey);
            if (this.f2061f.size() == 0) {
                this.f2061f = null;
            }
            return m5516s;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2059d | this.f2060e;
        }

        /* renamed from: h */
        public final int m5527h() {
            return this.f2063h;
        }

        /* renamed from: i */
        public final int m5526i() {
            if (!this.f2068m) {
                m5531d();
            }
            return this.f2070o;
        }

        /* renamed from: j */
        public final int m5525j() {
            if (!this.f2068m) {
                m5531d();
            }
            return this.f2072q;
        }

        /* renamed from: k */
        public final int m5524k() {
            if (!this.f2068m) {
                m5531d();
            }
            return this.f2071p;
        }

        /* renamed from: l */
        public final Rect m5523l() {
            Rect rect = null;
            if (this.f2064i) {
                return null;
            }
            Rect rect2 = this.f2066k;
            if (rect2 != null || this.f2065j) {
                return rect2;
            }
            m5530e();
            Rect rect3 = new Rect();
            int i = this.f2063h;
            Drawable[] drawableArr = this.f2062g;
            int i2 = 0;
            while (i2 < i) {
                Rect rect4 = rect;
                if (drawableArr[i2].getPadding(rect3)) {
                    Rect rect5 = rect;
                    if (rect == null) {
                        rect5 = new Rect(0, 0, 0, 0);
                    }
                    int i3 = rect3.left;
                    if (i3 > rect5.left) {
                        rect5.left = i3;
                    }
                    int i4 = rect3.top;
                    if (i4 > rect5.top) {
                        rect5.top = i4;
                    }
                    int i5 = rect3.right;
                    if (i5 > rect5.right) {
                        rect5.right = i5;
                    }
                    int i6 = rect3.bottom;
                    rect4 = rect5;
                    if (i6 > rect5.bottom) {
                        rect5.bottom = i6;
                        rect4 = rect5;
                    }
                }
                i2++;
                rect = rect4;
            }
            this.f2065j = true;
            this.f2066k = rect;
            return rect;
        }

        /* renamed from: m */
        public final int m5522m() {
            if (!this.f2068m) {
                m5531d();
            }
            return this.f2069n;
        }

        /* renamed from: n */
        public final int m5521n() {
            if (this.f2073r) {
                return this.f2074s;
            }
            m5530e();
            int i = this.f2063h;
            Drawable[] drawableArr = this.f2062g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f2074s = opacity;
            this.f2073r = true;
            return opacity;
        }

        /* renamed from: o */
        public void m5520o(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f2062g, 0, drawableArr, 0, i);
            this.f2062g = drawableArr;
        }

        /* renamed from: p */
        public void m5519p() {
            this.f2073r = false;
            this.f2075t = false;
        }

        /* renamed from: q */
        public final boolean m5518q() {
            return this.f2067l;
        }

        /* renamed from: r */
        public abstract void m5517r();

        /* renamed from: s */
        public final Drawable m5516s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f2081z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f2056a);
            return mutate;
        }

        /* renamed from: t */
        public final void m5515t(boolean z) {
            this.f2067l = z;
        }

        /* renamed from: u */
        public final void m5514u(int i) {
            this.f2047A = i;
        }

        /* renamed from: v */
        public final void m5513v(int i) {
            this.f2048B = i;
        }

        /* renamed from: w */
        public final boolean m5512w(int i, int i2) {
            int i3 = this.f2063h;
            Drawable[] drawableArr = this.f2062g;
            int i4 = 0;
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (i4 >= i3) {
                    this.f2081z = i;
                    return z2;
                }
                boolean z3 = z2;
                if (drawableArr[i4] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                    z3 = z2;
                    if (i4 == i2) {
                        z3 = layoutDirection;
                    }
                }
                i4++;
                z = z3;
            }
        }

        /* renamed from: x */
        public final void m5511x(boolean z) {
            this.f2064i = z;
        }

        /* renamed from: y */
        public final void m5510y(Resources resources) {
            if (resources != null) {
                this.f2057b = resources;
                int m5540i = C0267c0.m5540i(resources, this.f2058c);
                int i = this.f2058c;
                this.f2058c = m5540i;
                if (i == m5540i) {
                    return;
                }
                this.f2068m = false;
                this.f2065j = false;
            }
        }
    }

    /* renamed from: i */
    public static int m5540i(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        int i2 = i;
        if (i == 0) {
            i2 = 160;
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f2033a.m5533b(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f2033a.canApplyTheme();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5545d(boolean r8) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C0267c0.m5545d(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f2035c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f2036d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* renamed from: e */
    public AbstractC0270c m5544e() {
        throw null;
    }

    /* renamed from: f */
    public int m5543f() {
        return this.f2039h;
    }

    /* renamed from: g */
    public final void m5542g(Drawable drawable) {
        if (this.f2044n == null) {
            this.f2044n = new C0269b();
        }
        C0269b c0269b = this.f2044n;
        c0269b.m5535b(drawable.getCallback());
        drawable.setCallback(c0269b);
        try {
            if (this.f2033a.f2047A <= 0 && this.f2038g) {
                drawable.setAlpha(this.f2037f);
            }
            AbstractC0270c abstractC0270c = this.f2033a;
            if (abstractC0270c.f2051E) {
                drawable.setColorFilter(abstractC0270c.f2050D);
            } else {
                if (abstractC0270c.f2054H) {
                    C1282d9.m2730o(drawable, abstractC0270c.f2052F);
                }
                AbstractC0270c abstractC0270c2 = this.f2033a;
                if (abstractC0270c2.f2055I) {
                    C1282d9.m2729p(drawable, abstractC0270c2.f2053G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f2033a.f2079x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (i >= 19) {
                drawable.setAutoMirrored(this.f2033a.f2049C);
            }
            Rect rect = this.f2034b;
            if (i >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f2044n.m5536a());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2037f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f2033a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f2033a.m5532c()) {
            this.f2033a.f2059d = getChangingConfigurations();
            return this.f2033a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f2035c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f2034b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f2033a.m5518q()) {
            return this.f2033a.m5526i();
        }
        Drawable drawable = this.f2035c;
        return drawable != null ? drawable.getIntrinsicHeight() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f2033a.m5518q()) {
            return this.f2033a.m5522m();
        }
        Drawable drawable = this.f2035c;
        return drawable != null ? drawable.getIntrinsicWidth() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f2033a.m5518q()) {
            return this.f2033a.m5525j();
        }
        Drawable drawable = this.f2035c;
        return drawable != null ? drawable.getMinimumHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f2033a.m5518q()) {
            return this.f2033a.m5524k();
        }
        Drawable drawable = this.f2035c;
        return drawable != null ? drawable.getMinimumWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f2035c;
        return (drawable == null || !drawable.isVisible()) ? -2 : this.f2033a.m5521n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f2035c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        Rect m5523l = this.f2033a.m5523l();
        if (m5523l != null) {
            rect.set(m5523l);
            z = (m5523l.right | ((m5523l.left | m5523l.top) | m5523l.bottom)) != 0;
        } else {
            Drawable drawable = this.f2035c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (m5541h()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return z;
    }

    /* renamed from: h */
    public final boolean m5541h() {
        boolean z = true;
        if (!isAutoMirrored() || C1282d9.m2739f(this) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        AbstractC0270c abstractC0270c = this.f2033a;
        if (abstractC0270c != null) {
            abstractC0270c.m5519p();
        }
        if (drawable != this.f2035c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f2033a.f2049C;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5539j(int r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C0267c0.m5539j(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f2036d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f2036d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f2035c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f2038g) {
                this.f2035c.setAlpha(this.f2037f);
            }
        }
        if (this.f2043m != 0) {
            this.f2043m = 0L;
            z = true;
        }
        if (this.f2042l != 0) {
            this.f2042l = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    /* renamed from: k */
    public void m5538k(AbstractC0270c abstractC0270c) {
        this.f2033a = abstractC0270c;
        int i = this.f2039h;
        if (i >= 0) {
            Drawable m5528g = abstractC0270c.m5528g(i);
            this.f2035c = m5528g;
            if (m5528g != null) {
                m5542g(m5528g);
            }
        }
        this.f2036d = null;
    }

    /* renamed from: l */
    public final void m5537l(Resources resources) {
        this.f2033a.m5510y(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f2040j && super.mutate() == this) {
            AbstractC0270c m5544e = m5544e();
            m5544e.m5517r();
            m5538k(m5544e);
            this.f2040j = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2036d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f2035c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f2033a.m5512w(i, m5543f());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f2036d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f2035c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f2036d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f2035c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f2035c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f2038g || this.f2037f != i) {
            this.f2038g = true;
            this.f2037f = i;
            Drawable drawable = this.f2035c;
            if (drawable == null) {
                return;
            }
            if (this.f2042l == 0) {
                drawable.setAlpha(i);
            } else {
                m5545d(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        AbstractC0270c abstractC0270c = this.f2033a;
        if (abstractC0270c.f2049C != z) {
            abstractC0270c.f2049C = z;
            Drawable drawable = this.f2035c;
            if (drawable == null) {
                return;
            }
            C1282d9.m2735j(drawable, z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC0270c abstractC0270c = this.f2033a;
        abstractC0270c.f2051E = true;
        if (abstractC0270c.f2050D != colorFilter) {
            abstractC0270c.f2050D = colorFilter;
            Drawable drawable = this.f2035c;
            if (drawable == null) {
                return;
            }
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        AbstractC0270c abstractC0270c = this.f2033a;
        if (abstractC0270c.f2079x != z) {
            abstractC0270c.f2079x = z;
            Drawable drawable = this.f2035c;
            if (drawable == null) {
                return;
            }
            drawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f2035c;
        if (drawable != null) {
            C1282d9.m2734k(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f2034b;
        if (rect == null) {
            this.f2034b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f2035c;
        if (drawable != null) {
            C1282d9.m2733l(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        AbstractC0270c abstractC0270c = this.f2033a;
        abstractC0270c.f2054H = true;
        if (abstractC0270c.f2052F != colorStateList) {
            abstractC0270c.f2052F = colorStateList;
            C1282d9.m2730o(this.f2035c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC0270c abstractC0270c = this.f2033a;
        abstractC0270c.f2055I = true;
        if (abstractC0270c.f2053G != mode) {
            abstractC0270c.f2053G = mode;
            C1282d9.m2729p(this.f2035c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f2036d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f2035c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f2035c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
