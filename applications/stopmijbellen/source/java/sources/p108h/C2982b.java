package p108h;

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
import java.util.Objects;
import p098g0.C2789a;
import p108h.C2988e;
/* renamed from: h.b */
/* loaded from: classes-dex2jar.jar:h/b.class */
public class C2982b extends Drawable implements Drawable.Callback {

    /* renamed from: m */
    public static final /* synthetic */ int f10017m = 0;

    /* renamed from: a */
    public AbstractC2985c f10018a;

    /* renamed from: b */
    public Rect f10019b;

    /* renamed from: c */
    public Drawable f10020c;

    /* renamed from: d */
    public Drawable f10021d;

    /* renamed from: f */
    public boolean f10023f;

    /* renamed from: h */
    public boolean f10025h;

    /* renamed from: i */
    public Runnable f10026i;

    /* renamed from: j */
    public long f10027j;

    /* renamed from: k */
    public long f10028k;

    /* renamed from: l */
    public C2984b f10029l;

    /* renamed from: e */
    public int f10022e = 255;

    /* renamed from: g */
    public int f10024g = -1;

    /* renamed from: h.b$a */
    /* loaded from: classes-dex2jar.jar:h/b$a.class */
    public class RunnableC2983a implements Runnable {
        public RunnableC2983a() {
            C2982b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2982b.this.m2790a(true);
            C2982b.this.invalidateSelf();
        }
    }

    /* renamed from: h.b$b */
    /* loaded from: classes-dex2jar.jar:h/b$b.class */
    public static class C2984b implements Drawable.Callback {

        /* renamed from: a */
        public Drawable.Callback f10031a;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f10031a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f10031a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: h.b$c */
    /* loaded from: classes-dex2jar.jar:h/b$c.class */
    public static abstract class AbstractC2985c extends Drawable.ConstantState {

        /* renamed from: A */
        public int f10032A;

        /* renamed from: B */
        public int f10033B;

        /* renamed from: C */
        public boolean f10034C;

        /* renamed from: D */
        public ColorFilter f10035D;

        /* renamed from: E */
        public boolean f10036E;

        /* renamed from: F */
        public ColorStateList f10037F;

        /* renamed from: G */
        public PorterDuff.Mode f10038G;

        /* renamed from: H */
        public boolean f10039H;

        /* renamed from: I */
        public boolean f10040I;

        /* renamed from: a */
        public final C2982b f10041a;

        /* renamed from: b */
        public Resources f10042b;

        /* renamed from: c */
        public int f10043c;

        /* renamed from: d */
        public int f10044d;

        /* renamed from: e */
        public int f10045e;

        /* renamed from: f */
        public SparseArray<Drawable.ConstantState> f10046f;

        /* renamed from: g */
        public Drawable[] f10047g;

        /* renamed from: h */
        public int f10048h;

        /* renamed from: i */
        public boolean f10049i;

        /* renamed from: j */
        public boolean f10050j;

        /* renamed from: k */
        public Rect f10051k;

        /* renamed from: l */
        public boolean f10052l;

        /* renamed from: m */
        public boolean f10053m;

        /* renamed from: n */
        public int f10054n;

        /* renamed from: o */
        public int f10055o;

        /* renamed from: p */
        public int f10056p;

        /* renamed from: q */
        public int f10057q;

        /* renamed from: r */
        public boolean f10058r;

        /* renamed from: s */
        public int f10059s;

        /* renamed from: t */
        public boolean f10060t;

        /* renamed from: u */
        public boolean f10061u;

        /* renamed from: v */
        public boolean f10062v;

        /* renamed from: w */
        public boolean f10063w;

        /* renamed from: x */
        public boolean f10064x;

        /* renamed from: y */
        public boolean f10065y;

        /* renamed from: z */
        public int f10066z;

        public AbstractC2985c(AbstractC2985c abstractC2985c, C2982b c2982b, Resources resources) {
            this.f10049i = false;
            this.f10052l = false;
            this.f10064x = true;
            this.f10032A = 0;
            this.f10033B = 0;
            this.f10041a = c2982b;
            this.f10042b = resources != null ? resources : abstractC2985c != null ? abstractC2985c.f10042b : null;
            int i = abstractC2985c != null ? abstractC2985c.f10043c : 0;
            int i2 = C2982b.f10017m;
            i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
            int i3 = i == 0 ? 160 : i;
            this.f10043c = i3;
            if (abstractC2985c == null) {
                this.f10047g = new Drawable[10];
                this.f10048h = 0;
                return;
            }
            this.f10044d = abstractC2985c.f10044d;
            this.f10045e = abstractC2985c.f10045e;
            this.f10062v = true;
            this.f10063w = true;
            this.f10049i = abstractC2985c.f10049i;
            this.f10052l = abstractC2985c.f10052l;
            this.f10064x = abstractC2985c.f10064x;
            this.f10065y = abstractC2985c.f10065y;
            this.f10066z = abstractC2985c.f10066z;
            this.f10032A = abstractC2985c.f10032A;
            this.f10033B = abstractC2985c.f10033B;
            this.f10034C = abstractC2985c.f10034C;
            this.f10035D = abstractC2985c.f10035D;
            this.f10036E = abstractC2985c.f10036E;
            this.f10037F = abstractC2985c.f10037F;
            this.f10038G = abstractC2985c.f10038G;
            this.f10039H = abstractC2985c.f10039H;
            this.f10040I = abstractC2985c.f10040I;
            if (abstractC2985c.f10043c == i3) {
                if (abstractC2985c.f10050j) {
                    this.f10051k = abstractC2985c.f10051k != null ? new Rect(abstractC2985c.f10051k) : null;
                    this.f10050j = true;
                }
                if (abstractC2985c.f10053m) {
                    this.f10054n = abstractC2985c.f10054n;
                    this.f10055o = abstractC2985c.f10055o;
                    this.f10056p = abstractC2985c.f10056p;
                    this.f10057q = abstractC2985c.f10057q;
                    this.f10053m = true;
                }
            }
            if (abstractC2985c.f10058r) {
                this.f10059s = abstractC2985c.f10059s;
                this.f10058r = true;
            }
            if (abstractC2985c.f10060t) {
                this.f10061u = abstractC2985c.f10061u;
                this.f10060t = true;
            }
            Drawable[] drawableArr = abstractC2985c.f10047g;
            this.f10047g = new Drawable[drawableArr.length];
            this.f10048h = abstractC2985c.f10048h;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC2985c.f10046f;
            if (sparseArray != null) {
                this.f10046f = sparseArray.clone();
            } else {
                this.f10046f = new SparseArray<>(this.f10048h);
            }
            int i4 = this.f10048h;
            for (int i5 = 0; i5 < i4; i5++) {
                if (drawableArr[i5] != null) {
                    Drawable.ConstantState constantState = drawableArr[i5].getConstantState();
                    if (constantState != null) {
                        this.f10046f.put(i5, constantState);
                    } else {
                        this.f10047g[i5] = drawableArr[i5];
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v32, types: [java.lang.Object, int[], int[][]] */
        /* renamed from: a */
        public final int m2787a(Drawable drawable) {
            int i = this.f10048h;
            if (i >= this.f10047g.length) {
                int i2 = i + 10;
                C2988e.C2989a c2989a = (C2988e.C2989a) this;
                Drawable[] drawableArr = new Drawable[i2];
                Drawable[] drawableArr2 = c2989a.f10047g;
                if (drawableArr2 != null) {
                    System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
                }
                c2989a.f10047g = drawableArr;
                ?? r0 = new int[i2];
                System.arraycopy(c2989a.f10083J, 0, r0, 0, i);
                c2989a.f10083J = r0;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f10041a);
            this.f10047g[i] = drawable;
            this.f10048h++;
            this.f10045e = drawable.getChangingConfigurations() | this.f10045e;
            this.f10058r = false;
            this.f10060t = false;
            this.f10051k = null;
            this.f10050j = false;
            this.f10053m = false;
            this.f10062v = false;
            return i;
        }

        /* renamed from: b */
        public void m2786b() {
            this.f10053m = true;
            m2785c();
            int i = this.f10048h;
            Drawable[] drawableArr = this.f10047g;
            this.f10055o = -1;
            this.f10054n = -1;
            this.f10057q = 0;
            this.f10056p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f10054n) {
                    this.f10054n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f10055o) {
                    this.f10055o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f10056p) {
                    this.f10056p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f10057q) {
                    this.f10057q = minimumHeight;
                }
            }
        }

        /* renamed from: c */
        public final void m2785c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f10046f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.f10046f.keyAt(i);
                    Drawable.ConstantState valueAt = this.f10046f.valueAt(i);
                    Drawable[] drawableArr = this.f10047g;
                    Drawable newDrawable = valueAt.newDrawable(this.f10042b);
                    if (Build.VERSION.SDK_INT >= 23) {
                        C2789a.m3012c(newDrawable, this.f10066z);
                    }
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.f10041a);
                    drawableArr[keyAt] = mutate;
                }
                this.f10046f = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f10048h;
            Drawable[] drawableArr = this.f10047g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f10046f.get(i2);
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
        public final Drawable m2784d(int i) {
            int indexOfKey;
            Drawable drawable = this.f10047g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f10046f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable newDrawable = this.f10046f.valueAt(indexOfKey).newDrawable(this.f10042b);
            if (Build.VERSION.SDK_INT >= 23) {
                C2789a.m3012c(newDrawable, this.f10066z);
            }
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.f10041a);
            this.f10047g[i] = mutate;
            this.f10046f.removeAt(indexOfKey);
            if (this.f10046f.size() == 0) {
                this.f10046f = null;
            }
            return mutate;
        }

        /* renamed from: e */
        public abstract void mo2778e();

        /* renamed from: f */
        public final void m2783f(Resources resources) {
            if (resources != null) {
                this.f10042b = resources;
                int i = C2982b.f10017m;
                int i2 = resources.getDisplayMetrics().densityDpi;
                int i3 = i2;
                if (i2 == 0) {
                    i3 = 160;
                }
                int i4 = this.f10043c;
                this.f10043c = i3;
                if (i4 == i3) {
                    return;
                }
                this.f10053m = false;
                this.f10050j = false;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f10044d | this.f10045e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2790a(boolean r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p108h.C2982b.m2790a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        AbstractC2985c abstractC2985c = this.f10018a;
        Objects.requireNonNull(abstractC2985c);
        if (theme != null) {
            abstractC2985c.m2785c();
            int i = abstractC2985c.f10048h;
            Drawable[] drawableArr = abstractC2985c.f10047g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                    drawableArr[i2].applyTheme(theme);
                    abstractC2985c.f10045e |= drawableArr[i2].getChangingConfigurations();
                }
            }
            abstractC2985c.m2783f(theme.getResources());
        }
    }

    /* renamed from: b */
    public AbstractC2985c mo2781b() {
        throw null;
    }

    /* renamed from: c */
    public final void m2789c(Drawable drawable) {
        if (this.f10029l == null) {
            this.f10029l = new C2984b();
        }
        C2984b c2984b = this.f10029l;
        c2984b.f10031a = drawable.getCallback();
        drawable.setCallback(c2984b);
        try {
            if (this.f10018a.f10032A <= 0 && this.f10023f) {
                drawable.setAlpha(this.f10022e);
            }
            AbstractC2985c abstractC2985c = this.f10018a;
            if (abstractC2985c.f10036E) {
                drawable.setColorFilter(abstractC2985c.f10035D);
            } else {
                if (abstractC2985c.f10039H) {
                    drawable.setTintList(abstractC2985c.f10037F);
                }
                AbstractC2985c abstractC2985c2 = this.f10018a;
                if (abstractC2985c2.f10040I) {
                    drawable.setTintMode(abstractC2985c2.f10038G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f10018a.f10064x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                C2789a.m3012c(drawable, C2789a.m3013b(this));
            }
            drawable.setAutoMirrored(this.f10018a.f10034C);
            Rect rect = this.f10019b;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            C2984b c2984b2 = this.f10029l;
            Drawable.Callback callback = c2984b2.f10031a;
            c2984b2.f10031a = null;
            drawable.setCallback(callback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f10018a.canApplyTheme();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m2788d(int r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p108h.C2982b.m2788d(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f10020c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f10021d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* renamed from: e */
    public void mo2780e(AbstractC2985c abstractC2985c) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10022e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f10018a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        AbstractC2985c abstractC2985c = this.f10018a;
        boolean z = false;
        if (!abstractC2985c.f10062v) {
            abstractC2985c.m2785c();
            abstractC2985c.f10062v = true;
            int i = abstractC2985c.f10048h;
            Drawable[] drawableArr = abstractC2985c.f10047g;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    abstractC2985c.f10063w = true;
                    z = true;
                    break;
                } else if (drawableArr[i2].getConstantState() == null) {
                    abstractC2985c.f10063w = false;
                    break;
                } else {
                    i2++;
                }
            }
        } else {
            z = abstractC2985c.f10063w;
        }
        if (z) {
            this.f10018a.f10044d = getChangingConfigurations();
            return this.f10018a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f10020c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f10019b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        AbstractC2985c abstractC2985c = this.f10018a;
        if (!abstractC2985c.f10052l) {
            Drawable drawable = this.f10020c;
            return drawable != null ? drawable.getIntrinsicHeight() : -1;
        }
        if (!abstractC2985c.f10053m) {
            abstractC2985c.m2786b();
        }
        return abstractC2985c.f10055o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        AbstractC2985c abstractC2985c = this.f10018a;
        if (!abstractC2985c.f10052l) {
            Drawable drawable = this.f10020c;
            return drawable != null ? drawable.getIntrinsicWidth() : -1;
        }
        if (!abstractC2985c.f10053m) {
            abstractC2985c.m2786b();
        }
        return abstractC2985c.f10054n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        AbstractC2985c abstractC2985c = this.f10018a;
        if (!abstractC2985c.f10052l) {
            Drawable drawable = this.f10020c;
            return drawable != null ? drawable.getMinimumHeight() : 0;
        }
        if (!abstractC2985c.f10053m) {
            abstractC2985c.m2786b();
        }
        return abstractC2985c.f10057q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        AbstractC2985c abstractC2985c = this.f10018a;
        if (!abstractC2985c.f10052l) {
            Drawable drawable = this.f10020c;
            return drawable != null ? drawable.getMinimumWidth() : 0;
        }
        if (!abstractC2985c.f10053m) {
            abstractC2985c.m2786b();
        }
        return abstractC2985c.f10056p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f10020c;
        int i = -2;
        if (drawable != null) {
            if (!drawable.isVisible()) {
                i = -2;
            } else {
                AbstractC2985c abstractC2985c = this.f10018a;
                if (abstractC2985c.f10058r) {
                    i = abstractC2985c.f10059s;
                } else {
                    abstractC2985c.m2785c();
                    int i2 = abstractC2985c.f10048h;
                    Drawable[] drawableArr = abstractC2985c.f10047g;
                    i = -2;
                    if (i2 > 0) {
                        i = drawableArr[0].getOpacity();
                    }
                    for (int i3 = 1; i3 < i2; i3++) {
                        i = Drawable.resolveOpacity(i, drawableArr[i3].getOpacity());
                    }
                    abstractC2985c.f10059s = i;
                    abstractC2985c.f10058r = true;
                }
            }
        }
        return i;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f10020c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        AbstractC2985c abstractC2985c = this.f10018a;
        Rect rect2 = null;
        if (abstractC2985c.f10049i) {
            rect2 = null;
        } else {
            Rect rect3 = abstractC2985c.f10051k;
            if (rect3 != null || abstractC2985c.f10050j) {
                rect2 = rect3;
            } else {
                abstractC2985c.m2785c();
                Rect rect4 = new Rect();
                int i = abstractC2985c.f10048h;
                Drawable[] drawableArr = abstractC2985c.f10047g;
                int i2 = 0;
                while (i2 < i) {
                    Rect rect5 = rect2;
                    if (drawableArr[i2].getPadding(rect4)) {
                        Rect rect6 = rect2;
                        if (rect2 == null) {
                            rect6 = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect4.left;
                        if (i3 > rect6.left) {
                            rect6.left = i3;
                        }
                        int i4 = rect4.top;
                        if (i4 > rect6.top) {
                            rect6.top = i4;
                        }
                        int i5 = rect4.right;
                        if (i5 > rect6.right) {
                            rect6.right = i5;
                        }
                        int i6 = rect4.bottom;
                        rect5 = rect6;
                        if (i6 > rect6.bottom) {
                            rect6.bottom = i6;
                            rect5 = rect6;
                        }
                    }
                    i2++;
                    rect2 = rect5;
                }
                abstractC2985c.f10050j = true;
                abstractC2985c.f10051k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            z = (((rect2.left | rect2.top) | rect2.bottom) | rect2.right) != 0;
        } else {
            Drawable drawable = this.f10020c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.f10018a.f10034C && C2789a.m3013b(this) == 1) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        AbstractC2985c abstractC2985c = this.f10018a;
        if (abstractC2985c != null) {
            abstractC2985c.f10058r = false;
            abstractC2985c.f10060t = false;
        }
        if (drawable != this.f10020c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f10018a.f10034C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f10021d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f10021d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f10020c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f10023f) {
                this.f10020c.setAlpha(this.f10022e);
            }
        }
        if (this.f10028k != 0) {
            this.f10028k = 0L;
            z = true;
        }
        if (this.f10027j != 0) {
            this.f10027j = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f10025h && super.mutate() == this) {
            AbstractC2985c mo2781b = mo2781b();
            mo2781b.mo2778e();
            mo2780e(mo2781b);
            this.f10025h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f10021d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f10020c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        AbstractC2985c abstractC2985c = this.f10018a;
        int i2 = this.f10024g;
        int i3 = abstractC2985c.f10048h;
        Drawable[] drawableArr = abstractC2985c.f10047g;
        int i4 = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i4 >= i3) {
                abstractC2985c.f10066z = i;
                return z2;
            }
            boolean z3 = z2;
            if (drawableArr[i4] != null) {
                boolean m3012c = Build.VERSION.SDK_INT >= 23 ? C2789a.m3012c(drawableArr[i4], i) : false;
                z3 = z2;
                if (i4 == i2) {
                    z3 = m3012c;
                }
            }
            i4++;
            z = z3;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f10021d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f10020c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f10021d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f10020c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f10020c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f10023f || this.f10022e != i) {
            this.f10023f = true;
            this.f10022e = i;
            Drawable drawable = this.f10020c;
            if (drawable == null) {
                return;
            }
            if (this.f10027j == 0) {
                drawable.setAlpha(i);
            } else {
                m2790a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        AbstractC2985c abstractC2985c = this.f10018a;
        if (abstractC2985c.f10034C != z) {
            abstractC2985c.f10034C = z;
            Drawable drawable = this.f10020c;
            if (drawable == null) {
                return;
            }
            drawable.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC2985c abstractC2985c = this.f10018a;
        abstractC2985c.f10036E = true;
        if (abstractC2985c.f10035D != colorFilter) {
            abstractC2985c.f10035D = colorFilter;
            Drawable drawable = this.f10020c;
            if (drawable == null) {
                return;
            }
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        AbstractC2985c abstractC2985c = this.f10018a;
        if (abstractC2985c.f10064x != z) {
            abstractC2985c.f10064x = z;
            Drawable drawable = this.f10020c;
            if (drawable == null) {
                return;
            }
            drawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f10020c;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f10019b;
        if (rect == null) {
            this.f10019b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f10020c;
        if (drawable != null) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        AbstractC2985c abstractC2985c = this.f10018a;
        abstractC2985c.f10039H = true;
        if (abstractC2985c.f10037F != colorStateList) {
            abstractC2985c.f10037F = colorStateList;
            C2789a.m3010e(this.f10020c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC2985c abstractC2985c = this.f10018a;
        abstractC2985c.f10040I = true;
        if (abstractC2985c.f10038G != mode) {
            abstractC2985c.f10038G = mode;
            C2789a.m3009f(this.f10020c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f10021d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f10020c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f10020c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
