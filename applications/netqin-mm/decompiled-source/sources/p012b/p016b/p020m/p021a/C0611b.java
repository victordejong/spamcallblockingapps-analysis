package p012b.p016b.p020m.p021a;

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
import p012b.p042i.p046j.p047m.C0907a;
/* renamed from: b.b.m.a.b */
/* loaded from: classes-dex2jar.jar:b/b/m/a/b.class */
public class C0611b extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    public AbstractC0614c f3019a;

    /* renamed from: b */
    public Rect f3020b;

    /* renamed from: c */
    public Drawable f3021c;

    /* renamed from: d */
    public Drawable f3022d;

    /* renamed from: f */
    public boolean f3024f;

    /* renamed from: h */
    public boolean f3026h;

    /* renamed from: i */
    public Runnable f3027i;

    /* renamed from: j */
    public long f3028j;

    /* renamed from: k */
    public long f3029k;

    /* renamed from: l */
    public C0613b f3030l;

    /* renamed from: e */
    public int f3023e = 255;

    /* renamed from: g */
    public int f3025g = -1;

    /* renamed from: b.b.m.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/b$a.class */
    public class RunnableC0612a implements Runnable {
        public RunnableC0612a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0611b.this.m36748a(true);
            C0611b.this.invalidateSelf();
        }
    }

    /* renamed from: b.b.m.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/b$b.class */
    public static class C0613b implements Drawable.Callback {

        /* renamed from: a */
        public Drawable.Callback f3032a;

        /* renamed from: a */
        public Drawable.Callback m36745a() {
            Drawable.Callback callback = this.f3032a;
            this.f3032a = null;
            return callback;
        }

        /* renamed from: a */
        public C0613b m36744a(Drawable.Callback callback) {
            this.f3032a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f3032a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f3032a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: b.b.m.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/b$c.class */
    public static abstract class AbstractC0614c extends Drawable.ConstantState {

        /* renamed from: A */
        public int f3033A;

        /* renamed from: B */
        public int f3034B;

        /* renamed from: C */
        public boolean f3035C;

        /* renamed from: D */
        public ColorFilter f3036D;

        /* renamed from: E */
        public boolean f3037E;

        /* renamed from: F */
        public ColorStateList f3038F;

        /* renamed from: G */
        public PorterDuff.Mode f3039G;

        /* renamed from: H */
        public boolean f3040H;

        /* renamed from: I */
        public boolean f3041I;

        /* renamed from: a */
        public final C0611b f3042a;

        /* renamed from: b */
        public Resources f3043b;

        /* renamed from: c */
        public int f3044c;

        /* renamed from: d */
        public int f3045d;

        /* renamed from: e */
        public int f3046e;

        /* renamed from: f */
        public SparseArray<Drawable.ConstantState> f3047f;

        /* renamed from: g */
        public Drawable[] f3048g;

        /* renamed from: h */
        public int f3049h;

        /* renamed from: i */
        public boolean f3050i;

        /* renamed from: j */
        public boolean f3051j;

        /* renamed from: k */
        public Rect f3052k;

        /* renamed from: l */
        public boolean f3053l;

        /* renamed from: m */
        public boolean f3054m;

        /* renamed from: n */
        public int f3055n;

        /* renamed from: o */
        public int f3056o;

        /* renamed from: p */
        public int f3057p;

        /* renamed from: q */
        public int f3058q;

        /* renamed from: r */
        public boolean f3059r;

        /* renamed from: s */
        public int f3060s;

        /* renamed from: t */
        public boolean f3061t;

        /* renamed from: u */
        public boolean f3062u;

        /* renamed from: v */
        public boolean f3063v;

        /* renamed from: w */
        public boolean f3064w;

        /* renamed from: x */
        public boolean f3065x;

        /* renamed from: y */
        public boolean f3066y;

        /* renamed from: z */
        public int f3067z;

        public AbstractC0614c(AbstractC0614c cVar, C0611b bVar, Resources resources) {
            this.f3044c = 160;
            this.f3050i = false;
            this.f3053l = false;
            this.f3065x = true;
            this.f3033A = 0;
            this.f3034B = 0;
            this.f3042a = bVar;
            this.f3043b = resources != null ? resources : cVar != null ? cVar.f3043b : null;
            int a = C0611b.m36750a(resources, cVar != null ? cVar.f3044c : 0);
            this.f3044c = a;
            if (cVar != null) {
                this.f3045d = cVar.f3045d;
                this.f3046e = cVar.f3046e;
                this.f3063v = true;
                this.f3064w = true;
                this.f3050i = cVar.f3050i;
                this.f3053l = cVar.f3053l;
                this.f3065x = cVar.f3065x;
                this.f3066y = cVar.f3066y;
                this.f3067z = cVar.f3067z;
                this.f3033A = cVar.f3033A;
                this.f3034B = cVar.f3034B;
                this.f3035C = cVar.f3035C;
                this.f3036D = cVar.f3036D;
                this.f3037E = cVar.f3037E;
                this.f3038F = cVar.f3038F;
                this.f3039G = cVar.f3039G;
                this.f3040H = cVar.f3040H;
                this.f3041I = cVar.f3041I;
                if (cVar.f3044c == a) {
                    if (cVar.f3051j) {
                        this.f3052k = new Rect(cVar.f3052k);
                        this.f3051j = true;
                    }
                    if (cVar.f3054m) {
                        this.f3055n = cVar.f3055n;
                        this.f3056o = cVar.f3056o;
                        this.f3057p = cVar.f3057p;
                        this.f3058q = cVar.f3058q;
                        this.f3054m = true;
                    }
                }
                if (cVar.f3059r) {
                    this.f3060s = cVar.f3060s;
                    this.f3059r = true;
                }
                if (cVar.f3061t) {
                    this.f3062u = cVar.f3062u;
                    this.f3061t = true;
                }
                Drawable[] drawableArr = cVar.f3048g;
                this.f3048g = new Drawable[drawableArr.length];
                this.f3049h = cVar.f3049h;
                SparseArray<Drawable.ConstantState> sparseArray = cVar.f3047f;
                if (sparseArray != null) {
                    this.f3047f = sparseArray.clone();
                } else {
                    this.f3047f = new SparseArray<>(this.f3049h);
                }
                int i = this.f3049h;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.f3047f.put(i2, constantState);
                        } else {
                            this.f3048g[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.f3048g = new Drawable[10];
            this.f3049h = 0;
        }

        /* renamed from: a */
        public final int m36739a(Drawable drawable) {
            int i = this.f3049h;
            if (i >= this.f3048g.length) {
                mo36715a(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f3042a);
            this.f3048g[i] = drawable;
            this.f3049h++;
            this.f3046e = drawable.getChangingConfigurations() | this.f3046e;
            m36722l();
            this.f3052k = null;
            this.f3051j = false;
            this.f3054m = false;
            this.f3063v = false;
            return i;
        }

        /* renamed from: a */
        public final Drawable m36742a(int i) {
            int indexOfKey;
            Drawable drawable = this.f3048g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f3047f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable b = m36734b(this.f3047f.valueAt(indexOfKey).newDrawable(this.f3043b));
            this.f3048g[i] = b;
            this.f3047f.removeAt(indexOfKey);
            if (this.f3047f.size() == 0) {
                this.f3047f = null;
            }
            return b;
        }

        /* renamed from: a */
        public void mo36715a(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f3048g, 0, drawableArr, 0, i);
            this.f3048g = drawableArr;
        }

        /* renamed from: a */
        public final void m36741a(Resources.Theme theme) {
            if (theme != null) {
                m36732c();
                int i = this.f3049h;
                Drawable[] drawableArr = this.f3048g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.f3046e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m36740a(theme.getResources());
            }
        }

        /* renamed from: a */
        public final void m36740a(Resources resources) {
            if (resources != null) {
                this.f3043b = resources;
                int a = C0611b.m36750a(resources, this.f3044c);
                int i = this.f3044c;
                this.f3044c = a;
                if (i != a) {
                    this.f3054m = false;
                    this.f3051j = false;
                }
            }
        }

        /* renamed from: a */
        public final void m36738a(boolean z) {
            this.f3053l = z;
        }

        /* renamed from: a */
        public boolean m36743a() {
            synchronized (this) {
                if (this.f3063v) {
                    return this.f3064w;
                }
                m36732c();
                this.f3063v = true;
                int i = this.f3049h;
                Drawable[] drawableArr = this.f3048g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        this.f3064w = false;
                        return false;
                    }
                }
                this.f3064w = true;
                return true;
            }
        }

        /* renamed from: b */
        public final Drawable m36734b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f3067z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f3042a);
            return mutate;
        }

        /* renamed from: b */
        public void m36737b() {
            this.f3054m = true;
            m36732c();
            int i = this.f3049h;
            Drawable[] drawableArr = this.f3048g;
            this.f3056o = -1;
            this.f3055n = -1;
            this.f3058q = 0;
            this.f3057p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f3055n) {
                    this.f3055n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f3056o) {
                    this.f3056o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f3057p) {
                    this.f3057p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f3058q) {
                    this.f3058q = minimumHeight;
                }
            }
        }

        /* renamed from: b */
        public final void m36736b(int i) {
            this.f3033A = i;
        }

        /* renamed from: b */
        public final void m36733b(boolean z) {
            this.f3050i = z;
        }

        /* renamed from: b */
        public final boolean m36735b(int i, int i2) {
            int i3 = this.f3049h;
            Drawable[] drawableArr = this.f3048g;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                z = z;
                if (drawableArr[i4] != null) {
                    z = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                    z = z;
                    if (i4 == i2) {
                    }
                }
            }
            this.f3067z = i;
            return z;
        }

        /* renamed from: c */
        public final void m36732c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f3047f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f3048g[this.f3047f.keyAt(i)] = m36734b(this.f3047f.valueAt(i).newDrawable(this.f3043b));
                }
                this.f3047f = null;
            }
        }

        /* renamed from: c */
        public final void m36731c(int i) {
            this.f3034B = i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f3049h;
            Drawable[] drawableArr = this.f3048g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f3047f.get(i2);
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
        public final int m36730d() {
            return this.f3048g.length;
        }

        /* renamed from: e */
        public final int m36729e() {
            return this.f3049h;
        }

        /* renamed from: f */
        public final int m36728f() {
            if (!this.f3054m) {
                m36737b();
            }
            return this.f3056o;
        }

        /* renamed from: g */
        public final int m36727g() {
            if (!this.f3054m) {
                m36737b();
            }
            return this.f3058q;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3045d | this.f3046e;
        }

        /* renamed from: h */
        public final int m36726h() {
            if (!this.f3054m) {
                m36737b();
            }
            return this.f3057p;
        }

        /* renamed from: i */
        public final Rect m36725i() {
            Rect rect = null;
            if (this.f3050i) {
                return null;
            }
            if (this.f3052k != null || this.f3051j) {
                return this.f3052k;
            }
            m36732c();
            Rect rect2 = new Rect();
            int i = this.f3049h;
            Drawable[] drawableArr = this.f3048g;
            for (int i2 = 0; i2 < i; i2++) {
                rect = rect;
                if (drawableArr[i2].getPadding(rect2)) {
                    Rect rect3 = rect;
                    if (rect == null) {
                        rect3 = new Rect(0, 0, 0, 0);
                    }
                    int i3 = rect2.left;
                    if (i3 > rect3.left) {
                        rect3.left = i3;
                    }
                    int i4 = rect2.top;
                    if (i4 > rect3.top) {
                        rect3.top = i4;
                    }
                    int i5 = rect2.right;
                    if (i5 > rect3.right) {
                        rect3.right = i5;
                    }
                    int i6 = rect2.bottom;
                    rect = rect3;
                    if (i6 > rect3.bottom) {
                        rect3.bottom = i6;
                        rect = rect3;
                    }
                }
            }
            this.f3051j = true;
            this.f3052k = rect;
            return rect;
        }

        /* renamed from: j */
        public final int m36724j() {
            if (!this.f3054m) {
                m36737b();
            }
            return this.f3055n;
        }

        /* renamed from: k */
        public final int m36723k() {
            if (this.f3059r) {
                return this.f3060s;
            }
            m36732c();
            int i = this.f3049h;
            Drawable[] drawableArr = this.f3048g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f3060s = opacity;
            this.f3059r = true;
            return opacity;
        }

        /* renamed from: l */
        public void m36722l() {
            this.f3059r = false;
            this.f3061t = false;
        }

        /* renamed from: m */
        public final boolean m36721m() {
            return this.f3053l;
        }

        /* renamed from: n */
        public abstract void mo36712n();
    }

    /* renamed from: a */
    public static int m36750a(Resources resources, int i) {
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
    public AbstractC0614c mo36718a() {
        throw null;
    }

    /* renamed from: a */
    public final void m36751a(Resources resources) {
        this.f3019a.m36740a(resources);
    }

    /* renamed from: a */
    public final void m36749a(Drawable drawable) {
        if (this.f3030l == null) {
            this.f3030l = new C0613b();
        }
        C0613b bVar = this.f3030l;
        bVar.m36744a(drawable.getCallback());
        drawable.setCallback(bVar);
        try {
            if (this.f3019a.f3033A <= 0 && this.f3024f) {
                drawable.setAlpha(this.f3023e);
            }
            if (this.f3019a.f3037E) {
                drawable.setColorFilter(this.f3019a.f3036D);
            } else {
                if (this.f3019a.f3040H) {
                    C0907a.m35526a(drawable, this.f3019a.f3038F);
                }
                if (this.f3019a.f3041I) {
                    C0907a.m35523a(drawable, this.f3019a.f3039G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f3019a.f3065x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f3019a.f3035C);
            }
            Rect rect = this.f3020b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f3030l.m36745a());
        }
    }

    /* renamed from: a */
    public void mo36716a(AbstractC0614c cVar) {
        this.f3019a = cVar;
        int i = this.f3025g;
        if (i >= 0) {
            Drawable a = cVar.m36742a(i);
            this.f3021c = a;
            if (a != null) {
                m36749a(a);
            }
        }
        this.f3022d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m36748a(boolean r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p020m.p021a.C0611b.m36748a(boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m36752a(int r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p020m.p021a.C0611b.m36752a(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f3019a.m36741a(theme);
    }

    /* renamed from: b */
    public int m36747b() {
        return this.f3025g;
    }

    /* renamed from: c */
    public final boolean m36746c() {
        boolean z = true;
        if (!isAutoMirrored() || C0907a.m35518d(this) != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f3019a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f3021c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f3022d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3023e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f3019a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f3019a.m36743a()) {
            return null;
        }
        this.f3019a.f3045d = getChangingConfigurations();
        return this.f3019a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f3021c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f3020b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f3019a.m36721m()) {
            return this.f3019a.m36728f();
        }
        Drawable drawable = this.f3021c;
        return drawable != null ? drawable.getIntrinsicHeight() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f3019a.m36721m()) {
            return this.f3019a.m36724j();
        }
        Drawable drawable = this.f3021c;
        return drawable != null ? drawable.getIntrinsicWidth() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f3019a.m36721m()) {
            return this.f3019a.m36727g();
        }
        Drawable drawable = this.f3021c;
        return drawable != null ? drawable.getMinimumHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f3019a.m36721m()) {
            return this.f3019a.m36726h();
        }
        Drawable drawable = this.f3021c;
        return drawable != null ? drawable.getMinimumWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f3021c;
        return (drawable == null || !drawable.isVisible()) ? -2 : this.f3019a.m36723k();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f3021c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        Rect i = this.f3019a.m36725i();
        if (i != null) {
            rect.set(i);
            z = (i.right | ((i.left | i.top) | i.bottom)) != 0;
        } else {
            Drawable drawable = this.f3021c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (m36746c()) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        AbstractC0614c cVar = this.f3019a;
        if (cVar != null) {
            cVar.m36722l();
        }
        if (drawable == this.f3021c && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f3019a.f3035C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        Drawable drawable = this.f3022d;
        boolean z = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f3022d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f3021c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f3024f) {
                this.f3021c.setAlpha(this.f3023e);
            }
        }
        if (this.f3029k != 0) {
            this.f3029k = 0L;
            z = true;
        }
        if (this.f3028j != 0) {
            this.f3028j = 0L;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3026h && super.mutate() == this) {
            AbstractC0614c a = mo36718a();
            a.mo36712n();
            mo36716a(a);
            this.f3026h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3022d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f3021c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f3019a.m36735b(i, m36747b());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f3022d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f3021c;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f3022d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f3021c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.f3021c && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f3024f || this.f3023e != i) {
            this.f3024f = true;
            this.f3023e = i;
            Drawable drawable = this.f3021c;
            if (drawable == null) {
                return;
            }
            if (this.f3028j == 0) {
                drawable.setAlpha(i);
            } else {
                m36748a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        AbstractC0614c cVar = this.f3019a;
        if (cVar.f3035C != z) {
            cVar.f3035C = z;
            Drawable drawable = this.f3021c;
            if (drawable != null) {
                C0907a.m35522a(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC0614c cVar = this.f3019a;
        cVar.f3037E = true;
        if (cVar.f3036D != colorFilter) {
            cVar.f3036D = colorFilter;
            Drawable drawable = this.f3021c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        AbstractC0614c cVar = this.f3019a;
        if (cVar.f3065x != z) {
            cVar.f3065x = z;
            Drawable drawable = this.f3021c;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f3021c;
        if (drawable != null) {
            C0907a.m35529a(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f3020b;
        if (rect == null) {
            this.f3020b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f3021c;
        if (drawable != null) {
            C0907a.m35527a(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        AbstractC0614c cVar = this.f3019a;
        cVar.f3040H = true;
        if (cVar.f3038F != colorStateList) {
            cVar.f3038F = colorStateList;
            C0907a.m35526a(this.f3021c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC0614c cVar = this.f3019a;
        cVar.f3041I = true;
        if (cVar.f3039G != mode) {
            cVar.f3039G = mode;
            C0907a.m35523a(this.f3021c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f3022d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f3021c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.f3021c && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
