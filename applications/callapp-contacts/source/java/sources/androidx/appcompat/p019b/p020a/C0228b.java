package androidx.appcompat.p019b.p020a;

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
import androidx.core.graphics.drawable.C0840a;
/* renamed from: androidx.appcompat.b.a.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b.class */
public class C0228b extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    private AbstractC0231b f623a;

    /* renamed from: b */
    private Rect f624b;

    /* renamed from: c */
    private Drawable f625c;

    /* renamed from: d */
    private Drawable f626d;

    /* renamed from: f */
    private boolean f628f;

    /* renamed from: h */
    private boolean f630h;

    /* renamed from: i */
    private Runnable f631i;

    /* renamed from: j */
    private long f632j;

    /* renamed from: k */
    private long f633k;

    /* renamed from: l */
    private C0230a f634l;

    /* renamed from: e */
    private int f627e = 255;

    /* renamed from: g */
    private int f629g = -1;

    /* renamed from: androidx.appcompat.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$a.class */
    public static final class C0230a implements Drawable.Callback {

        /* renamed from: a */
        Drawable.Callback f636a;

        C0230a() {
        }

        /* renamed from: a */
        public final Drawable.Callback m46191a() {
            Drawable.Callback callback = this.f636a;
            this.f636a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f636a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f636a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: androidx.appcompat.b.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$b.class */
    public static abstract class AbstractC0231b extends Drawable.ConstantState {

        /* renamed from: A */
        boolean f637A;

        /* renamed from: B */
        int f638B;

        /* renamed from: C */
        int f639C;

        /* renamed from: D */
        int f640D;

        /* renamed from: E */
        boolean f641E;

        /* renamed from: F */
        ColorFilter f642F;

        /* renamed from: G */
        boolean f643G;

        /* renamed from: H */
        ColorStateList f644H;

        /* renamed from: I */
        PorterDuff.Mode f645I;

        /* renamed from: J */
        boolean f646J;

        /* renamed from: K */
        boolean f647K;

        /* renamed from: c */
        final C0228b f648c;

        /* renamed from: d */
        Resources f649d;

        /* renamed from: e */
        int f650e;

        /* renamed from: f */
        int f651f;

        /* renamed from: g */
        int f652g;

        /* renamed from: h */
        SparseArray<Drawable.ConstantState> f653h;

        /* renamed from: i */
        Drawable[] f654i;

        /* renamed from: j */
        int f655j;

        /* renamed from: k */
        boolean f656k;

        /* renamed from: l */
        boolean f657l;

        /* renamed from: m */
        Rect f658m;

        /* renamed from: n */
        boolean f659n;

        /* renamed from: o */
        boolean f660o;

        /* renamed from: p */
        int f661p;

        /* renamed from: q */
        int f662q;

        /* renamed from: r */
        int f663r;

        /* renamed from: s */
        int f664s;

        /* renamed from: t */
        boolean f665t;

        /* renamed from: u */
        int f666u;

        /* renamed from: v */
        boolean f667v;

        /* renamed from: w */
        boolean f668w;

        /* renamed from: x */
        boolean f669x;

        /* renamed from: y */
        boolean f670y;

        /* renamed from: z */
        boolean f671z;

        public AbstractC0231b(AbstractC0231b abstractC0231b, C0228b c0228b, Resources resources) {
            this.f650e = 160;
            this.f656k = false;
            this.f659n = false;
            this.f671z = true;
            this.f639C = 0;
            this.f640D = 0;
            this.f648c = c0228b;
            this.f649d = resources != null ? resources : abstractC0231b != null ? abstractC0231b.f649d : null;
            int m46195a = C0228b.m46195a(resources, abstractC0231b != null ? abstractC0231b.f650e : 0);
            this.f650e = m46195a;
            if (abstractC0231b == null) {
                this.f654i = new Drawable[10];
                this.f655j = 0;
                return;
            }
            this.f651f = abstractC0231b.f651f;
            this.f652g = abstractC0231b.f652g;
            this.f669x = true;
            this.f670y = true;
            this.f656k = abstractC0231b.f656k;
            this.f659n = abstractC0231b.f659n;
            this.f671z = abstractC0231b.f671z;
            this.f637A = abstractC0231b.f637A;
            this.f638B = abstractC0231b.f638B;
            this.f639C = abstractC0231b.f639C;
            this.f640D = abstractC0231b.f640D;
            this.f641E = abstractC0231b.f641E;
            this.f642F = abstractC0231b.f642F;
            this.f643G = abstractC0231b.f643G;
            this.f644H = abstractC0231b.f644H;
            this.f645I = abstractC0231b.f645I;
            this.f646J = abstractC0231b.f646J;
            this.f647K = abstractC0231b.f647K;
            if (abstractC0231b.f650e == m46195a) {
                if (abstractC0231b.f657l) {
                    this.f658m = new Rect(abstractC0231b.f658m);
                    this.f657l = true;
                }
                if (abstractC0231b.f660o) {
                    this.f661p = abstractC0231b.f661p;
                    this.f662q = abstractC0231b.f662q;
                    this.f663r = abstractC0231b.f663r;
                    this.f664s = abstractC0231b.f664s;
                    this.f660o = true;
                }
            }
            if (abstractC0231b.f665t) {
                this.f666u = abstractC0231b.f666u;
                this.f665t = true;
            }
            if (abstractC0231b.f667v) {
                this.f668w = abstractC0231b.f668w;
                this.f667v = true;
            }
            Drawable[] drawableArr = abstractC0231b.f654i;
            this.f654i = new Drawable[drawableArr.length];
            this.f655j = abstractC0231b.f655j;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC0231b.f653h;
            if (sparseArray != null) {
                this.f653h = sparseArray.clone();
            } else {
                this.f653h = new SparseArray<>(this.f655j);
            }
            int i = this.f655j;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f653h.put(i2, constantState);
                    } else {
                        this.f654i[i2] = drawableArr[i2];
                    }
                }
            }
        }

        /* renamed from: b */
        private Drawable m46186b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f638B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f648c);
            return mutate;
        }

        /* renamed from: a */
        public final int m46189a(Drawable drawable) {
            int i = this.f655j;
            if (i >= this.f654i.length) {
                mo46176b(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f648c);
            this.f654i[i] = drawable;
            this.f655j++;
            this.f652g = drawable.getChangingConfigurations() | this.f652g;
            m46188b();
            this.f658m = null;
            this.f657l = false;
            this.f660o = false;
            this.f669x = false;
            return i;
        }

        /* renamed from: a */
        void mo46177a() {
            int i = this.f655j;
            Drawable[] drawableArr = this.f654i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.f637A = true;
        }

        /* renamed from: a */
        final void m46190a(Resources resources) {
            if (resources != null) {
                this.f649d = resources;
                int m46195a = C0228b.m46195a(resources, this.f650e);
                int i = this.f650e;
                this.f650e = m46195a;
                if (i == m46195a) {
                    return;
                }
                this.f660o = false;
                this.f657l = false;
            }
        }

        /* renamed from: b */
        public final Drawable m46187b(int i) {
            int indexOfKey;
            Drawable drawable = this.f654i[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f653h;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable m46186b = m46186b(this.f653h.valueAt(indexOfKey).newDrawable(this.f649d));
            this.f654i[i] = m46186b;
            this.f653h.removeAt(indexOfKey);
            if (this.f653h.size() == 0) {
                this.f653h = null;
            }
            return m46186b;
        }

        /* renamed from: b */
        final void m46188b() {
            this.f665t = false;
            this.f667v = false;
        }

        /* renamed from: b */
        public void mo46176b(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f654i, 0, drawableArr, 0, i);
            this.f654i = drawableArr;
        }

        /* renamed from: c */
        final void m46185c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f653h;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f654i[this.f653h.keyAt(i)] = m46186b(this.f653h.valueAt(i).newDrawable(this.f649d));
                }
                this.f653h = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f655j;
            Drawable[] drawableArr = this.f654i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f653h.get(i2);
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
        void m46184d() {
            this.f660o = true;
            m46185c();
            int i = this.f655j;
            Drawable[] drawableArr = this.f654i;
            this.f662q = -1;
            this.f661p = -1;
            this.f664s = 0;
            this.f663r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f661p) {
                    this.f661p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f662q) {
                    this.f662q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f663r) {
                    this.f663r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f664s) {
                    this.f664s = minimumHeight;
                }
            }
        }

        /* renamed from: e */
        public final boolean m46183e() {
            synchronized (this) {
                if (this.f669x) {
                    return this.f670y;
                }
                m46185c();
                this.f669x = true;
                int i = this.f655j;
                Drawable[] drawableArr = this.f654i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        this.f670y = false;
                        return false;
                    }
                }
                this.f670y = true;
                return true;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f651f | this.f652g;
        }
    }

    /* renamed from: a */
    static int m46195a(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    /* renamed from: a */
    private void m46194a(Drawable drawable) {
        if (this.f634l == null) {
            this.f634l = new C0230a();
        }
        C0230a c0230a = this.f634l;
        c0230a.f636a = drawable.getCallback();
        drawable.setCallback(c0230a);
        try {
            if (this.f623a.f639C <= 0 && this.f628f) {
                drawable.setAlpha(this.f627e);
            }
            if (this.f623a.f643G) {
                drawable.setColorFilter(this.f623a.f642F);
            } else {
                if (this.f623a.f646J) {
                    C0840a.m44355a(drawable, this.f623a.f644H);
                }
                if (this.f623a.f647K) {
                    C0840a.m44352a(drawable, this.f623a.f645I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f623a.f671z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f623a.f641E);
            }
            Rect rect = this.f624b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f634l.m46191a());
        }
    }

    /* renamed from: a */
    public final void m46196a(Resources resources) {
        this.f623a.m46190a(resources);
    }

    /* renamed from: a */
    public void mo46179a(AbstractC0231b abstractC0231b) {
        this.f623a = abstractC0231b;
        int i = this.f629g;
        if (i >= 0) {
            Drawable m46187b = abstractC0231b.m46187b(i);
            this.f625c = m46187b;
            if (m46187b != null) {
                m46194a(m46187b);
            }
        }
        this.f626d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m46193a(boolean r8) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p019b.p020a.C0228b.m46193a(boolean):void");
    }

    /* renamed from: a */
    public final boolean m46197a(int i) {
        if (i == this.f629g) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f623a.f640D > 0) {
            Drawable drawable = this.f626d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f625c;
            if (drawable2 != null) {
                this.f626d = drawable2;
                this.f633k = this.f623a.f640D + uptimeMillis;
            } else {
                this.f626d = null;
                this.f633k = 0L;
            }
        } else {
            Drawable drawable3 = this.f625c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i < 0 || i >= this.f623a.f655j) {
            this.f625c = null;
            this.f629g = -1;
        } else {
            Drawable m46187b = this.f623a.m46187b(i);
            this.f625c = m46187b;
            this.f629g = i;
            if (m46187b != null) {
                if (this.f623a.f639C > 0) {
                    this.f632j = uptimeMillis + this.f623a.f639C;
                }
                m46194a(m46187b);
            }
        }
        if (this.f632j != 0 || this.f633k != 0) {
            Runnable runnable = this.f631i;
            if (runnable == null) {
                this.f631i = new Runnable() { // from class: androidx.appcompat.b.a.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0228b.this.m46193a(true);
                        C0228b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            m46193a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        AbstractC0231b abstractC0231b = this.f623a;
        if (theme != null) {
            abstractC0231b.m46185c();
            int i = abstractC0231b.f655j;
            Drawable[] drawableArr = abstractC0231b.f654i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                    drawableArr[i2].applyTheme(theme);
                    abstractC0231b.f652g |= drawableArr[i2].getChangingConfigurations();
                }
            }
            abstractC0231b.m46190a(theme.getResources());
        }
    }

    /* renamed from: b */
    AbstractC0231b mo46178b() {
        return this.f623a;
    }

    /* renamed from: c */
    public final int m46192c() {
        return this.f629g;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f623a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f625c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f626d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f627e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f623a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f623a.m46183e()) {
            this.f623a.f651f = getChangingConfigurations();
            return this.f623a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f625c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f624b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f623a.f659n) {
            AbstractC0231b abstractC0231b = this.f623a;
            if (!abstractC0231b.f660o) {
                abstractC0231b.m46184d();
            }
            return abstractC0231b.f662q;
        }
        Drawable drawable = this.f625c;
        if (drawable == null) {
            return -1;
        }
        return drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f623a.f659n) {
            AbstractC0231b abstractC0231b = this.f623a;
            if (!abstractC0231b.f660o) {
                abstractC0231b.m46184d();
            }
            return abstractC0231b.f661p;
        }
        Drawable drawable = this.f625c;
        if (drawable == null) {
            return -1;
        }
        return drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f623a.f659n) {
            AbstractC0231b abstractC0231b = this.f623a;
            if (!abstractC0231b.f660o) {
                abstractC0231b.m46184d();
            }
            return abstractC0231b.f664s;
        }
        Drawable drawable = this.f625c;
        if (drawable == null) {
            return 0;
        }
        return drawable.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f623a.f659n) {
            AbstractC0231b abstractC0231b = this.f623a;
            if (!abstractC0231b.f660o) {
                abstractC0231b.m46184d();
            }
            return abstractC0231b.f663r;
        }
        Drawable drawable = this.f625c;
        if (drawable == null) {
            return 0;
        }
        return drawable.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f625c;
        int i = -2;
        int i2 = -2;
        if (drawable != null) {
            if (!drawable.isVisible()) {
                i2 = -2;
            } else {
                AbstractC0231b abstractC0231b = this.f623a;
                if (abstractC0231b.f665t) {
                    return abstractC0231b.f666u;
                }
                abstractC0231b.m46185c();
                int i3 = abstractC0231b.f655j;
                Drawable[] drawableArr = abstractC0231b.f654i;
                if (i3 > 0) {
                    i = drawableArr[0].getOpacity();
                }
                for (int i4 = 1; i4 < i3; i4++) {
                    i = Drawable.resolveOpacity(i, drawableArr[i4].getOpacity());
                }
                abstractC0231b.f666u = i;
                abstractC0231b.f665t = true;
                i2 = i;
            }
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f625c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        AbstractC0231b abstractC0231b = this.f623a;
        Rect rect2 = null;
        if (abstractC0231b.f656k) {
            rect2 = null;
        } else if (abstractC0231b.f658m != null || abstractC0231b.f657l) {
            rect2 = abstractC0231b.f658m;
        } else {
            abstractC0231b.m46185c();
            Rect rect3 = new Rect();
            int i = abstractC0231b.f655j;
            Drawable[] drawableArr = abstractC0231b.f654i;
            int i2 = 0;
            while (i2 < i) {
                Rect rect4 = rect2;
                if (drawableArr[i2].getPadding(rect3)) {
                    Rect rect5 = rect2;
                    if (rect2 == null) {
                        rect5 = new Rect(0, 0, 0, 0);
                    }
                    if (rect3.left > rect5.left) {
                        rect5.left = rect3.left;
                    }
                    if (rect3.top > rect5.top) {
                        rect5.top = rect3.top;
                    }
                    if (rect3.right > rect5.right) {
                        rect5.right = rect3.right;
                    }
                    rect4 = rect5;
                    if (rect3.bottom > rect5.bottom) {
                        rect5.bottom = rect3.bottom;
                        rect4 = rect5;
                    }
                }
                i2++;
                rect2 = rect4;
            }
            abstractC0231b.f657l = true;
            abstractC0231b.f658m = rect2;
        }
        if (rect2 != null) {
            rect.set(rect2);
            z = (((rect2.left | rect2.top) | rect2.bottom) | rect2.right) != 0;
        } else {
            Drawable drawable = this.f625c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (isAutoMirrored() && C0840a.m44343h(this) == 1) {
            int i3 = rect.left;
            rect.left = rect.right;
            rect.right = i3;
        }
        return z;
    }

    public void invalidateDrawable(Drawable drawable) {
        AbstractC0231b abstractC0231b = this.f623a;
        if (abstractC0231b != null) {
            abstractC0231b.m46188b();
        }
        if (drawable != this.f625c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f623a.f641E;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        boolean z;
        AbstractC0231b abstractC0231b = this.f623a;
        if (abstractC0231b.f667v) {
            return abstractC0231b.f668w;
        }
        abstractC0231b.m46185c();
        int i = abstractC0231b.f655j;
        Drawable[] drawableArr = abstractC0231b.f654i;
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
        abstractC0231b.f668w = z;
        abstractC0231b.f667v = true;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f626d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f626d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f625c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f628f) {
                this.f625c.setAlpha(this.f627e);
            }
        }
        if (this.f633k != 0) {
            this.f633k = 0L;
            z = true;
        }
        if (this.f632j != 0) {
            this.f632j = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f630h && super.mutate() == this) {
            AbstractC0231b mo46178b = mo46178b();
            mo46178b.mo46177a();
            mo46179a(mo46178b);
            this.f630h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f626d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f625c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        AbstractC0231b abstractC0231b = this.f623a;
        int i2 = this.f629g;
        int i3 = abstractC0231b.f655j;
        Drawable[] drawableArr = abstractC0231b.f654i;
        int i4 = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i4 >= i3) {
                abstractC0231b.f638B = i;
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

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f626d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f625c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f626d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f625c;
        if (drawable2 == null) {
            return false;
        }
        return drawable2.setState(iArr);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f625c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f628f || this.f627e != i) {
            this.f628f = true;
            this.f627e = i;
            Drawable drawable = this.f625c;
            if (drawable == null) {
                return;
            }
            if (this.f632j == 0) {
                drawable.setAlpha(i);
            } else {
                m46193a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f623a.f641E != z) {
            this.f623a.f641E = z;
            Drawable drawable = this.f625c;
            if (drawable == null) {
                return;
            }
            C0840a.m44351a(drawable, this.f623a.f641E);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f623a.f643G = true;
        if (this.f623a.f642F != colorFilter) {
            this.f623a.f642F = colorFilter;
            Drawable drawable = this.f625c;
            if (drawable == null) {
                return;
            }
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.f623a.f671z != z) {
            this.f623a.f671z = z;
            Drawable drawable = this.f625c;
            if (drawable == null) {
                return;
            }
            drawable.setDither(this.f623a.f671z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f625c;
        if (drawable != null) {
            C0840a.m44358a(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f624b;
        if (rect == null) {
            this.f624b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f625c;
        if (drawable != null) {
            C0840a.m44356a(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTintList(ColorStateList colorStateList) {
        this.f623a.f646J = true;
        if (this.f623a.f644H != colorStateList) {
            this.f623a.f644H = colorStateList;
            C0840a.m44355a(this.f625c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f623a.f647K = true;
        if (this.f623a.f645I != mode) {
            this.f623a.f645I = mode;
            C0840a.m44352a(this.f625c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f626d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f625c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f625c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
