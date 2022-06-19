package p1727n3.p1734b.p1738c.p1739a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.SparseArray;
import java.util.Objects;
import p1727n3.p1734b.p1738c.p1739a.C25447e;
/* renamed from: n3.b.c.a.b */
/* loaded from: classes-dex2jar.jar:n3/b/c/a/b.class */
public class C25441b extends Drawable implements Drawable.Callback {

    /* renamed from: m */
    public static final /* synthetic */ int f71027m = 0;

    /* renamed from: a */
    public AbstractC25444c f71028a;

    /* renamed from: b */
    public Rect f71029b;

    /* renamed from: c */
    public Drawable f71030c;

    /* renamed from: d */
    public Drawable f71031d;

    /* renamed from: f */
    public boolean f71033f;

    /* renamed from: h */
    public boolean f71035h;

    /* renamed from: i */
    public Runnable f71036i;

    /* renamed from: j */
    public long f71037j;

    /* renamed from: k */
    public long f71038k;

    /* renamed from: l */
    public C25443b f71039l;

    /* renamed from: e */
    public int f71032e = 255;

    /* renamed from: g */
    public int f71034g = -1;

    /* renamed from: n3.b.c.a.b$a */
    /* loaded from: classes-dex2jar.jar:n3/b/c/a/b$a.class */
    public class RunnableC25442a implements Runnable {
        public RunnableC25442a() {
            C25441b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C25441b.this.m3535a(true);
            C25441b.this.invalidateSelf();
        }
    }

    /* renamed from: n3.b.c.a.b$b */
    /* loaded from: classes-dex2jar.jar:n3/b/c/a/b$b.class */
    public static class C25443b implements Drawable.Callback {

        /* renamed from: a */
        public Drawable.Callback f71041a;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f71041a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f71041a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: n3.b.c.a.b$c */
    /* loaded from: classes-dex2jar.jar:n3/b/c/a/b$c.class */
    public static abstract class AbstractC25444c extends Drawable.ConstantState {

        /* renamed from: A */
        public int f71042A;

        /* renamed from: B */
        public int f71043B;

        /* renamed from: C */
        public boolean f71044C;

        /* renamed from: D */
        public ColorFilter f71045D;

        /* renamed from: E */
        public boolean f71046E;

        /* renamed from: F */
        public ColorStateList f71047F;

        /* renamed from: G */
        public PorterDuff.Mode f71048G;

        /* renamed from: H */
        public boolean f71049H;

        /* renamed from: I */
        public boolean f71050I;

        /* renamed from: a */
        public final C25441b f71051a;

        /* renamed from: b */
        public Resources f71052b;

        /* renamed from: c */
        public int f71053c;

        /* renamed from: d */
        public int f71054d;

        /* renamed from: e */
        public int f71055e;

        /* renamed from: f */
        public SparseArray<Drawable.ConstantState> f71056f;

        /* renamed from: g */
        public Drawable[] f71057g;

        /* renamed from: h */
        public int f71058h;

        /* renamed from: i */
        public boolean f71059i;

        /* renamed from: j */
        public boolean f71060j;

        /* renamed from: k */
        public Rect f71061k;

        /* renamed from: l */
        public boolean f71062l;

        /* renamed from: m */
        public boolean f71063m;

        /* renamed from: n */
        public int f71064n;

        /* renamed from: o */
        public int f71065o;

        /* renamed from: p */
        public int f71066p;

        /* renamed from: q */
        public int f71067q;

        /* renamed from: r */
        public boolean f71068r;

        /* renamed from: s */
        public int f71069s;

        /* renamed from: t */
        public boolean f71070t;

        /* renamed from: u */
        public boolean f71071u;

        /* renamed from: v */
        public boolean f71072v;

        /* renamed from: w */
        public boolean f71073w;

        /* renamed from: x */
        public boolean f71074x;

        /* renamed from: y */
        public boolean f71075y;

        /* renamed from: z */
        public int f71076z;

        public AbstractC25444c(AbstractC25444c abstractC25444c, C25441b c25441b, Resources resources) {
            this.f71059i = false;
            this.f71062l = false;
            this.f71074x = true;
            this.f71042A = 0;
            this.f71043B = 0;
            this.f71051a = c25441b;
            this.f71052b = resources != null ? resources : abstractC25444c != null ? abstractC25444c.f71052b : null;
            int i = abstractC25444c != null ? abstractC25444c.f71053c : 0;
            int i2 = C25441b.f71027m;
            i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
            int i3 = i == 0 ? 160 : i;
            this.f71053c = i3;
            if (abstractC25444c == null) {
                this.f71057g = new Drawable[10];
                this.f71058h = 0;
                return;
            }
            this.f71054d = abstractC25444c.f71054d;
            this.f71055e = abstractC25444c.f71055e;
            this.f71072v = true;
            this.f71073w = true;
            this.f71059i = abstractC25444c.f71059i;
            this.f71062l = abstractC25444c.f71062l;
            this.f71074x = abstractC25444c.f71074x;
            this.f71075y = abstractC25444c.f71075y;
            this.f71076z = abstractC25444c.f71076z;
            this.f71042A = abstractC25444c.f71042A;
            this.f71043B = abstractC25444c.f71043B;
            this.f71044C = abstractC25444c.f71044C;
            this.f71045D = abstractC25444c.f71045D;
            this.f71046E = abstractC25444c.f71046E;
            this.f71047F = abstractC25444c.f71047F;
            this.f71048G = abstractC25444c.f71048G;
            this.f71049H = abstractC25444c.f71049H;
            this.f71050I = abstractC25444c.f71050I;
            if (abstractC25444c.f71053c == i3) {
                if (abstractC25444c.f71060j) {
                    this.f71061k = abstractC25444c.f71061k != null ? new Rect(abstractC25444c.f71061k) : null;
                    this.f71060j = true;
                }
                if (abstractC25444c.f71063m) {
                    this.f71064n = abstractC25444c.f71064n;
                    this.f71065o = abstractC25444c.f71065o;
                    this.f71066p = abstractC25444c.f71066p;
                    this.f71067q = abstractC25444c.f71067q;
                    this.f71063m = true;
                }
            }
            if (abstractC25444c.f71068r) {
                this.f71069s = abstractC25444c.f71069s;
                this.f71068r = true;
            }
            if (abstractC25444c.f71070t) {
                this.f71071u = abstractC25444c.f71071u;
                this.f71070t = true;
            }
            Drawable[] drawableArr = abstractC25444c.f71057g;
            this.f71057g = new Drawable[drawableArr.length];
            this.f71058h = abstractC25444c.f71058h;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC25444c.f71056f;
            if (sparseArray != null) {
                this.f71056f = sparseArray.clone();
            } else {
                this.f71056f = new SparseArray<>(this.f71058h);
            }
            int i4 = this.f71058h;
            for (int i5 = 0; i5 < i4; i5++) {
                if (drawableArr[i5] != null) {
                    Drawable.ConstantState constantState = drawableArr[i5].getConstantState();
                    if (constantState != null) {
                        this.f71056f.put(i5, constantState);
                    } else {
                        this.f71057g[i5] = drawableArr[i5];
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v32, types: [int[], int[][], java.lang.Object] */
        /* renamed from: a */
        public final int m3532a(Drawable drawable) {
            int i = this.f71058h;
            if (i >= this.f71057g.length) {
                int i2 = i + 10;
                C25447e.C25448a c25448a = (C25447e.C25448a) this;
                Drawable[] drawableArr = new Drawable[i2];
                Drawable[] drawableArr2 = c25448a.f71057g;
                if (drawableArr2 != null) {
                    System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
                }
                c25448a.f71057g = drawableArr;
                ?? r0 = new int[i2];
                System.arraycopy(c25448a.f71093J, 0, r0, 0, i);
                c25448a.f71093J = r0;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f71051a);
            this.f71057g[i] = drawable;
            this.f71058h++;
            this.f71055e = drawable.getChangingConfigurations() | this.f71055e;
            this.f71068r = false;
            this.f71070t = false;
            this.f71061k = null;
            this.f71060j = false;
            this.f71063m = false;
            this.f71072v = false;
            return i;
        }

        /* renamed from: b */
        public void m3531b() {
            this.f71063m = true;
            m3530c();
            int i = this.f71058h;
            Drawable[] drawableArr = this.f71057g;
            this.f71065o = -1;
            this.f71064n = -1;
            this.f71067q = 0;
            this.f71066p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f71064n) {
                    this.f71064n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f71065o) {
                    this.f71065o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f71066p) {
                    this.f71066p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f71067q) {
                    this.f71067q = minimumHeight;
                }
            }
        }

        /* renamed from: c */
        public final void m3530c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f71056f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.f71056f.keyAt(i);
                    Drawable.ConstantState valueAt = this.f71056f.valueAt(i);
                    Drawable[] drawableArr = this.f71057g;
                    Drawable newDrawable = valueAt.newDrawable(this.f71052b);
                    newDrawable.setLayoutDirection(this.f71076z);
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.f71051a);
                    drawableArr[keyAt] = mutate;
                }
                this.f71056f = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f71058h;
            Drawable[] drawableArr = this.f71057g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f71056f.get(i2);
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
        public final Drawable m3529d(int i) {
            int indexOfKey;
            Drawable drawable = this.f71057g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f71056f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable newDrawable = this.f71056f.valueAt(indexOfKey).newDrawable(this.f71052b);
            newDrawable.setLayoutDirection(this.f71076z);
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.f71051a);
            this.f71057g[i] = mutate;
            this.f71056f.removeAt(indexOfKey);
            if (this.f71056f.size() == 0) {
                this.f71056f = null;
            }
            return mutate;
        }

        /* renamed from: e */
        public abstract void mo3523e();

        /* renamed from: f */
        public final void m3528f(Resources resources) {
            if (resources != null) {
                this.f71052b = resources;
                int i = C25441b.f71027m;
                int i2 = resources.getDisplayMetrics().densityDpi;
                int i3 = i2;
                if (i2 == 0) {
                    i3 = 160;
                }
                int i4 = this.f71053c;
                this.f71053c = i3;
                if (i4 == i3) {
                    return;
                }
                this.f71063m = false;
                this.f71060j = false;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f71054d | this.f71055e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3535a(boolean r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1738c.p1739a.C25441b.m3535a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        AbstractC25444c abstractC25444c = this.f71028a;
        Objects.requireNonNull(abstractC25444c);
        if (theme != null) {
            abstractC25444c.m3530c();
            int i = abstractC25444c.f71058h;
            Drawable[] drawableArr = abstractC25444c.f71057g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                    drawableArr[i2].applyTheme(theme);
                    abstractC25444c.f71055e |= drawableArr[i2].getChangingConfigurations();
                }
            }
            abstractC25444c.m3528f(theme.getResources());
        }
    }

    /* renamed from: b */
    public AbstractC25444c mo3526b() {
        throw null;
    }

    /* renamed from: c */
    public final void m3534c(Drawable drawable) {
        if (this.f71039l == null) {
            this.f71039l = new C25443b();
        }
        C25443b c25443b = this.f71039l;
        c25443b.f71041a = drawable.getCallback();
        drawable.setCallback(c25443b);
        try {
            if (this.f71028a.f71042A <= 0 && this.f71033f) {
                drawable.setAlpha(this.f71032e);
            }
            AbstractC25444c abstractC25444c = this.f71028a;
            if (abstractC25444c.f71046E) {
                drawable.setColorFilter(abstractC25444c.f71045D);
            } else {
                if (abstractC25444c.f71049H) {
                    drawable.setTintList(abstractC25444c.f71047F);
                }
                AbstractC25444c abstractC25444c2 = this.f71028a;
                if (abstractC25444c2.f71050I) {
                    drawable.setTintMode(abstractC25444c2.f71048G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f71028a.f71074x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            drawable.setLayoutDirection(getLayoutDirection());
            drawable.setAutoMirrored(this.f71028a.f71044C);
            Rect rect = this.f71029b;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            C25443b c25443b2 = this.f71039l;
            Drawable.Callback callback = c25443b2.f71041a;
            c25443b2.f71041a = null;
            drawable.setCallback(callback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f71028a.canApplyTheme();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3533d(int r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1738c.p1739a.C25441b.m3533d(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f71030c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f71031d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* renamed from: e */
    public void mo3525e(AbstractC25444c abstractC25444c) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f71032e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f71028a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        AbstractC25444c abstractC25444c = this.f71028a;
        boolean z = true;
        if (!abstractC25444c.f71072v) {
            abstractC25444c.m3530c();
            abstractC25444c.f71072v = true;
            int i = abstractC25444c.f71058h;
            Drawable[] drawableArr = abstractC25444c.f71057g;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    abstractC25444c.f71073w = true;
                    break;
                } else if (drawableArr[i2].getConstantState() == null) {
                    abstractC25444c.f71073w = false;
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
        } else {
            z = abstractC25444c.f71073w;
        }
        if (z) {
            this.f71028a.f71054d = getChangingConfigurations();
            return this.f71028a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f71030c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f71029b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        AbstractC25444c abstractC25444c = this.f71028a;
        if (!abstractC25444c.f71062l) {
            Drawable drawable = this.f71030c;
            return drawable != null ? drawable.getIntrinsicHeight() : -1;
        }
        if (!abstractC25444c.f71063m) {
            abstractC25444c.m3531b();
        }
        return abstractC25444c.f71065o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        AbstractC25444c abstractC25444c = this.f71028a;
        if (!abstractC25444c.f71062l) {
            Drawable drawable = this.f71030c;
            return drawable != null ? drawable.getIntrinsicWidth() : -1;
        }
        if (!abstractC25444c.f71063m) {
            abstractC25444c.m3531b();
        }
        return abstractC25444c.f71064n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        AbstractC25444c abstractC25444c = this.f71028a;
        if (!abstractC25444c.f71062l) {
            Drawable drawable = this.f71030c;
            return drawable != null ? drawable.getMinimumHeight() : 0;
        }
        if (!abstractC25444c.f71063m) {
            abstractC25444c.m3531b();
        }
        return abstractC25444c.f71067q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        AbstractC25444c abstractC25444c = this.f71028a;
        if (!abstractC25444c.f71062l) {
            Drawable drawable = this.f71030c;
            return drawable != null ? drawable.getMinimumWidth() : 0;
        }
        if (!abstractC25444c.f71063m) {
            abstractC25444c.m3531b();
        }
        return abstractC25444c.f71066p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f71030c;
        int i = -2;
        if (drawable != null) {
            if (!drawable.isVisible()) {
                i = -2;
            } else {
                AbstractC25444c abstractC25444c = this.f71028a;
                if (abstractC25444c.f71068r) {
                    i = abstractC25444c.f71069s;
                } else {
                    abstractC25444c.m3530c();
                    int i2 = abstractC25444c.f71058h;
                    Drawable[] drawableArr = abstractC25444c.f71057g;
                    i = -2;
                    if (i2 > 0) {
                        i = drawableArr[0].getOpacity();
                    }
                    for (int i3 = 1; i3 < i2; i3++) {
                        i = Drawable.resolveOpacity(i, drawableArr[i3].getOpacity());
                    }
                    abstractC25444c.f71069s = i;
                    abstractC25444c.f71068r = true;
                }
            }
        }
        return i;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f71030c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        AbstractC25444c abstractC25444c = this.f71028a;
        Rect rect2 = null;
        if (abstractC25444c.f71059i) {
            rect2 = null;
        } else {
            Rect rect3 = abstractC25444c.f71061k;
            if (rect3 != null || abstractC25444c.f71060j) {
                rect2 = rect3;
            } else {
                abstractC25444c.m3530c();
                Rect rect4 = new Rect();
                int i = abstractC25444c.f71058h;
                Drawable[] drawableArr = abstractC25444c.f71057g;
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
                abstractC25444c.f71060j = true;
                abstractC25444c.f71061k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            z = (((rect2.left | rect2.top) | rect2.bottom) | rect2.right) != 0;
        } else {
            Drawable drawable = this.f71030c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        boolean z2 = false;
        if (this.f71028a.f71044C) {
            z2 = false;
            if (getLayoutDirection() == 1) {
                z2 = true;
            }
        }
        if (z2) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        AbstractC25444c abstractC25444c = this.f71028a;
        if (abstractC25444c != null) {
            abstractC25444c.f71068r = false;
            abstractC25444c.f71070t = false;
        }
        if (drawable != this.f71030c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f71028a.f71044C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f71031d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f71031d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f71030c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f71033f) {
                this.f71030c.setAlpha(this.f71032e);
            }
        }
        if (this.f71038k != 0) {
            this.f71038k = 0L;
            z = true;
        }
        if (this.f71037j != 0) {
            this.f71037j = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f71035h && super.mutate() == this) {
            AbstractC25444c mo3526b = mo3526b();
            mo3526b.mo3523e();
            mo3525e(mo3526b);
            this.f71035h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f71031d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f71030c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        AbstractC25444c abstractC25444c = this.f71028a;
        int i2 = this.f71034g;
        int i3 = abstractC25444c.f71058h;
        Drawable[] drawableArr = abstractC25444c.f71057g;
        int i4 = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i4 >= i3) {
                abstractC25444c.f71076z = i;
                return z2;
            }
            boolean z3 = z2;
            if (drawableArr[i4] != null) {
                boolean layoutDirection = drawableArr[i4].setLayoutDirection(i);
                z3 = z2;
                if (i4 == i2) {
                    z3 = layoutDirection;
                }
            }
            i4++;
            z = z3;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f71031d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f71030c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f71031d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f71030c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f71030c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f71033f || this.f71032e != i) {
            this.f71033f = true;
            this.f71032e = i;
            Drawable drawable = this.f71030c;
            if (drawable == null) {
                return;
            }
            if (this.f71037j == 0) {
                drawable.setAlpha(i);
            } else {
                m3535a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        AbstractC25444c abstractC25444c = this.f71028a;
        if (abstractC25444c.f71044C != z) {
            abstractC25444c.f71044C = z;
            Drawable drawable = this.f71030c;
            if (drawable == null) {
                return;
            }
            drawable.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC25444c abstractC25444c = this.f71028a;
        abstractC25444c.f71046E = true;
        if (abstractC25444c.f71045D != colorFilter) {
            abstractC25444c.f71045D = colorFilter;
            Drawable drawable = this.f71030c;
            if (drawable == null) {
                return;
            }
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        AbstractC25444c abstractC25444c = this.f71028a;
        if (abstractC25444c.f71074x != z) {
            abstractC25444c.f71074x = z;
            Drawable drawable = this.f71030c;
            if (drawable == null) {
                return;
            }
            drawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f71030c;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f71029b;
        if (rect == null) {
            this.f71029b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f71030c;
        if (drawable != null) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        AbstractC25444c abstractC25444c = this.f71028a;
        abstractC25444c.f71049H = true;
        if (abstractC25444c.f71047F != colorStateList) {
            abstractC25444c.f71047F = colorStateList;
            MediaSessionCompat.m43185x1(this.f71030c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC25444c abstractC25444c = this.f71028a;
        abstractC25444c.f71050I = true;
        if (abstractC25444c.f71048G != mode) {
            abstractC25444c.f71048G = mode;
            MediaSessionCompat.m43182y1(this.f71030c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f71031d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f71030c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f71030c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
