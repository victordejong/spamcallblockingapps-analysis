package androidx.appcompat.p008b.p009a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.core.graphics.drawable.C0575a;
/* renamed from: androidx.appcompat.b.a.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b.class */
public class C0142b extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    private AbstractC0145b f457a;

    /* renamed from: b */
    private Rect f458b;

    /* renamed from: c */
    private Drawable f459c;

    /* renamed from: d */
    private Drawable f460d;

    /* renamed from: f */
    private boolean f462f;

    /* renamed from: i */
    private boolean f465i;

    /* renamed from: j */
    private Runnable f466j;

    /* renamed from: k */
    private long f467k;

    /* renamed from: l */
    private long f468l;

    /* renamed from: m */
    private C0144a f469m;

    /* renamed from: e */
    private int f461e = 255;

    /* renamed from: g */
    private int f463g = -1;

    /* renamed from: h */
    private int f464h = -1;

    /* renamed from: androidx.appcompat.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$a.class */
    public static class C0144a implements Drawable.Callback {

        /* renamed from: a */
        private Drawable.Callback f471a;

        C0144a() {
        }

        /* renamed from: a */
        public Drawable.Callback m7707a() {
            Drawable.Callback callback = this.f471a;
            this.f471a = null;
            return callback;
        }

        /* renamed from: a */
        public C0144a m7706a(Drawable.Callback callback) {
            this.f471a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f471a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f471a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: androidx.appcompat.b.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$b.class */
    public static abstract class AbstractC0145b extends Drawable.ConstantState {

        /* renamed from: A */
        boolean f472A;

        /* renamed from: B */
        int f473B;

        /* renamed from: C */
        int f474C;

        /* renamed from: D */
        int f475D;

        /* renamed from: E */
        boolean f476E;

        /* renamed from: F */
        ColorFilter f477F;

        /* renamed from: G */
        boolean f478G;

        /* renamed from: H */
        ColorStateList f479H;

        /* renamed from: I */
        PorterDuff.Mode f480I;

        /* renamed from: J */
        boolean f481J;

        /* renamed from: K */
        boolean f482K;

        /* renamed from: c */
        final C0142b f483c;

        /* renamed from: d */
        Resources f484d;

        /* renamed from: e */
        int f485e;

        /* renamed from: f */
        int f486f;

        /* renamed from: g */
        int f487g;

        /* renamed from: h */
        SparseArray<Drawable.ConstantState> f488h;

        /* renamed from: i */
        Drawable[] f489i;

        /* renamed from: j */
        int f490j;

        /* renamed from: k */
        boolean f491k;

        /* renamed from: l */
        boolean f492l;

        /* renamed from: m */
        Rect f493m;

        /* renamed from: n */
        boolean f494n;

        /* renamed from: o */
        boolean f495o;

        /* renamed from: p */
        int f496p;

        /* renamed from: q */
        int f497q;

        /* renamed from: r */
        int f498r;

        /* renamed from: s */
        int f499s;

        /* renamed from: t */
        boolean f500t;

        /* renamed from: u */
        int f501u;

        /* renamed from: v */
        boolean f502v;

        /* renamed from: w */
        boolean f503w;

        /* renamed from: x */
        boolean f504x;

        /* renamed from: y */
        boolean f505y;

        /* renamed from: z */
        boolean f506z;

        public AbstractC0145b(AbstractC0145b abstractC0145b, C0142b c0142b, Resources resources) {
            this.f485e = 160;
            this.f491k = false;
            this.f494n = false;
            this.f506z = true;
            this.f474C = 0;
            this.f475D = 0;
            this.f483c = c0142b;
            this.f484d = resources != null ? resources : abstractC0145b != null ? abstractC0145b.f484d : null;
            this.f485e = C0142b.m7711a(resources, abstractC0145b != null ? abstractC0145b.f485e : 0);
            if (abstractC0145b == null) {
                this.f489i = new Drawable[10];
                this.f490j = 0;
                return;
            }
            this.f486f = abstractC0145b.f486f;
            this.f487g = abstractC0145b.f487g;
            this.f504x = true;
            this.f505y = true;
            this.f491k = abstractC0145b.f491k;
            this.f494n = abstractC0145b.f494n;
            this.f506z = abstractC0145b.f506z;
            this.f472A = abstractC0145b.f472A;
            this.f473B = abstractC0145b.f473B;
            this.f474C = abstractC0145b.f474C;
            this.f475D = abstractC0145b.f475D;
            this.f476E = abstractC0145b.f476E;
            this.f477F = abstractC0145b.f477F;
            this.f478G = abstractC0145b.f478G;
            this.f479H = abstractC0145b.f479H;
            this.f480I = abstractC0145b.f480I;
            this.f481J = abstractC0145b.f481J;
            this.f482K = abstractC0145b.f482K;
            if (abstractC0145b.f485e == this.f485e) {
                if (abstractC0145b.f492l) {
                    this.f493m = new Rect(abstractC0145b.f493m);
                    this.f492l = true;
                }
                if (abstractC0145b.f495o) {
                    this.f496p = abstractC0145b.f496p;
                    this.f497q = abstractC0145b.f497q;
                    this.f498r = abstractC0145b.f498r;
                    this.f499s = abstractC0145b.f499s;
                    this.f495o = true;
                }
            }
            if (abstractC0145b.f500t) {
                this.f501u = abstractC0145b.f501u;
                this.f500t = true;
            }
            if (abstractC0145b.f502v) {
                this.f503w = abstractC0145b.f503w;
                this.f502v = true;
            }
            Drawable[] drawableArr = abstractC0145b.f489i;
            this.f489i = new Drawable[drawableArr.length];
            this.f490j = abstractC0145b.f490j;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC0145b.f488h;
            if (sparseArray != null) {
                this.f488h = sparseArray.clone();
            } else {
                this.f488h = new SparseArray<>(this.f490j);
            }
            int i = this.f490j;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f488h.put(i2, constantState);
                    } else {
                        this.f489i[i2] = drawableArr[i2];
                    }
                }
            }
        }

        /* renamed from: b */
        private Drawable m7699b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f473B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f483c);
            return mutate;
        }

        /* renamed from: o */
        private void m7682o() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f488h;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f489i[this.f488h.keyAt(i)] = m7699b(this.f488h.valueAt(i).newDrawable(this.f484d));
                }
                this.f488h = null;
            }
        }

        /* renamed from: a */
        public final int m7703a(Drawable drawable) {
            int i = this.f490j;
            if (i >= this.f489i.length) {
                mo7664e(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f483c);
            this.f489i[i] = drawable;
            this.f490j++;
            this.f487g = drawable.getChangingConfigurations() | this.f487g;
            m7701b();
            this.f493m = null;
            this.f492l = false;
            this.f495o = false;
            this.f504x = false;
            return i;
        }

        /* renamed from: a */
        void mo7667a() {
            int i = this.f490j;
            Drawable[] drawableArr = this.f489i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.f472A = true;
        }

        /* renamed from: a */
        final void m7705a(Resources.Theme theme) {
            if (theme != null) {
                m7682o();
                int i = this.f490j;
                Drawable[] drawableArr = this.f489i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.f487g |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m7704a(theme.getResources());
            }
        }

        /* renamed from: a */
        final void m7704a(Resources resources) {
            if (resources != null) {
                this.f484d = resources;
                int m7711a = C0142b.m7711a(resources, this.f485e);
                int i = this.f485e;
                this.f485e = m7711a;
                if (i == m7711a) {
                    return;
                }
                this.f495o = false;
                this.f492l = false;
            }
        }

        /* renamed from: a */
        public final void m7702a(boolean z) {
            this.f491k = z;
        }

        /* renamed from: b */
        public final Drawable m7700b(int i) {
            int indexOfKey;
            Drawable drawable = this.f489i[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f488h;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable m7699b = m7699b(this.f488h.valueAt(indexOfKey).newDrawable(this.f484d));
            this.f489i[i] = m7699b;
            this.f488h.removeAt(indexOfKey);
            if (this.f488h.size() == 0) {
                this.f488h = null;
            }
            return m7699b;
        }

        /* renamed from: b */
        void m7701b() {
            this.f500t = false;
            this.f502v = false;
        }

        /* renamed from: b */
        public final void m7698b(boolean z) {
            this.f494n = z;
        }

        /* renamed from: c */
        public final int m7697c() {
            return this.f489i.length;
        }

        /* renamed from: c */
        public final void m7696c(int i) {
            this.f474C = i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f490j;
            Drawable[] drawableArr = this.f489i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f488h.get(i2);
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
        public final int m7695d() {
            return this.f490j;
        }

        /* renamed from: d */
        public final void m7694d(int i) {
            this.f475D = i;
        }

        /* renamed from: d */
        final boolean m7693d(int i, int i2) {
            int i3 = this.f490j;
            Drawable[] drawableArr = this.f489i;
            int i4 = 0;
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (i4 >= i3) {
                    this.f473B = i;
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

        /* renamed from: e */
        public final Rect m7692e() {
            if (this.f491k) {
                return null;
            }
            if (this.f493m != null || this.f492l) {
                return this.f493m;
            }
            m7682o();
            Rect rect = new Rect();
            int i = this.f490j;
            Drawable[] drawableArr = this.f489i;
            Rect rect2 = null;
            int i2 = 0;
            while (i2 < i) {
                Rect rect3 = rect2;
                if (drawableArr[i2].getPadding(rect)) {
                    Rect rect4 = rect2;
                    if (rect2 == null) {
                        rect4 = new Rect(0, 0, 0, 0);
                    }
                    if (rect.left > rect4.left) {
                        rect4.left = rect.left;
                    }
                    if (rect.top > rect4.top) {
                        rect4.top = rect.top;
                    }
                    if (rect.right > rect4.right) {
                        rect4.right = rect.right;
                    }
                    rect3 = rect4;
                    if (rect.bottom > rect4.bottom) {
                        rect4.bottom = rect.bottom;
                        rect3 = rect4;
                    }
                }
                i2++;
                rect2 = rect3;
            }
            this.f492l = true;
            this.f493m = rect2;
            return rect2;
        }

        /* renamed from: e */
        public void mo7664e(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f489i, 0, drawableArr, 0, i);
            this.f489i = drawableArr;
        }

        /* renamed from: f */
        public final boolean m7691f() {
            return this.f494n;
        }

        /* renamed from: g */
        public final int m7690g() {
            if (!this.f495o) {
                m7686k();
            }
            return this.f496p;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f486f | this.f487g;
        }

        /* renamed from: h */
        public final int m7689h() {
            if (!this.f495o) {
                m7686k();
            }
            return this.f497q;
        }

        /* renamed from: i */
        public final int m7688i() {
            if (!this.f495o) {
                m7686k();
            }
            return this.f498r;
        }

        /* renamed from: j */
        public final int m7687j() {
            if (!this.f495o) {
                m7686k();
            }
            return this.f499s;
        }

        /* renamed from: k */
        protected void m7686k() {
            this.f495o = true;
            m7682o();
            int i = this.f490j;
            Drawable[] drawableArr = this.f489i;
            this.f497q = -1;
            this.f496p = -1;
            this.f499s = 0;
            this.f498r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f496p) {
                    this.f496p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f497q) {
                    this.f497q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f498r) {
                    this.f498r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f499s) {
                    this.f499s = minimumHeight;
                }
            }
        }

        /* renamed from: l */
        public final int m7685l() {
            if (this.f500t) {
                return this.f501u;
            }
            m7682o();
            int i = this.f490j;
            Drawable[] drawableArr = this.f489i;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f501u = opacity;
            this.f500t = true;
            return opacity;
        }

        /* renamed from: m */
        public final boolean m7684m() {
            boolean z;
            if (this.f502v) {
                return this.f503w;
            }
            m7682o();
            int i = this.f490j;
            Drawable[] drawableArr = this.f489i;
            int i2 = 0;
            while (true) {
                z = false;
                if (i2 >= i) {
                    break;
                } else if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            this.f503w = z;
            this.f502v = true;
            return z;
        }

        /* renamed from: n */
        public boolean m7683n() {
            synchronized (this) {
                if (this.f504x) {
                    return this.f505y;
                }
                m7682o();
                this.f504x = true;
                int i = this.f490j;
                Drawable[] drawableArr = this.f489i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        this.f505y = false;
                        return false;
                    }
                }
                this.f505y = true;
                return true;
            }
        }
    }

    /* renamed from: a */
    static int m7711a(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        int i2 = i;
        if (i == 0) {
            i2 = 160;
        }
        return i2;
    }

    /* renamed from: a */
    private void m7710a(Drawable drawable) {
        if (this.f469m == null) {
            this.f469m = new C0144a();
        }
        drawable.setCallback(this.f469m.m7706a(drawable.getCallback()));
        try {
            if (this.f457a.f474C <= 0 && this.f462f) {
                drawable.setAlpha(this.f461e);
            }
            if (this.f457a.f478G) {
                drawable.setColorFilter(this.f457a.f477F);
            } else {
                if (this.f457a.f481J) {
                    C0575a.m6133a(drawable, this.f457a.f479H);
                }
                if (this.f457a.f482K) {
                    C0575a.m6130a(drawable, this.f457a.f480I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f457a.f506z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f457a.f476E);
            }
            Rect rect = this.f458b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f469m.m7707a());
        }
    }

    /* renamed from: a */
    private boolean m7714a() {
        boolean z = true;
        if (!isAutoMirrored() || C0575a.m6120i(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final void m7712a(Resources resources) {
        this.f457a.m7704a(resources);
    }

    /* renamed from: a */
    public void mo7671a(AbstractC0145b abstractC0145b) {
        this.f457a = abstractC0145b;
        int i = this.f463g;
        if (i >= 0) {
            this.f459c = abstractC0145b.m7700b(i);
            Drawable drawable = this.f459c;
            if (drawable != null) {
                m7710a(drawable);
            }
        }
        this.f464h = -1;
        this.f460d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m7709a(boolean r8) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p008b.p009a.C0142b.m7709a(boolean):void");
    }

    /* renamed from: a */
    public boolean m7713a(int i) {
        if (i == this.f463g) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f457a.f475D > 0) {
            Drawable drawable = this.f460d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f459c;
            if (drawable2 != null) {
                this.f460d = drawable2;
                this.f464h = this.f463g;
                this.f468l = this.f457a.f475D + uptimeMillis;
            } else {
                this.f460d = null;
                this.f464h = -1;
                this.f468l = 0L;
            }
        } else {
            Drawable drawable3 = this.f459c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i < 0 || i >= this.f457a.f490j) {
            this.f459c = null;
            this.f463g = -1;
        } else {
            Drawable m7700b = this.f457a.m7700b(i);
            this.f459c = m7700b;
            this.f463g = i;
            if (m7700b != null) {
                if (this.f457a.f474C > 0) {
                    this.f467k = uptimeMillis + this.f457a.f474C;
                }
                m7710a(m7700b);
            }
        }
        if (this.f467k != 0 || this.f468l != 0) {
            Runnable runnable = this.f466j;
            if (runnable == null) {
                this.f466j = new Runnable() { // from class: androidx.appcompat.b.a.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C0142b.this.m7709a(true);
                        C0142b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            m7709a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f457a.m7705a(theme);
    }

    /* renamed from: c */
    AbstractC0145b mo7668c() {
        return this.f457a;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f457a.canApplyTheme();
    }

    /* renamed from: d */
    public int m7708d() {
        return this.f463g;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f459c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f460d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f461e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f457a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f457a.m7683n()) {
            this.f457a.f486f = getChangingConfigurations();
            return this.f457a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f459c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f458b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f457a.m7691f()) {
            return this.f457a.m7689h();
        }
        Drawable drawable = this.f459c;
        return drawable != null ? drawable.getIntrinsicHeight() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f457a.m7691f()) {
            return this.f457a.m7690g();
        }
        Drawable drawable = this.f459c;
        return drawable != null ? drawable.getIntrinsicWidth() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f457a.m7691f()) {
            return this.f457a.m7687j();
        }
        Drawable drawable = this.f459c;
        return drawable != null ? drawable.getMinimumHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f457a.m7691f()) {
            return this.f457a.m7688i();
        }
        Drawable drawable = this.f459c;
        return drawable != null ? drawable.getMinimumWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f459c;
        return (drawable == null || !drawable.isVisible()) ? -2 : this.f457a.m7685l();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f459c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        Rect m7692e = this.f457a.m7692e();
        if (m7692e != null) {
            rect.set(m7692e);
            z = (m7692e.right | ((m7692e.left | m7692e.top) | m7692e.bottom)) != 0;
        } else {
            Drawable drawable = this.f459c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (m7714a()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return z;
    }

    public void invalidateDrawable(Drawable drawable) {
        AbstractC0145b abstractC0145b = this.f457a;
        if (abstractC0145b != null) {
            abstractC0145b.m7701b();
        }
        if (drawable != this.f459c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f457a.f476E;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f457a.m7684m();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f460d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f460d = null;
            this.f464h = -1;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f459c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f462f) {
                this.f459c.setAlpha(this.f461e);
            }
        }
        if (this.f468l != 0) {
            this.f468l = 0L;
            z = true;
        }
        if (this.f467k != 0) {
            this.f467k = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f465i && super.mutate() == this) {
            AbstractC0145b mo7668c = mo7668c();
            mo7668c.mo7667a();
            mo7671a(mo7668c);
            this.f465i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f460d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f459c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f457a.m7693d(i, m7708d());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f460d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f459c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f460d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f459c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setState(iArr);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f459c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f462f || this.f461e != i) {
            this.f462f = true;
            this.f461e = i;
            Drawable drawable = this.f459c;
            if (drawable == null) {
                return;
            }
            if (this.f467k == 0) {
                drawable.setAlpha(i);
            } else {
                m7709a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f457a.f476E != z) {
            AbstractC0145b abstractC0145b = this.f457a;
            abstractC0145b.f476E = z;
            Drawable drawable = this.f459c;
            if (drawable == null) {
                return;
            }
            C0575a.m6129a(drawable, abstractC0145b.f476E);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC0145b abstractC0145b = this.f457a;
        abstractC0145b.f478G = true;
        if (abstractC0145b.f477F != colorFilter) {
            this.f457a.f477F = colorFilter;
            Drawable drawable = this.f459c;
            if (drawable == null) {
                return;
            }
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.f457a.f506z != z) {
            AbstractC0145b abstractC0145b = this.f457a;
            abstractC0145b.f506z = z;
            Drawable drawable = this.f459c;
            if (drawable == null) {
                return;
            }
            drawable.setDither(abstractC0145b.f506z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f459c;
        if (drawable != null) {
            C0575a.m6136a(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f458b;
        if (rect == null) {
            this.f458b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f459c;
        if (drawable != null) {
            C0575a.m6134a(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintList(ColorStateList colorStateList) {
        AbstractC0145b abstractC0145b = this.f457a;
        abstractC0145b.f481J = true;
        if (abstractC0145b.f479H != colorStateList) {
            this.f457a.f479H = colorStateList;
            C0575a.m6133a(this.f459c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC0145b abstractC0145b = this.f457a;
        abstractC0145b.f482K = true;
        if (abstractC0145b.f480I != mode) {
            this.f457a.f480I = mode;
            C0575a.m6130a(this.f459c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f460d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f459c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f459c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
