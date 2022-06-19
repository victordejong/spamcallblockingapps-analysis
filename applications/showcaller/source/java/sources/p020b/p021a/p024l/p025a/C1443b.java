package p020b.p021a.p024l.p025a;

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
import androidx.core.graphics.drawable.C0615a;
/* renamed from: b.a.l.a.b */
/* loaded from: classes-dex2jar.jar:b/a/l/a/b.class */
public class C1443b extends Drawable implements Drawable.Callback {

    /* renamed from: d */
    private AbstractC1447d f5779d;

    /* renamed from: e */
    private Rect f5780e;

    /* renamed from: f */
    private Drawable f5781f;

    /* renamed from: g */
    private Drawable f5782g;

    /* renamed from: i */
    private boolean f5784i;

    /* renamed from: k */
    private boolean f5786k;

    /* renamed from: l */
    private Runnable f5787l;

    /* renamed from: m */
    private long f5788m;

    /* renamed from: n */
    private long f5789n;

    /* renamed from: o */
    private C1446c f5790o;

    /* renamed from: h */
    private int f5783h = 255;

    /* renamed from: j */
    private int f5785j = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.l.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/b$a.class */
    public class RunnableC1444a implements Runnable {
        RunnableC1444a() {
            C1443b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1443b.this.m30099a(true);
            C1443b.this.invalidateSelf();
        }
    }

    /* renamed from: b.a.l.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/b$b.class */
    public static class C1445b {
        /* renamed from: a */
        public static boolean m30092a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        /* renamed from: b */
        public static void m30091b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        /* renamed from: c */
        public static Resources m30090c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    /* renamed from: b.a.l.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/b$c.class */
    public static class C1446c implements Drawable.Callback {

        /* renamed from: d */
        private Drawable.Callback f5792d;

        C1446c() {
        }

        /* renamed from: a */
        public Drawable.Callback m30089a() {
            Drawable.Callback callback = this.f5792d;
            this.f5792d = null;
            return callback;
        }

        /* renamed from: b */
        public C1446c m30088b(Drawable.Callback callback) {
            this.f5792d = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f5792d;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f5792d;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: b.a.l.a.b$d */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/b$d.class */
    public static abstract class AbstractC1447d extends Drawable.ConstantState {

        /* renamed from: A */
        int f5793A;

        /* renamed from: B */
        int f5794B;

        /* renamed from: C */
        boolean f5795C;

        /* renamed from: D */
        ColorFilter f5796D;

        /* renamed from: E */
        boolean f5797E;

        /* renamed from: F */
        ColorStateList f5798F;

        /* renamed from: G */
        PorterDuff.Mode f5799G;

        /* renamed from: H */
        boolean f5800H;

        /* renamed from: I */
        boolean f5801I;

        /* renamed from: a */
        final C1443b f5802a;

        /* renamed from: b */
        Resources f5803b;

        /* renamed from: c */
        int f5804c;

        /* renamed from: d */
        int f5805d;

        /* renamed from: e */
        int f5806e;

        /* renamed from: f */
        SparseArray<Drawable.ConstantState> f5807f;

        /* renamed from: g */
        Drawable[] f5808g;

        /* renamed from: h */
        int f5809h;

        /* renamed from: i */
        boolean f5810i;

        /* renamed from: j */
        boolean f5811j;

        /* renamed from: k */
        Rect f5812k;

        /* renamed from: l */
        boolean f5813l;

        /* renamed from: m */
        boolean f5814m;

        /* renamed from: n */
        int f5815n;

        /* renamed from: o */
        int f5816o;

        /* renamed from: p */
        int f5817p;

        /* renamed from: q */
        int f5818q;

        /* renamed from: r */
        boolean f5819r;

        /* renamed from: s */
        int f5820s;

        /* renamed from: t */
        boolean f5821t;

        /* renamed from: u */
        boolean f5822u;

        /* renamed from: v */
        boolean f5823v;

        /* renamed from: w */
        boolean f5824w;

        /* renamed from: x */
        boolean f5825x;

        /* renamed from: y */
        boolean f5826y;

        /* renamed from: z */
        int f5827z;

        public AbstractC1447d(AbstractC1447d abstractC1447d, C1443b c1443b, Resources resources) {
            this.f5810i = false;
            this.f5813l = false;
            this.f5825x = true;
            this.f5793A = 0;
            this.f5794B = 0;
            this.f5802a = c1443b;
            this.f5803b = resources != null ? resources : abstractC1447d != null ? abstractC1447d.f5803b : null;
            int m30095f = C1443b.m30095f(resources, abstractC1447d != null ? abstractC1447d.f5804c : 0);
            this.f5804c = m30095f;
            if (abstractC1447d == null) {
                this.f5808g = new Drawable[10];
                this.f5809h = 0;
                return;
            }
            this.f5805d = abstractC1447d.f5805d;
            this.f5806e = abstractC1447d.f5806e;
            this.f5823v = true;
            this.f5824w = true;
            this.f5810i = abstractC1447d.f5810i;
            this.f5813l = abstractC1447d.f5813l;
            this.f5825x = abstractC1447d.f5825x;
            this.f5826y = abstractC1447d.f5826y;
            this.f5827z = abstractC1447d.f5827z;
            this.f5793A = abstractC1447d.f5793A;
            this.f5794B = abstractC1447d.f5794B;
            this.f5795C = abstractC1447d.f5795C;
            this.f5796D = abstractC1447d.f5796D;
            this.f5797E = abstractC1447d.f5797E;
            this.f5798F = abstractC1447d.f5798F;
            this.f5799G = abstractC1447d.f5799G;
            this.f5800H = abstractC1447d.f5800H;
            this.f5801I = abstractC1447d.f5801I;
            if (abstractC1447d.f5804c == m30095f) {
                if (abstractC1447d.f5811j) {
                    this.f5812k = abstractC1447d.f5812k != null ? new Rect(abstractC1447d.f5812k) : null;
                    this.f5811j = true;
                }
                if (abstractC1447d.f5814m) {
                    this.f5815n = abstractC1447d.f5815n;
                    this.f5816o = abstractC1447d.f5816o;
                    this.f5817p = abstractC1447d.f5817p;
                    this.f5818q = abstractC1447d.f5818q;
                    this.f5814m = true;
                }
            }
            if (abstractC1447d.f5819r) {
                this.f5820s = abstractC1447d.f5820s;
                this.f5819r = true;
            }
            if (abstractC1447d.f5821t) {
                this.f5822u = abstractC1447d.f5822u;
                this.f5821t = true;
            }
            Drawable[] drawableArr = abstractC1447d.f5808g;
            this.f5808g = new Drawable[drawableArr.length];
            this.f5809h = abstractC1447d.f5809h;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC1447d.f5807f;
            if (sparseArray != null) {
                this.f5807f = sparseArray.clone();
            } else {
                this.f5807f = new SparseArray<>(this.f5809h);
            }
            int i = this.f5809h;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f5807f.put(i2, constantState);
                    } else {
                        this.f5808g[i2] = drawableArr[i2];
                    }
                }
            }
        }

        /* renamed from: e */
        private void m30083e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f5807f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f5808g[this.f5807f.keyAt(i)] = m30071s(this.f5807f.valueAt(i).newDrawable(this.f5803b));
                }
                this.f5807f = null;
            }
        }

        /* renamed from: s */
        private Drawable m30071s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                C0615a.m33217m(drawable, this.f5827z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f5802a);
            return mutate;
        }

        /* renamed from: a */
        public final int m30087a(Drawable drawable) {
            int i = this.f5809h;
            if (i >= this.f5808g.length) {
                mo30057o(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f5802a);
            this.f5808g[i] = drawable;
            this.f5809h++;
            this.f5806e = drawable.getChangingConfigurations() | this.f5806e;
            m30073p();
            this.f5812k = null;
            this.f5811j = false;
            this.f5814m = false;
            this.f5823v = false;
            return i;
        }

        /* renamed from: b */
        final void m30086b(Resources.Theme theme) {
            if (theme != null) {
                m30083e();
                int i = this.f5809h;
                Drawable[] drawableArr = this.f5808g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && C0615a.m33228b(drawableArr[i2])) {
                        C0615a.m33229a(drawableArr[i2], theme);
                        this.f5806e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m30065y(C1445b.m30090c(theme));
            }
        }

        /* renamed from: c */
        public boolean m30085c() {
            if (this.f5823v) {
                return this.f5824w;
            }
            m30083e();
            this.f5823v = true;
            int i = this.f5809h;
            Drawable[] drawableArr = this.f5808g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.f5824w = false;
                    return false;
                }
            }
            this.f5824w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f5809h;
            Drawable[] drawableArr = this.f5808g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f5807f.get(i2);
                    if (constantState != null && C1445b.m30092a(constantState)) {
                        return true;
                    }
                } else if (C0615a.m33228b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        protected void m30084d() {
            this.f5814m = true;
            m30083e();
            int i = this.f5809h;
            Drawable[] drawableArr = this.f5808g;
            this.f5816o = -1;
            this.f5815n = -1;
            this.f5818q = 0;
            this.f5817p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f5815n) {
                    this.f5815n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f5816o) {
                    this.f5816o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f5817p) {
                    this.f5817p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f5818q) {
                    this.f5818q = minimumHeight;
                }
            }
        }

        /* renamed from: f */
        public final int m30082f() {
            return this.f5808g.length;
        }

        /* renamed from: g */
        public final Drawable m30081g(int i) {
            int indexOfKey;
            Drawable drawable = this.f5808g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f5807f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable m30071s = m30071s(this.f5807f.valueAt(indexOfKey).newDrawable(this.f5803b));
            this.f5808g[i] = m30071s;
            this.f5807f.removeAt(indexOfKey);
            if (this.f5807f.size() == 0) {
                this.f5807f = null;
            }
            return m30071s;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f5805d | this.f5806e;
        }

        /* renamed from: h */
        public final int m30080h() {
            return this.f5809h;
        }

        /* renamed from: i */
        public final int m30079i() {
            if (!this.f5814m) {
                m30084d();
            }
            return this.f5816o;
        }

        /* renamed from: j */
        public final int m30078j() {
            if (!this.f5814m) {
                m30084d();
            }
            return this.f5818q;
        }

        /* renamed from: k */
        public final int m30077k() {
            if (!this.f5814m) {
                m30084d();
            }
            return this.f5817p;
        }

        /* renamed from: l */
        public final Rect m30076l() {
            Rect rect = null;
            if (this.f5810i) {
                return null;
            }
            Rect rect2 = this.f5812k;
            if (rect2 != null || this.f5811j) {
                return rect2;
            }
            m30083e();
            Rect rect3 = new Rect();
            int i = this.f5809h;
            Drawable[] drawableArr = this.f5808g;
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
            this.f5811j = true;
            this.f5812k = rect;
            return rect;
        }

        /* renamed from: m */
        public final int m30075m() {
            if (!this.f5814m) {
                m30084d();
            }
            return this.f5815n;
        }

        /* renamed from: n */
        public final int m30074n() {
            if (this.f5819r) {
                return this.f5820s;
            }
            m30083e();
            int i = this.f5809h;
            Drawable[] drawableArr = this.f5808g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f5820s = opacity;
            this.f5819r = true;
            return opacity;
        }

        /* renamed from: o */
        public void mo30057o(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.f5808g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.f5808g = drawableArr;
        }

        /* renamed from: p */
        void m30073p() {
            this.f5819r = false;
            this.f5821t = false;
        }

        /* renamed from: q */
        public final boolean m30072q() {
            return this.f5813l;
        }

        /* renamed from: r */
        abstract void mo30056r();

        /* renamed from: t */
        public final void m30070t(boolean z) {
            this.f5813l = z;
        }

        /* renamed from: u */
        public final void m30069u(int i) {
            this.f5793A = i;
        }

        /* renamed from: v */
        public final void m30068v(int i) {
            this.f5794B = i;
        }

        /* renamed from: w */
        final boolean m30067w(int i, int i2) {
            int i3 = this.f5809h;
            Drawable[] drawableArr = this.f5808g;
            int i4 = 0;
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (i4 >= i3) {
                    this.f5827z = i;
                    return z2;
                }
                boolean z3 = z2;
                if (drawableArr[i4] != null) {
                    boolean m33217m = Build.VERSION.SDK_INT >= 23 ? C0615a.m33217m(drawableArr[i4], i) : false;
                    z3 = z2;
                    if (i4 == i2) {
                        z3 = m33217m;
                    }
                }
                i4++;
                z = z3;
            }
        }

        /* renamed from: x */
        public final void m30066x(boolean z) {
            this.f5810i = z;
        }

        /* renamed from: y */
        final void m30065y(Resources resources) {
            if (resources != null) {
                this.f5803b = resources;
                int m30095f = C1443b.m30095f(resources, this.f5804c);
                int i = this.f5804c;
                this.f5804c = m30095f;
                if (i == m30095f) {
                    return;
                }
                this.f5814m = false;
                this.f5811j = false;
            }
        }
    }

    /* renamed from: d */
    private void m30097d(Drawable drawable) {
        if (this.f5790o == null) {
            this.f5790o = new C1446c();
        }
        drawable.setCallback(this.f5790o.m30088b(drawable.getCallback()));
        try {
            if (this.f5779d.f5793A <= 0 && this.f5784i) {
                drawable.setAlpha(this.f5783h);
            }
            AbstractC1447d abstractC1447d = this.f5779d;
            if (abstractC1447d.f5797E) {
                drawable.setColorFilter(abstractC1447d.f5796D);
            } else {
                if (abstractC1447d.f5800H) {
                    C0615a.m33215o(drawable, abstractC1447d.f5798F);
                }
                AbstractC1447d abstractC1447d2 = this.f5779d;
                if (abstractC1447d2.f5801I) {
                    C0615a.m33214p(drawable, abstractC1447d2.f5799G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f5779d.f5825x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                C0615a.m33217m(drawable, C0615a.m33224f(this));
            }
            if (i >= 19) {
                C0615a.m33220j(drawable, this.f5779d.f5795C);
            }
            Rect rect = this.f5780e;
            if (i >= 21 && rect != null) {
                C0615a.m33218l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f5790o.m30089a());
        }
    }

    /* renamed from: e */
    private boolean m30096e() {
        boolean z = true;
        if (!isAutoMirrored() || C0615a.m33224f(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    static int m30095f(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        int i2 = i;
        if (i == 0) {
            i2 = 160;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m30099a(boolean r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p021a.p024l.p025a.C1443b.m30099a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f5779d.m30086b(theme);
    }

    /* renamed from: b */
    AbstractC1447d mo30062b() {
        throw null;
    }

    /* renamed from: c */
    public int m30098c() {
        return this.f5785j;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f5779d.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f5781f;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f5782g;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m30094g(int r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p021a.p024l.p025a.C1443b.m30094g(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f5783h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f5779d.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f5779d.m30085c()) {
            this.f5779d.f5805d = getChangingConfigurations();
            return this.f5779d;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f5781f;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f5780e;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f5779d.m30072q()) {
            return this.f5779d.m30079i();
        }
        Drawable drawable = this.f5781f;
        return drawable != null ? drawable.getIntrinsicHeight() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f5779d.m30072q()) {
            return this.f5779d.m30075m();
        }
        Drawable drawable = this.f5781f;
        return drawable != null ? drawable.getIntrinsicWidth() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f5779d.m30072q()) {
            return this.f5779d.m30078j();
        }
        Drawable drawable = this.f5781f;
        return drawable != null ? drawable.getMinimumHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f5779d.m30072q()) {
            return this.f5779d.m30077k();
        }
        Drawable drawable = this.f5781f;
        return drawable != null ? drawable.getMinimumWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f5781f;
        return (drawable == null || !drawable.isVisible()) ? -2 : this.f5779d.m30074n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f5781f;
        if (drawable != null) {
            C1445b.m30091b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        Rect m30076l = this.f5779d.m30076l();
        if (m30076l != null) {
            rect.set(m30076l);
            z = (m30076l.right | ((m30076l.left | m30076l.top) | m30076l.bottom)) != 0;
        } else {
            Drawable drawable = this.f5781f;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (m30096e()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return z;
    }

    /* renamed from: h */
    public void mo30061h(AbstractC1447d abstractC1447d) {
        this.f5779d = abstractC1447d;
        int i = this.f5785j;
        if (i >= 0) {
            Drawable m30081g = abstractC1447d.m30081g(i);
            this.f5781f = m30081g;
            if (m30081g != null) {
                m30097d(m30081g);
            }
        }
        this.f5782g = null;
    }

    /* renamed from: i */
    public final void m30093i(Resources resources) {
        this.f5779d.m30065y(resources);
    }

    public void invalidateDrawable(Drawable drawable) {
        AbstractC1447d abstractC1447d = this.f5779d;
        if (abstractC1447d != null) {
            abstractC1447d.m30073p();
        }
        if (drawable != this.f5781f || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f5779d.f5795C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f5782g;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f5782g = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f5781f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f5784i) {
                this.f5781f.setAlpha(this.f5783h);
            }
        }
        if (this.f5789n != 0) {
            this.f5789n = 0L;
            z = true;
        }
        if (this.f5788m != 0) {
            this.f5788m = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f5786k && super.mutate() == this) {
            AbstractC1447d mo30062b = mo30062b();
            mo30062b.mo30056r();
            mo30061h(mo30062b);
            this.f5786k = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f5782g;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f5781f;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f5779d.m30067w(i, m30098c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f5782g;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f5781f;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f5782g;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f5781f;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setState(iArr);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f5781f || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f5784i || this.f5783h != i) {
            this.f5784i = true;
            this.f5783h = i;
            Drawable drawable = this.f5781f;
            if (drawable == null) {
                return;
            }
            if (this.f5788m == 0) {
                drawable.setAlpha(i);
            } else {
                m30099a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        AbstractC1447d abstractC1447d = this.f5779d;
        if (abstractC1447d.f5795C != z) {
            abstractC1447d.f5795C = z;
            Drawable drawable = this.f5781f;
            if (drawable == null) {
                return;
            }
            C0615a.m33220j(drawable, z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC1447d abstractC1447d = this.f5779d;
        abstractC1447d.f5797E = true;
        if (abstractC1447d.f5796D != colorFilter) {
            abstractC1447d.f5796D = colorFilter;
            Drawable drawable = this.f5781f;
            if (drawable == null) {
                return;
            }
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        AbstractC1447d abstractC1447d = this.f5779d;
        if (abstractC1447d.f5825x != z) {
            abstractC1447d.f5825x = z;
            Drawable drawable = this.f5781f;
            if (drawable == null) {
                return;
            }
            drawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f5781f;
        if (drawable != null) {
            C0615a.m33219k(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f5780e;
        if (rect == null) {
            this.f5780e = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f5781f;
        if (drawable != null) {
            C0615a.m33218l(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        AbstractC1447d abstractC1447d = this.f5779d;
        abstractC1447d.f5800H = true;
        if (abstractC1447d.f5798F != colorStateList) {
            abstractC1447d.f5798F = colorStateList;
            C0615a.m33215o(this.f5781f, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC1447d abstractC1447d = this.f5779d;
        abstractC1447d.f5801I = true;
        if (abstractC1447d.f5799G != mode) {
            abstractC1447d.f5799G = mode;
            C0615a.m33214p(this.f5781f, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f5782g;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f5781f;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f5781f || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
