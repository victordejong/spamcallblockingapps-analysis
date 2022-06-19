package androidx.appcompat.p010b.p011a;

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
import androidx.core.graphics.drawable.C0535a;
/* renamed from: androidx.appcompat.b.a.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b.class */
public class C0161b extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    private AbstractC0164b f522a;

    /* renamed from: b */
    private Rect f523b;

    /* renamed from: c */
    private Drawable f524c;

    /* renamed from: d */
    private Drawable f525d;

    /* renamed from: f */
    private boolean f527f;

    /* renamed from: i */
    private boolean f530i;

    /* renamed from: j */
    private Runnable f531j;

    /* renamed from: k */
    private long f532k;

    /* renamed from: l */
    private long f533l;

    /* renamed from: m */
    private C0163a f534m;

    /* renamed from: e */
    private int f526e = 255;

    /* renamed from: g */
    private int f528g = -1;

    /* renamed from: h */
    private int f529h = -1;

    /* renamed from: androidx.appcompat.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$a.class */
    public static class C0163a implements Drawable.Callback {

        /* renamed from: a */
        private Drawable.Callback f536a;

        C0163a() {
        }

        /* renamed from: a */
        public Drawable.Callback m22033a() {
            Drawable.Callback callback = this.f536a;
            this.f536a = null;
            return callback;
        }

        /* renamed from: a */
        public C0163a m22032a(Drawable.Callback callback) {
            this.f536a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            if (this.f536a != null) {
                this.f536a.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            if (this.f536a != null) {
                this.f536a.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: androidx.appcompat.b.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$b.class */
    public static abstract class AbstractC0164b extends Drawable.ConstantState {

        /* renamed from: A */
        boolean f537A;

        /* renamed from: B */
        int f538B;

        /* renamed from: C */
        int f539C;

        /* renamed from: D */
        int f540D;

        /* renamed from: E */
        boolean f541E;

        /* renamed from: F */
        ColorFilter f542F;

        /* renamed from: G */
        boolean f543G;

        /* renamed from: H */
        ColorStateList f544H;

        /* renamed from: I */
        PorterDuff.Mode f545I;

        /* renamed from: J */
        boolean f546J;

        /* renamed from: K */
        boolean f547K;

        /* renamed from: c */
        final C0161b f548c;

        /* renamed from: d */
        Resources f549d;

        /* renamed from: e */
        int f550e;

        /* renamed from: f */
        int f551f;

        /* renamed from: g */
        int f552g;

        /* renamed from: h */
        SparseArray<Drawable.ConstantState> f553h;

        /* renamed from: i */
        Drawable[] f554i;

        /* renamed from: j */
        int f555j;

        /* renamed from: k */
        boolean f556k;

        /* renamed from: l */
        boolean f557l;

        /* renamed from: m */
        Rect f558m;

        /* renamed from: n */
        boolean f559n;

        /* renamed from: o */
        boolean f560o;

        /* renamed from: p */
        int f561p;

        /* renamed from: q */
        int f562q;

        /* renamed from: r */
        int f563r;

        /* renamed from: s */
        int f564s;

        /* renamed from: t */
        boolean f565t;

        /* renamed from: u */
        int f566u;

        /* renamed from: v */
        boolean f567v;

        /* renamed from: w */
        boolean f568w;

        /* renamed from: x */
        boolean f569x;

        /* renamed from: y */
        boolean f570y;

        /* renamed from: z */
        boolean f571z;

        public AbstractC0164b(AbstractC0164b abstractC0164b, C0161b c0161b, Resources resources) {
            this.f550e = 160;
            this.f556k = false;
            this.f559n = false;
            this.f571z = true;
            this.f539C = 0;
            this.f540D = 0;
            this.f548c = c0161b;
            this.f549d = resources != null ? resources : abstractC0164b != null ? abstractC0164b.f549d : null;
            this.f550e = C0161b.m22037a(resources, abstractC0164b != null ? abstractC0164b.f550e : 0);
            if (abstractC0164b == null) {
                this.f554i = new Drawable[10];
                this.f555j = 0;
                return;
            }
            this.f551f = abstractC0164b.f551f;
            this.f552g = abstractC0164b.f552g;
            this.f569x = true;
            this.f570y = true;
            this.f556k = abstractC0164b.f556k;
            this.f559n = abstractC0164b.f559n;
            this.f571z = abstractC0164b.f571z;
            this.f537A = abstractC0164b.f537A;
            this.f538B = abstractC0164b.f538B;
            this.f539C = abstractC0164b.f539C;
            this.f540D = abstractC0164b.f540D;
            this.f541E = abstractC0164b.f541E;
            this.f542F = abstractC0164b.f542F;
            this.f543G = abstractC0164b.f543G;
            this.f544H = abstractC0164b.f544H;
            this.f545I = abstractC0164b.f545I;
            this.f546J = abstractC0164b.f546J;
            this.f547K = abstractC0164b.f547K;
            if (abstractC0164b.f550e == this.f550e) {
                if (abstractC0164b.f557l) {
                    this.f558m = new Rect(abstractC0164b.f558m);
                    this.f557l = true;
                }
                if (abstractC0164b.f560o) {
                    this.f561p = abstractC0164b.f561p;
                    this.f562q = abstractC0164b.f562q;
                    this.f563r = abstractC0164b.f563r;
                    this.f564s = abstractC0164b.f564s;
                    this.f560o = true;
                }
            }
            if (abstractC0164b.f565t) {
                this.f566u = abstractC0164b.f566u;
                this.f565t = true;
            }
            if (abstractC0164b.f567v) {
                this.f568w = abstractC0164b.f568w;
                this.f567v = true;
            }
            Drawable[] drawableArr = abstractC0164b.f554i;
            this.f554i = new Drawable[drawableArr.length];
            this.f555j = abstractC0164b.f555j;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC0164b.f553h;
            if (sparseArray != null) {
                this.f553h = sparseArray.clone();
            } else {
                this.f553h = new SparseArray<>(this.f555j);
            }
            int i = this.f555j;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f553h.put(i2, constantState);
                    } else {
                        this.f554i[i2] = drawableArr[i2];
                    }
                }
            }
        }

        /* renamed from: b */
        private Drawable m22025b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f538B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f548c);
            return mutate;
        }

        /* renamed from: o */
        private void m22008o() {
            if (this.f553h != null) {
                int size = this.f553h.size();
                for (int i = 0; i < size; i++) {
                    this.f554i[this.f553h.keyAt(i)] = m22025b(this.f553h.valueAt(i).newDrawable(this.f549d));
                }
                this.f553h = null;
            }
        }

        /* renamed from: a */
        public final int m22029a(Drawable drawable) {
            int i = this.f555j;
            if (i >= this.f554i.length) {
                mo21995e(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f548c);
            this.f554i[i] = drawable;
            this.f555j++;
            this.f552g |= drawable.getChangingConfigurations();
            m22027b();
            this.f558m = null;
            this.f557l = false;
            this.f560o = false;
            this.f569x = false;
            return i;
        }

        /* renamed from: a */
        void mo21998a() {
            int i = this.f555j;
            Drawable[] drawableArr = this.f554i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.f537A = true;
        }

        /* renamed from: a */
        final void m22031a(Resources.Theme theme) {
            if (theme != null) {
                m22008o();
                int i = this.f555j;
                Drawable[] drawableArr = this.f554i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.f552g |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m22030a(theme.getResources());
            }
        }

        /* renamed from: a */
        final void m22030a(Resources resources) {
            if (resources != null) {
                this.f549d = resources;
                int m22037a = C0161b.m22037a(resources, this.f550e);
                int i = this.f550e;
                this.f550e = m22037a;
                if (i == m22037a) {
                    return;
                }
                this.f560o = false;
                this.f557l = false;
            }
        }

        /* renamed from: a */
        public final void m22028a(boolean z) {
            this.f556k = z;
        }

        /* renamed from: b */
        public final Drawable m22026b(int i) {
            int indexOfKey;
            Drawable drawable = this.f554i[i];
            if (drawable == null) {
                if (this.f553h == null || (indexOfKey = this.f553h.indexOfKey(i)) < 0) {
                    drawable = null;
                } else {
                    Drawable m22025b = m22025b(this.f553h.valueAt(indexOfKey).newDrawable(this.f549d));
                    this.f554i[i] = m22025b;
                    this.f553h.removeAt(indexOfKey);
                    drawable = m22025b;
                    if (this.f553h.size() == 0) {
                        this.f553h = null;
                        drawable = m22025b;
                    }
                }
            }
            return drawable;
        }

        /* renamed from: b */
        void m22027b() {
            this.f565t = false;
            this.f567v = false;
        }

        /* renamed from: b */
        public final void m22024b(boolean z) {
            this.f559n = z;
        }

        /* renamed from: c */
        public final int m22023c() {
            return this.f554i.length;
        }

        /* renamed from: c */
        public final void m22022c(int i) {
            this.f539C = i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            boolean z;
            int i = this.f555j;
            Drawable[] drawableArr = this.f554i;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = false;
                    break;
                }
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f553h.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        z = true;
                        break;
                    }
                    i2++;
                } else if (drawable.canApplyTheme()) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            return z;
        }

        /* renamed from: d */
        public final int m22021d() {
            return this.f555j;
        }

        /* renamed from: d */
        public final void m22020d(int i) {
            this.f540D = i;
        }

        /* renamed from: d */
        final boolean m22019d(int i, int i2) {
            boolean z;
            int i3 = this.f555j;
            Drawable[] drawableArr = this.f554i;
            int i4 = 0;
            boolean z2 = false;
            while (true) {
                boolean z3 = z2;
                if (i4 >= i3) {
                    this.f538B = i;
                    return z3;
                }
                if (drawableArr[i4] != null) {
                    z = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                    if (i4 == i2) {
                        i4++;
                        z2 = z;
                    }
                }
                z = z3;
                i4++;
                z2 = z;
            }
        }

        /* renamed from: e */
        public final Rect m22018e() {
            Rect rect = null;
            if (this.f556k) {
                rect = null;
            } else if (this.f558m != null || this.f557l) {
                rect = this.f558m;
            } else {
                m22008o();
                Rect rect2 = new Rect();
                int i = this.f555j;
                Drawable[] drawableArr = this.f554i;
                int i2 = 0;
                while (i2 < i) {
                    Rect rect3 = rect;
                    if (drawableArr[i2].getPadding(rect2)) {
                        Rect rect4 = rect;
                        if (rect == null) {
                            rect4 = new Rect(0, 0, 0, 0);
                        }
                        if (rect2.left > rect4.left) {
                            rect4.left = rect2.left;
                        }
                        if (rect2.top > rect4.top) {
                            rect4.top = rect2.top;
                        }
                        if (rect2.right > rect4.right) {
                            rect4.right = rect2.right;
                        }
                        rect3 = rect4;
                        if (rect2.bottom > rect4.bottom) {
                            rect4.bottom = rect2.bottom;
                            rect3 = rect4;
                        }
                    }
                    i2++;
                    rect = rect3;
                }
                this.f557l = true;
                this.f558m = rect;
            }
            return rect;
        }

        /* renamed from: e */
        public void mo21995e(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f554i, 0, drawableArr, 0, i);
            this.f554i = drawableArr;
        }

        /* renamed from: f */
        public final boolean m22017f() {
            return this.f559n;
        }

        /* renamed from: g */
        public final int m22016g() {
            if (!this.f560o) {
                m22012k();
            }
            return this.f561p;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f551f | this.f552g;
        }

        /* renamed from: h */
        public final int m22015h() {
            if (!this.f560o) {
                m22012k();
            }
            return this.f562q;
        }

        /* renamed from: i */
        public final int m22014i() {
            if (!this.f560o) {
                m22012k();
            }
            return this.f563r;
        }

        /* renamed from: j */
        public final int m22013j() {
            if (!this.f560o) {
                m22012k();
            }
            return this.f564s;
        }

        /* renamed from: k */
        protected void m22012k() {
            this.f560o = true;
            m22008o();
            int i = this.f555j;
            Drawable[] drawableArr = this.f554i;
            this.f562q = -1;
            this.f561p = -1;
            this.f564s = 0;
            this.f563r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f561p) {
                    this.f561p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f562q) {
                    this.f562q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f563r) {
                    this.f563r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f564s) {
                    this.f564s = minimumHeight;
                }
            }
        }

        /* renamed from: l */
        public final int m22011l() {
            int opacity;
            if (this.f565t) {
                opacity = this.f566u;
            } else {
                m22008o();
                int i = this.f555j;
                Drawable[] drawableArr = this.f554i;
                opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
                for (int i2 = 1; i2 < i; i2++) {
                    opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
                }
                this.f566u = opacity;
                this.f565t = true;
            }
            return opacity;
        }

        /* renamed from: m */
        public final boolean m22010m() {
            boolean z;
            if (this.f567v) {
                z = this.f568w;
            } else {
                m22008o();
                int i = this.f555j;
                Drawable[] drawableArr = this.f554i;
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
                this.f568w = z;
                this.f567v = true;
            }
            return z;
        }

        /* renamed from: n */
        public boolean m22009n() {
            boolean z = false;
            synchronized (this) {
                if (!this.f569x) {
                    m22008o();
                    this.f569x = true;
                    int i = this.f555j;
                    Drawable[] drawableArr = this.f554i;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= i) {
                            this.f570y = true;
                            z = true;
                            break;
                        } else if (drawableArr[i2].getConstantState() == null) {
                            this.f570y = false;
                            break;
                        } else {
                            i2++;
                        }
                    }
                } else {
                    z = this.f570y;
                }
            }
            return z;
        }
    }

    /* renamed from: a */
    static int m22037a(Resources resources, int i) {
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
    private void m22036a(Drawable drawable) {
        if (this.f534m == null) {
            this.f534m = new C0163a();
        }
        drawable.setCallback(this.f534m.m22032a(drawable.getCallback()));
        try {
            if (this.f522a.f539C <= 0 && this.f527f) {
                drawable.setAlpha(this.f526e);
            }
            if (this.f522a.f543G) {
                drawable.setColorFilter(this.f522a.f542F);
            } else {
                if (this.f522a.f546J) {
                    C0535a.m20595a(drawable, this.f522a.f544H);
                }
                if (this.f522a.f547K) {
                    C0535a.m20592a(drawable, this.f522a.f545I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f522a.f571z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f522a.f541E);
            }
            Rect rect = this.f523b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f534m.m22033a());
        }
    }

    /* renamed from: a */
    private boolean m22040a() {
        boolean z = true;
        if (!isAutoMirrored() || C0535a.m20582i(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final void m22038a(Resources resources) {
        this.f522a.m22030a(resources);
    }

    /* renamed from: a */
    public void mo22002a(AbstractC0164b abstractC0164b) {
        this.f522a = abstractC0164b;
        if (this.f528g >= 0) {
            this.f524c = abstractC0164b.m22026b(this.f528g);
            if (this.f524c != null) {
                m22036a(this.f524c);
            }
        }
        this.f529h = -1;
        this.f525d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ef  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m22035a(boolean r8) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p010b.p011a.C0161b.m22035a(boolean):void");
    }

    /* renamed from: a */
    public boolean m22039a(int i) {
        boolean z = false;
        if (i != this.f528g) {
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.f522a.f540D > 0) {
                if (this.f525d != null) {
                    this.f525d.setVisible(false, false);
                }
                if (this.f524c != null) {
                    this.f525d = this.f524c;
                    this.f529h = this.f528g;
                    this.f533l = this.f522a.f540D + uptimeMillis;
                } else {
                    this.f525d = null;
                    this.f529h = -1;
                    this.f533l = 0L;
                }
            } else if (this.f524c != null) {
                this.f524c.setVisible(false, false);
            }
            if (i < 0 || i >= this.f522a.f555j) {
                this.f524c = null;
                this.f528g = -1;
            } else {
                Drawable m22026b = this.f522a.m22026b(i);
                this.f524c = m22026b;
                this.f528g = i;
                if (m22026b != null) {
                    if (this.f522a.f539C > 0) {
                        this.f532k = uptimeMillis + this.f522a.f539C;
                    }
                    m22036a(m22026b);
                }
            }
            if (this.f532k != 0 || this.f533l != 0) {
                if (this.f531j == null) {
                    this.f531j = new Runnable() { // from class: androidx.appcompat.b.a.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            C0161b.this.m22035a(true);
                            C0161b.this.invalidateSelf();
                        }
                    };
                } else {
                    unscheduleSelf(this.f531j);
                }
                m22035a(true);
            }
            invalidateSelf();
            z = true;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f522a.m22031a(theme);
    }

    /* renamed from: c */
    AbstractC0164b mo21999c() {
        return this.f522a;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f522a.canApplyTheme();
    }

    /* renamed from: d */
    public int m22034d() {
        return this.f528g;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f524c != null) {
            this.f524c.draw(canvas);
        }
        if (this.f525d != null) {
            this.f525d.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f526e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f522a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        AbstractC0164b abstractC0164b;
        if (this.f522a.m22009n()) {
            this.f522a.f551f = getChangingConfigurations();
            abstractC0164b = this.f522a;
        } else {
            abstractC0164b = null;
        }
        return abstractC0164b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f524c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        if (this.f523b != null) {
            rect.set(this.f523b);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f522a.m22017f() ? this.f522a.m22015h() : this.f524c != null ? this.f524c.getIntrinsicHeight() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f522a.m22017f() ? this.f522a.m22016g() : this.f524c != null ? this.f524c.getIntrinsicWidth() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f522a.m22017f() ? this.f522a.m22013j() : this.f524c != null ? this.f524c.getMinimumHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f522a.m22017f() ? this.f522a.m22014i() : this.f524c != null ? this.f524c.getMinimumWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (this.f524c == null || !this.f524c.isVisible()) ? -2 : this.f522a.m22011l();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f524c != null) {
            this.f524c.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect m22018e = this.f522a.m22018e();
        if (m22018e != null) {
            rect.set(m22018e);
            padding = (m22018e.right | ((m22018e.left | m22018e.top) | m22018e.bottom)) != 0;
        } else {
            padding = this.f524c != null ? this.f524c.getPadding(rect) : super.getPadding(rect);
        }
        if (m22040a()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (this.f522a != null) {
            this.f522a.m22027b();
        }
        if (drawable != this.f524c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f522a.f541E;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f522a.m22010m();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z = false;
        if (this.f525d != null) {
            this.f525d.jumpToCurrentState();
            this.f525d = null;
            this.f529h = -1;
            z = true;
        }
        if (this.f524c != null) {
            this.f524c.jumpToCurrentState();
            if (this.f527f) {
                this.f524c.setAlpha(this.f526e);
            }
        }
        if (this.f533l != 0) {
            this.f533l = 0L;
            z = true;
        }
        if (this.f532k != 0) {
            this.f532k = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f530i && super.mutate() == this) {
            AbstractC0164b mo21999c = mo21999c();
            mo21999c.mo21998a();
            mo22002a(mo21999c);
            this.f530i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f525d != null) {
            this.f525d.setBounds(rect);
        }
        if (this.f524c != null) {
            this.f524c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f522a.m22019d(i, m22034d());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f525d != null ? this.f525d.setLevel(i) : this.f524c != null ? this.f524c.setLevel(i) : false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        return this.f525d != null ? this.f525d.setState(iArr) : this.f524c != null ? this.f524c.setState(iArr) : false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f524c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f527f || this.f526e != i) {
            this.f527f = true;
            this.f526e = i;
            if (this.f524c == null) {
                return;
            }
            if (this.f532k == 0) {
                this.f524c.setAlpha(i);
            } else {
                m22035a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f522a.f541E != z) {
            this.f522a.f541E = z;
            if (this.f524c == null) {
                return;
            }
            C0535a.m20591a(this.f524c, this.f522a.f541E);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f522a.f543G = true;
        if (this.f522a.f542F != colorFilter) {
            this.f522a.f542F = colorFilter;
            if (this.f524c == null) {
                return;
            }
            this.f524c.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.f522a.f571z != z) {
            this.f522a.f571z = z;
            if (this.f524c == null) {
                return;
            }
            this.f524c.setDither(this.f522a.f571z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.f524c != null) {
            C0535a.m20598a(this.f524c, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.f523b == null) {
            this.f523b = new Rect(i, i2, i3, i4);
        } else {
            this.f523b.set(i, i2, i3, i4);
        }
        if (this.f524c != null) {
            C0535a.m20596a(this.f524c, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        this.f522a.f546J = true;
        if (this.f522a.f544H != colorStateList) {
            this.f522a.f544H = colorStateList;
            C0535a.m20595a(this.f524c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f522a.f547K = true;
        if (this.f522a.f545I != mode) {
            this.f522a.f545I = mode;
            C0535a.m20592a(this.f524c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f525d != null) {
            this.f525d.setVisible(z, z2);
        }
        if (this.f524c != null) {
            this.f524c.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f524c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
