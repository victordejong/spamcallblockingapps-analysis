package androidx.appcompat.b.a;

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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b.class */
public class b extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    private AbstractC0022b f713a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f714b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f715c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f716d;
    private boolean f;
    private boolean h;
    private Runnable i;
    private long j;
    private long k;
    private a l;
    private int e = 255;
    private int g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$a.class */
    public static final class a implements Drawable.Callback {

        /* renamed from: a  reason: collision with root package name */
        Drawable.Callback f718a;

        a() {
        }

        public final Drawable.Callback a() {
            Drawable.Callback callback = this.f718a;
            this.f718a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f718a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f718a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$b.class */
    public static abstract class AbstractC0022b extends Drawable.ConstantState {
        boolean A;
        int B;
        int C;
        int D;
        boolean E;
        ColorFilter F;
        boolean G;
        ColorStateList H;
        PorterDuff.Mode I;
        boolean J;
        boolean K;

        /* renamed from: c  reason: collision with root package name */
        final b f719c;

        /* renamed from: d  reason: collision with root package name */
        Resources f720d;
        int e;
        int f;
        int g;
        SparseArray<Drawable.ConstantState> h;
        Drawable[] i;
        int j;
        boolean k;
        boolean l;
        Rect m;
        boolean n;
        boolean o;
        int p;
        int q;
        int r;
        int s;
        boolean t;
        int u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        boolean z;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0022b(AbstractC0022b bVar, b bVar2, Resources resources) {
            this.e = 160;
            this.k = false;
            this.n = false;
            this.z = true;
            this.C = 0;
            this.D = 0;
            this.f719c = bVar2;
            this.f720d = resources != null ? resources : bVar != null ? bVar.f720d : null;
            int a2 = b.a(resources, bVar != null ? bVar.e : 0);
            this.e = a2;
            if (bVar != null) {
                this.f = bVar.f;
                this.g = bVar.g;
                this.x = true;
                this.y = true;
                this.k = bVar.k;
                this.n = bVar.n;
                this.z = bVar.z;
                this.A = bVar.A;
                this.B = bVar.B;
                this.C = bVar.C;
                this.D = bVar.D;
                this.E = bVar.E;
                this.F = bVar.F;
                this.G = bVar.G;
                this.H = bVar.H;
                this.I = bVar.I;
                this.J = bVar.J;
                this.K = bVar.K;
                if (bVar.e == a2) {
                    if (bVar.l) {
                        this.m = new Rect(bVar.m);
                        this.l = true;
                    }
                    if (bVar.o) {
                        this.p = bVar.p;
                        this.q = bVar.q;
                        this.r = bVar.r;
                        this.s = bVar.s;
                        this.o = true;
                    }
                }
                if (bVar.t) {
                    this.u = bVar.u;
                    this.t = true;
                }
                if (bVar.v) {
                    this.w = bVar.w;
                    this.v = true;
                }
                Drawable[] drawableArr = bVar.i;
                this.i = new Drawable[drawableArr.length];
                this.j = bVar.j;
                SparseArray<Drawable.ConstantState> sparseArray = bVar.h;
                if (sparseArray != null) {
                    this.h = sparseArray.clone();
                } else {
                    this.h = new SparseArray<>(this.j);
                }
                int i = this.j;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.h.put(i2, constantState);
                        } else {
                            this.i[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.i = new Drawable[10];
            this.j = 0;
        }

        private Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f719c);
            return mutate;
        }

        public final int a(Drawable drawable) {
            int i = this.j;
            if (i >= this.i.length) {
                b(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f719c);
            this.i[i] = drawable;
            this.j++;
            this.g = drawable.getChangingConfigurations() | this.g;
            b();
            this.m = null;
            this.l = false;
            this.o = false;
            this.x = false;
            return i;
        }

        void a() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.A = true;
        }

        final void a(Resources resources) {
            if (resources != null) {
                this.f720d = resources;
                int a2 = b.a(resources, this.e);
                int i = this.e;
                this.e = a2;
                if (i != a2) {
                    this.o = false;
                    this.l = false;
                }
            }
        }

        public final Drawable b(int i) {
            int indexOfKey;
            Drawable drawable = this.i[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.h;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable b2 = b(this.h.valueAt(indexOfKey).newDrawable(this.f720d));
            this.i[i] = b2;
            this.h.removeAt(indexOfKey);
            if (this.h.size() == 0) {
                this.h = null;
            }
            return b2;
        }

        final void b() {
            this.t = false;
            this.v = false;
        }

        public void b(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.i, 0, drawableArr, 0, i);
            this.i = drawableArr;
        }

        final void c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.h;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.i[this.h.keyAt(i)] = b(this.h.valueAt(i).newDrawable(this.f720d));
                }
                this.h = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.h.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        void d() {
            this.o = true;
            c();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            this.q = -1;
            this.p = -1;
            this.s = 0;
            this.r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.p) {
                    this.p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.q) {
                    this.q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.r) {
                    this.r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.s) {
                    this.s = minimumHeight;
                }
            }
        }

        public final boolean e() {
            synchronized (this) {
                if (this.x) {
                    return this.y;
                }
                c();
                this.x = true;
                int i = this.j;
                Drawable[] drawableArr = this.i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        this.y = false;
                        return false;
                    }
                }
                this.y = true;
                return true;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f | this.g;
        }
    }

    static int a(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    private void a(Drawable drawable) {
        if (this.l == null) {
            this.l = new a();
        }
        a aVar = this.l;
        aVar.f718a = drawable.getCallback();
        drawable.setCallback(aVar);
        try {
            if (this.f713a.C <= 0 && this.f) {
                drawable.setAlpha(this.e);
            }
            if (this.f713a.G) {
                drawable.setColorFilter(this.f713a.F);
            } else {
                if (this.f713a.J) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f713a.H);
                }
                if (this.f713a.K) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f713a.I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f713a.z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f713a.E);
            }
            Rect rect = this.f714b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.l.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Resources resources) {
        this.f713a.a(resources);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AbstractC0022b bVar) {
        this.f713a = bVar;
        int i = this.g;
        if (i >= 0) {
            Drawable b2 = bVar.b(i);
            this.f715c = b2;
            if (b2 != null) {
                a(b2);
            }
        }
        this.f716d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void a(boolean r8) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.b.a.b.a(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i) {
        if (i == this.g) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f713a.D > 0) {
            Drawable drawable = this.f716d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f715c;
            if (drawable2 != null) {
                this.f716d = drawable2;
                this.k = this.f713a.D + uptimeMillis;
            } else {
                this.f716d = null;
                this.k = 0L;
            }
        } else {
            Drawable drawable3 = this.f715c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i < 0 || i >= this.f713a.j) {
            this.f715c = null;
            this.g = -1;
        } else {
            Drawable b2 = this.f713a.b(i);
            this.f715c = b2;
            this.g = i;
            if (b2 != null) {
                if (this.f713a.C > 0) {
                    this.j = uptimeMillis + this.f713a.C;
                }
                a(b2);
            }
        }
        if (!(this.j == 0 && this.k == 0)) {
            Runnable runnable = this.i;
            if (runnable == null) {
                this.i = new Runnable() { // from class: androidx.appcompat.b.a.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.a(true);
                        b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        AbstractC0022b bVar = this.f713a;
        if (theme != null) {
            bVar.c();
            int i = bVar.j;
            Drawable[] drawableArr = bVar.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                    drawableArr[i2].applyTheme(theme);
                    bVar.g |= drawableArr[i2].getChangingConfigurations();
                }
            }
            bVar.a(theme.getResources());
        }
    }

    AbstractC0022b b() {
        return this.f713a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        return this.g;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f713a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f715c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f716d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f713a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f713a.e()) {
            return null;
        }
        this.f713a.f = getChangingConfigurations();
        return this.f713a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f715c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f714b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f713a.n) {
            AbstractC0022b bVar = this.f713a;
            if (!bVar.o) {
                bVar.d();
            }
            return bVar.q;
        }
        Drawable drawable = this.f715c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f713a.n) {
            AbstractC0022b bVar = this.f713a;
            if (!bVar.o) {
                bVar.d();
            }
            return bVar.p;
        }
        Drawable drawable = this.f715c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f713a.n) {
            AbstractC0022b bVar = this.f713a;
            if (!bVar.o) {
                bVar.d();
            }
            return bVar.s;
        }
        Drawable drawable = this.f715c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f713a.n) {
            AbstractC0022b bVar = this.f713a;
            if (!bVar.o) {
                bVar.d();
            }
            return bVar.r;
        }
        Drawable drawable = this.f715c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f715c;
        int i = -2;
        int i2 = -2;
        if (drawable != null) {
            if (!drawable.isVisible()) {
                i2 = -2;
            } else {
                AbstractC0022b bVar = this.f713a;
                if (bVar.t) {
                    return bVar.u;
                }
                bVar.c();
                int i3 = bVar.j;
                Drawable[] drawableArr = bVar.i;
                if (i3 > 0) {
                    i = drawableArr[0].getOpacity();
                }
                for (int i4 = 1; i4 < i3; i4++) {
                    i = Drawable.resolveOpacity(i, drawableArr[i4].getOpacity());
                }
                bVar.u = i;
                bVar.t = true;
                i2 = i;
            }
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f715c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        AbstractC0022b bVar = this.f713a;
        r12 = null;
        Rect rect2 = null;
        boolean z2 = true;
        if (!bVar.k) {
            if (bVar.m != null || bVar.l) {
                rect2 = bVar.m;
            } else {
                bVar.c();
                Rect rect3 = new Rect();
                int i = bVar.j;
                Drawable[] drawableArr = bVar.i;
                for (int i2 = 0; i2 < i; i2++) {
                    rect2 = rect2;
                    if (drawableArr[i2].getPadding(rect3)) {
                        Rect rect4 = rect2;
                        if (rect2 == null) {
                            rect4 = new Rect(0, 0, 0, 0);
                        }
                        if (rect3.left > rect4.left) {
                            rect4.left = rect3.left;
                        }
                        if (rect3.top > rect4.top) {
                            rect4.top = rect3.top;
                        }
                        if (rect3.right > rect4.right) {
                            rect4.right = rect3.right;
                        }
                        rect2 = rect4;
                        if (rect3.bottom > rect4.bottom) {
                            rect4.bottom = rect3.bottom;
                            rect2 = rect4;
                        }
                    }
                }
                bVar.l = true;
                bVar.m = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            z = (((rect2.left | rect2.top) | rect2.bottom) | rect2.right) != 0;
        } else {
            Drawable drawable = this.f715c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (!isAutoMirrored() || androidx.core.graphics.drawable.a.h(this) != 1) {
            z2 = false;
        }
        if (z2) {
            int i3 = rect.left;
            rect.left = rect.right;
            rect.right = i3;
        }
        return z;
    }

    public void invalidateDrawable(Drawable drawable) {
        AbstractC0022b bVar = this.f713a;
        if (bVar != null) {
            bVar.b();
        }
        if (drawable == this.f715c && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f713a.E;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        AbstractC0022b bVar = this.f713a;
        if (bVar.v) {
            return bVar.w;
        }
        bVar.c();
        int i = bVar.j;
        Drawable[] drawableArr = bVar.i;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            } else if (drawableArr[i2].isStateful()) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        bVar.w = z;
        bVar.v = true;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        Drawable drawable = this.f716d;
        boolean z = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f716d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f715c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f) {
                this.f715c.setAlpha(this.e);
            }
        }
        if (this.k != 0) {
            this.k = 0L;
            z = true;
        }
        if (this.j != 0) {
            this.j = 0L;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.h && super.mutate() == this) {
            AbstractC0022b b2 = b();
            b2.a();
            a(b2);
            this.h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f716d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f715c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        AbstractC0022b bVar = this.f713a;
        int i2 = this.g;
        int i3 = bVar.j;
        Drawable[] drawableArr = bVar.i;
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
        bVar.B = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f716d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f715c;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f716d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f715c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.f715c && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f || this.e != i) {
            this.f = true;
            this.e = i;
            Drawable drawable = this.f715c;
            if (drawable == null) {
                return;
            }
            if (this.j == 0) {
                drawable.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f713a.E != z) {
            this.f713a.E = z;
            Drawable drawable = this.f715c;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.a(drawable, this.f713a.E);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f713a.G = true;
        if (this.f713a.F != colorFilter) {
            this.f713a.F = colorFilter;
            Drawable drawable = this.f715c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.f713a.z != z) {
            this.f713a.z = z;
            Drawable drawable = this.f715c;
            if (drawable != null) {
                drawable.setDither(this.f713a.z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f715c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f714b;
        if (rect == null) {
            this.f714b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f715c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.f713a.J = true;
        if (this.f713a.H != colorStateList) {
            this.f713a.H = colorStateList;
            androidx.core.graphics.drawable.a.a(this.f715c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f713a.K = true;
        if (this.f713a.I != mode) {
            this.f713a.I = mode;
            androidx.core.graphics.drawable.a.a(this.f715c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f716d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f715c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.f715c && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
