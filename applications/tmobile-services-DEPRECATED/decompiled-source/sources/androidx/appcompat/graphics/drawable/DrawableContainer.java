package androidx.appcompat.graphics.drawable;

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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/DrawableContainer.class */
public class DrawableContainer extends Drawable implements Drawable.Callback {

    /* renamed from: f */
    private DrawableContainerState f374f;

    /* renamed from: g */
    private Rect f375g;

    /* renamed from: h */
    private Drawable f376h;

    /* renamed from: i */
    private Drawable f377i;

    /* renamed from: k */
    private boolean f379k;

    /* renamed from: m */
    private boolean f381m;

    /* renamed from: n */
    private Runnable f382n;

    /* renamed from: o */
    private long f383o;

    /* renamed from: p */
    private long f384p;

    /* renamed from: q */
    private BlockInvalidateCallback f385q;

    /* renamed from: j */
    private int f378j = 255;

    /* renamed from: l */
    private int f380l = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback.class */
    public static class BlockInvalidateCallback implements Drawable.Callback {

        /* renamed from: f */
        private Drawable.Callback f387f;

        BlockInvalidateCallback() {
        }

        /* renamed from: a */
        public Drawable.Callback m22035a() {
            Drawable.Callback callback = this.f387f;
            this.f387f = null;
            return callback;
        }

        /* renamed from: b */
        public BlockInvalidateCallback m22034b(Drawable.Callback callback) {
            this.f387f = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
            Drawable.Callback callback = this.f387f;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            Drawable.Callback callback = this.f387f;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState.class */
    public static abstract class DrawableContainerState extends Drawable.ConstantState {

        /* renamed from: A */
        int f388A;

        /* renamed from: B */
        int f389B;

        /* renamed from: C */
        boolean f390C;

        /* renamed from: D */
        ColorFilter f391D;

        /* renamed from: E */
        boolean f392E;

        /* renamed from: F */
        ColorStateList f393F;

        /* renamed from: G */
        PorterDuff.Mode f394G;

        /* renamed from: H */
        boolean f395H;

        /* renamed from: I */
        boolean f396I;

        /* renamed from: a */
        final DrawableContainer f397a;

        /* renamed from: b */
        Resources f398b;

        /* renamed from: c */
        int f399c;

        /* renamed from: d */
        int f400d;

        /* renamed from: e */
        int f401e;

        /* renamed from: f */
        SparseArray<Drawable.ConstantState> f402f;

        /* renamed from: g */
        Drawable[] f403g;

        /* renamed from: h */
        int f404h;

        /* renamed from: i */
        boolean f405i;

        /* renamed from: j */
        boolean f406j;

        /* renamed from: k */
        Rect f407k;

        /* renamed from: l */
        boolean f408l;

        /* renamed from: m */
        boolean f409m;

        /* renamed from: n */
        int f410n;

        /* renamed from: o */
        int f411o;

        /* renamed from: p */
        int f412p;

        /* renamed from: q */
        int f413q;

        /* renamed from: r */
        boolean f414r;

        /* renamed from: s */
        int f415s;

        /* renamed from: t */
        boolean f416t;

        /* renamed from: u */
        boolean f417u;

        /* renamed from: v */
        boolean f418v;

        /* renamed from: w */
        boolean f419w;

        /* renamed from: x */
        boolean f420x;

        /* renamed from: y */
        boolean f421y;

        /* renamed from: z */
        int f422z;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DrawableContainerState(DrawableContainerState drawableContainerState, DrawableContainer drawableContainer, Resources resources) {
            this.f399c = 160;
            this.f405i = false;
            this.f408l = false;
            this.f420x = true;
            this.f388A = 0;
            this.f389B = 0;
            this.f397a = drawableContainer;
            this.f398b = resources != null ? resources : drawableContainerState != null ? drawableContainerState.f398b : null;
            int f = DrawableContainer.m22038f(resources, drawableContainerState != null ? drawableContainerState.f399c : 0);
            this.f399c = f;
            if (drawableContainerState != null) {
                this.f400d = drawableContainerState.f400d;
                this.f401e = drawableContainerState.f401e;
                this.f418v = true;
                this.f419w = true;
                this.f405i = drawableContainerState.f405i;
                this.f408l = drawableContainerState.f408l;
                this.f420x = drawableContainerState.f420x;
                this.f421y = drawableContainerState.f421y;
                this.f422z = drawableContainerState.f422z;
                this.f388A = drawableContainerState.f388A;
                this.f389B = drawableContainerState.f389B;
                this.f390C = drawableContainerState.f390C;
                this.f391D = drawableContainerState.f391D;
                this.f392E = drawableContainerState.f392E;
                this.f393F = drawableContainerState.f393F;
                this.f394G = drawableContainerState.f394G;
                this.f395H = drawableContainerState.f395H;
                this.f396I = drawableContainerState.f396I;
                if (drawableContainerState.f399c == f) {
                    if (drawableContainerState.f406j) {
                        this.f407k = new Rect(drawableContainerState.f407k);
                        this.f406j = true;
                    }
                    if (drawableContainerState.f409m) {
                        this.f410n = drawableContainerState.f410n;
                        this.f411o = drawableContainerState.f411o;
                        this.f412p = drawableContainerState.f412p;
                        this.f413q = drawableContainerState.f413q;
                        this.f409m = true;
                    }
                }
                if (drawableContainerState.f414r) {
                    this.f415s = drawableContainerState.f415s;
                    this.f414r = true;
                }
                if (drawableContainerState.f416t) {
                    this.f417u = drawableContainerState.f417u;
                    this.f416t = true;
                }
                Drawable[] drawableArr = drawableContainerState.f403g;
                this.f403g = new Drawable[drawableArr.length];
                this.f404h = drawableContainerState.f404h;
                SparseArray<Drawable.ConstantState> sparseArray = drawableContainerState.f402f;
                if (sparseArray != null) {
                    this.f402f = sparseArray.clone();
                } else {
                    this.f402f = new SparseArray<>(this.f404h);
                }
                int i = this.f404h;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.f402f.put(i2, constantState);
                        } else {
                            this.f403g[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.f403g = new Drawable[10];
            this.f404h = 0;
        }

        /* renamed from: e */
        private void m22029e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f402f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f403g[this.f402f.keyAt(i)] = m22016t(this.f402f.valueAt(i).newDrawable(this.f398b));
                }
                this.f402f = null;
            }
        }

        /* renamed from: t */
        private Drawable m22016t(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f422z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f397a);
            return mutate;
        }

        /* renamed from: a */
        public final int m22033a(Drawable drawable) {
            int i = this.f404h;
            if (i >= this.f403g.length) {
                mo21994o(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f397a);
            this.f403g[i] = drawable;
            this.f404h++;
            this.f401e = drawable.getChangingConfigurations() | this.f401e;
            m22019p();
            this.f407k = null;
            this.f406j = false;
            this.f409m = false;
            this.f418v = false;
            return i;
        }

        @RequiresApi
        /* renamed from: b */
        final void m22032b(Resources.Theme theme) {
            if (theme != null) {
                m22029e();
                int i = this.f404h;
                Drawable[] drawableArr = this.f403g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.f401e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m22010z(theme.getResources());
            }
        }

        /* renamed from: c */
        public boolean m22031c() {
            synchronized (this) {
                if (this.f418v) {
                    return this.f419w;
                }
                m22029e();
                this.f418v = true;
                int i = this.f404h;
                Drawable[] drawableArr = this.f403g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        this.f419w = false;
                        return false;
                    }
                }
                this.f419w = true;
                return true;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi
        public boolean canApplyTheme() {
            int i = this.f404h;
            Drawable[] drawableArr = this.f403g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f402f.get(i2);
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
        protected void m22030d() {
            this.f409m = true;
            m22029e();
            int i = this.f404h;
            Drawable[] drawableArr = this.f403g;
            this.f411o = -1;
            this.f410n = -1;
            this.f413q = 0;
            this.f412p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f410n) {
                    this.f410n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f411o) {
                    this.f411o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f412p) {
                    this.f412p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f413q) {
                    this.f413q = minimumHeight;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: f */
        public final int m22028f() {
            return this.f403g.length;
        }

        /* renamed from: g */
        public final Drawable m22027g(int i) {
            int indexOfKey;
            Drawable drawable = this.f403g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f402f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable t = m22016t(this.f402f.valueAt(indexOfKey).newDrawable(this.f398b));
            this.f403g[i] = t;
            this.f402f.removeAt(indexOfKey);
            if (this.f402f.size() == 0) {
                this.f402f = null;
            }
            return t;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f400d | this.f401e;
        }

        /* renamed from: h */
        public final int m22026h() {
            return this.f404h;
        }

        /* renamed from: i */
        public final int m22025i() {
            if (!this.f409m) {
                m22030d();
            }
            return this.f411o;
        }

        /* renamed from: j */
        public final int m22024j() {
            if (!this.f409m) {
                m22030d();
            }
            return this.f413q;
        }

        /* renamed from: k */
        public final int m22023k() {
            if (!this.f409m) {
                m22030d();
            }
            return this.f412p;
        }

        /* renamed from: l */
        public final Rect m22022l() {
            Rect rect = null;
            if (this.f405i) {
                return null;
            }
            if (this.f407k != null || this.f406j) {
                return this.f407k;
            }
            m22029e();
            Rect rect2 = new Rect();
            int i = this.f404h;
            Drawable[] drawableArr = this.f403g;
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
            this.f406j = true;
            this.f407k = rect;
            return rect;
        }

        /* renamed from: m */
        public final int m22021m() {
            if (!this.f409m) {
                m22030d();
            }
            return this.f410n;
        }

        /* renamed from: n */
        public final int m22020n() {
            if (this.f414r) {
                return this.f415s;
            }
            m22029e();
            int i = this.f404h;
            Drawable[] drawableArr = this.f403g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f415s = opacity;
            this.f414r = true;
            return opacity;
        }

        /* renamed from: o */
        public void mo21994o(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f403g, 0, drawableArr, 0, i);
            this.f403g = drawableArr;
        }

        /* renamed from: p */
        void m22019p() {
            this.f414r = false;
            this.f416t = false;
        }

        /* renamed from: q */
        public final boolean m22018q() {
            return this.f408l;
        }

        /* renamed from: r */
        public final boolean m22017r() {
            if (this.f416t) {
                return this.f417u;
            }
            m22029e();
            int i = this.f404h;
            Drawable[] drawableArr = this.f403g;
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
            this.f417u = z;
            this.f416t = true;
            return z;
        }

        /* renamed from: s */
        void mo21993s() {
            int i = this.f404h;
            Drawable[] drawableArr = this.f403g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.f421y = true;
        }

        /* renamed from: u */
        public final void m22015u(boolean z) {
            this.f408l = z;
        }

        /* renamed from: v */
        public final void m22014v(int i) {
            this.f388A = i;
        }

        /* renamed from: w */
        public final void m22013w(int i) {
            this.f389B = i;
        }

        /* renamed from: x */
        final boolean m22012x(int i, int i2) {
            int i3 = this.f404h;
            Drawable[] drawableArr = this.f403g;
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
            this.f422z = i;
            return z;
        }

        /* renamed from: y */
        public final void m22011y(boolean z) {
            this.f405i = z;
        }

        /* renamed from: z */
        final void m22010z(Resources resources) {
            if (resources != null) {
                this.f398b = resources;
                int f = DrawableContainer.m22038f(resources, this.f399c);
                int i = this.f399c;
                this.f399c = f;
                if (i != f) {
                    this.f409m = false;
                    this.f406j = false;
                }
            }
        }
    }

    /* renamed from: d */
    private void m22040d(Drawable drawable) {
        if (this.f385q == null) {
            this.f385q = new BlockInvalidateCallback();
        }
        BlockInvalidateCallback blockInvalidateCallback = this.f385q;
        blockInvalidateCallback.m22034b(drawable.getCallback());
        drawable.setCallback(blockInvalidateCallback);
        try {
            if (this.f374f.f388A <= 0 && this.f379k) {
                drawable.setAlpha(this.f378j);
            }
            if (this.f374f.f392E) {
                drawable.setColorFilter(this.f374f.f391D);
            } else {
                if (this.f374f.f395H) {
                    DrawableCompat.m19498o(drawable, this.f374f.f393F);
                }
                if (this.f374f.f396I) {
                    DrawableCompat.m19497p(drawable, this.f374f.f394G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f374f.f420x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f374f.f390C);
            }
            Rect rect = this.f375g;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f385q.m22035a());
        }
    }

    /* renamed from: e */
    private boolean m22039e() {
        boolean z = true;
        if (!isAutoMirrored() || DrawableCompat.m19507f(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    static int m22038f(@Nullable Resources resources, int i) {
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
    void m22042a(boolean r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainer.m22042a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public void applyTheme(@NonNull Resources.Theme theme) {
        this.f374f.m22032b(theme);
    }

    /* renamed from: b */
    DrawableContainerState mo22000b() {
        return this.f374f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m22041c() {
        return this.f380l;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public boolean canApplyTheme() {
        return this.f374f.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable = this.f376h;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f377i;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m22037g(int r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainer.m22037g(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f378j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f374f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f374f.m22031c()) {
            return null;
        }
        this.f374f.f400d = getChangingConfigurations();
        return this.f374f;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f376h;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        Rect rect2 = this.f375g;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f374f.m22018q()) {
            return this.f374f.m22025i();
        }
        Drawable drawable = this.f376h;
        return drawable != null ? drawable.getIntrinsicHeight() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f374f.m22018q()) {
            return this.f374f.m22021m();
        }
        Drawable drawable = this.f376h;
        return drawable != null ? drawable.getIntrinsicWidth() : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f374f.m22018q()) {
            return this.f374f.m22024j();
        }
        Drawable drawable = this.f376h;
        return drawable != null ? drawable.getMinimumHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f374f.m22018q()) {
            return this.f374f.m22023k();
        }
        Drawable drawable = this.f376h;
        return drawable != null ? drawable.getMinimumWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f376h;
        return (drawable == null || !drawable.isVisible()) ? -2 : this.f374f.m22020n();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public void getOutline(@NonNull Outline outline) {
        Drawable drawable = this.f376h;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean z;
        Rect l = this.f374f.m22022l();
        if (l != null) {
            rect.set(l);
            z = (l.right | ((l.left | l.top) | l.bottom)) != 0;
        } else {
            Drawable drawable = this.f376h;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (m22039e()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void mo21999h(DrawableContainerState drawableContainerState) {
        this.f374f = drawableContainerState;
        int i = this.f380l;
        if (i >= 0) {
            Drawable g = drawableContainerState.m22027g(i);
            this.f376h = g;
            if (g != null) {
                m22040d(g);
            }
        }
        this.f377i = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m22036i(Resources resources) {
        this.f374f.m22010z(resources);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        DrawableContainerState drawableContainerState = this.f374f;
        if (drawableContainerState != null) {
            drawableContainerState.m22019p();
        }
        if (drawable == this.f376h && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f374f.f390C;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f374f.m22017r();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        Drawable drawable = this.f377i;
        boolean z = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f377i = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f376h;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f379k) {
                this.f376h.setAlpha(this.f378j);
            }
        }
        if (this.f384p != 0) {
            this.f384p = 0L;
            z = true;
        }
        if (this.f383o != 0) {
            this.f383o = 0L;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f381m && super.mutate() == this) {
            DrawableContainerState b = mo22000b();
            b.mo21993s();
            mo21999h(b);
            this.f381m = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f377i;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f376h;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f374f.m22012x(i, m22041c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f377i;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f376h;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f377i;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f376h;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        if (drawable == this.f376h && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f379k || this.f378j != i) {
            this.f379k = true;
            this.f378j = i;
            Drawable drawable = this.f376h;
            if (drawable == null) {
                return;
            }
            if (this.f383o == 0) {
                drawable.setAlpha(i);
            } else {
                m22042a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        DrawableContainerState drawableContainerState = this.f374f;
        if (drawableContainerState.f390C != z) {
            drawableContainerState.f390C = z;
            Drawable drawable = this.f376h;
            if (drawable != null) {
                DrawableCompat.m19503j(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        DrawableContainerState drawableContainerState = this.f374f;
        drawableContainerState.f392E = true;
        if (drawableContainerState.f391D != colorFilter) {
            drawableContainerState.f391D = colorFilter;
            Drawable drawable = this.f376h;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        DrawableContainerState drawableContainerState = this.f374f;
        if (drawableContainerState.f420x != z) {
            drawableContainerState.f420x = z;
            Drawable drawable = this.f376h;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f376h;
        if (drawable != null) {
            DrawableCompat.m19502k(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f375g;
        if (rect == null) {
            this.f375g = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f376h;
        if (drawable != null) {
            DrawableCompat.m19501l(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        DrawableContainerState drawableContainerState = this.f374f;
        drawableContainerState.f395H = true;
        if (drawableContainerState.f393F != colorStateList) {
            drawableContainerState.f393F = colorStateList;
            DrawableCompat.m19498o(this.f376h, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        DrawableContainerState drawableContainerState = this.f374f;
        drawableContainerState.f396I = true;
        if (drawableContainerState.f394G != mode) {
            drawableContainerState.f394G = mode;
            DrawableCompat.m19497p(this.f376h, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f377i;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f376h;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable == this.f376h && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
