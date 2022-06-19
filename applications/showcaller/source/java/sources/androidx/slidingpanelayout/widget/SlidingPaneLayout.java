package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.content.C0586a;
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p055j.p056a.C1710c;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: d */
    private int f4576d;

    /* renamed from: e */
    private int f4577e;

    /* renamed from: f */
    private Drawable f4578f;

    /* renamed from: g */
    private Drawable f4579g;

    /* renamed from: h */
    private final int f4580h;

    /* renamed from: i */
    private boolean f4581i;

    /* renamed from: j */
    View f4582j;

    /* renamed from: k */
    float f4583k;

    /* renamed from: l */
    private float f4584l;

    /* renamed from: m */
    int f4585m;

    /* renamed from: n */
    boolean f4586n;

    /* renamed from: o */
    private int f4587o;

    /* renamed from: p */
    private float f4588p;

    /* renamed from: q */
    private float f4589q;

    /* renamed from: r */
    private AbstractC1053d f4590r;

    /* renamed from: s */
    final C1710c f4591s;

    /* renamed from: t */
    boolean f4592t;

    /* renamed from: u */
    private boolean f4593u;

    /* renamed from: v */
    private final Rect f4594v;

    /* renamed from: w */
    final ArrayList<RunnableC1051b> f4595w;

    /* renamed from: x */
    private Method f4596x;

    /* renamed from: y */
    private Field f4597y;

    /* renamed from: z */
    private boolean f4598z;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        private static final int[] f4599a = {16843137};

        /* renamed from: b */
        public float f4600b;

        /* renamed from: c */
        boolean f4601c;

        /* renamed from: d */
        boolean f4602d;

        /* renamed from: e */
        Paint f4603e;

        public LayoutParams() {
            super(-1, -1);
            this.f4600b = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4600b = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4599a);
            this.f4600b = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4600b = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f4600b = 0.0f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1049a();

        /* renamed from: f */
        boolean f4604f;

        /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$a.class */
        static final class C1049a implements Parcelable.ClassLoaderCreator<SavedState> {
            C1049a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4604f = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4604f ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$a.class */
    public class C1050a extends C1599a {

        /* renamed from: d */
        private final Rect f4605d = new Rect();

        C1050a() {
            SlidingPaneLayout.this = r5;
        }

        /* renamed from: n */
        private void m31156n(C1634c c1634c, C1634c c1634c2) {
            Rect rect = this.f4605d;
            c1634c2.m29470m(rect);
            c1634c.m29497X(rect);
            c1634c2.m29468n(rect);
            c1634c.m29496Y(rect);
            c1634c.m29517F0(c1634c2.m29507N());
            c1634c.m29461q0(c1634c2.m29452v());
            c1634c.m29489c0(c1634c2.m29464p());
            c1634c.m29481g0(c1634c2.m29460r());
            c1634c.m29479h0(c1634c2.m29518F());
            c1634c.m29487d0(c1634c2.m29520E());
            c1634c.m29475j0(c1634c2.m29516G());
            c1634c.m29473k0(c1634c2.m29514H());
            c1634c.m29499V(c1634c2.m29526B());
            c1634c.m29445y0(c1634c2.m29509L());
            c1634c.m29467n0(c1634c2.m29512I());
            c1634c.m29494a(c1634c2.m29474k());
            c1634c.m29463p0(c1634c2.m29456t());
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: f */
        public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
            super.mo4650f(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            C1634c m29504Q = C1634c.m29504Q(c1634c);
            super.mo3869g(view, m29504Q);
            m31156n(c1634c, m29504Q);
            m29504Q.m29502S();
            c1634c.m29489c0(SlidingPaneLayout.class.getName());
            c1634c.m29527A0(view);
            ViewParent m29332J = C1679w.m29332J(view);
            if (m29332J instanceof View) {
                c1634c.m29457s0((View) m29332J);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!m31155o(childAt) && childAt.getVisibility() == 0) {
                    C1679w.m29347B0(childAt, 1);
                    c1634c.m29490c(childAt);
                }
            }
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: i */
        public boolean mo29647i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!m31155o(view)) {
                return super.mo29647i(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        /* renamed from: o */
        public boolean m31155o(View view) {
            return SlidingPaneLayout.this.m31171h(view);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$b.class */
    public class RunnableC1051b implements Runnable {

        /* renamed from: d */
        final View f4607d;

        RunnableC1051b(View view) {
            SlidingPaneLayout.this = r4;
            this.f4607d = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4607d.getParent() == SlidingPaneLayout.this) {
                this.f4607d.setLayerType(0, null);
                SlidingPaneLayout.this.m31172g(this.f4607d);
            }
            SlidingPaneLayout.this.f4595w.remove(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$c.class */
    public class C1052c extends C1710c.AbstractC1713c {
        C1052c() {
            SlidingPaneLayout.this = r4;
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: a */
        public int mo5407a(View view, int i, int i2) {
            int i3;
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f4582j.getLayoutParams();
            if (SlidingPaneLayout.this.m31170i()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + SlidingPaneLayout.this.f4582j.getWidth());
                i3 = Math.max(Math.min(i, width), width - SlidingPaneLayout.this.f4585m);
            } else {
                int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                i3 = Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.f4585m + paddingLeft);
            }
            return i3;
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: b */
        public int mo5406b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: d */
        public int mo5586d(View view) {
            return SlidingPaneLayout.this.f4585m;
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: f */
        public void mo29094f(int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.f4591s.m29119c(slidingPaneLayout.f4582j, i2);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: i */
        public void mo5585i(View view, int i) {
            SlidingPaneLayout.this.m31163p();
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: j */
        public void mo5404j(int i) {
            if (SlidingPaneLayout.this.f4591s.m29138A() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f4583k != 0.0f) {
                    slidingPaneLayout.m31174e(slidingPaneLayout.f4582j);
                    SlidingPaneLayout.this.f4592t = true;
                    return;
                }
                slidingPaneLayout.m31161r(slidingPaneLayout.f4582j);
                SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                slidingPaneLayout2.m31175d(slidingPaneLayout2.f4582j);
                SlidingPaneLayout.this.f4592t = false;
            }
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: k */
        public void mo5403k(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.m31167l(i);
            SlidingPaneLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x00a1, code lost:
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f4583k > 0.5f) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f4583k > 0.5f) goto L10;
         */
        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo5402l(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r0 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r0
                r8 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                boolean r0 = r0.m31170i()
                if (r0 == 0) goto L6d
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingRight()
                r1 = r8
                int r1 = r1.rightMargin
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L43
                r0 = r9
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L4f
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f4583k
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L4f
            L43:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f4585m
                int r0 = r0 + r1
                r10 = r0
            L4f:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                android.view.View r0 = r0.f4582j
                int r0 = r0.getWidth()
                r9 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getWidth()
                r1 = r10
                int r0 = r0 - r1
                r1 = r9
                int r0 = r0 - r1
                r10 = r0
                goto Lb0
            L6d:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingLeft()
                r10 = r0
                r0 = r8
                int r0 = r0.leftMargin
                r1 = r10
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r11 = r0
                r0 = r11
                if (r0 > 0) goto La4
                r0 = r9
                r10 = r0
                r0 = r11
                if (r0 != 0) goto Lb0
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f4583k
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto Lb0
            La4:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f4585m
                int r0 = r0 + r1
                r10 = r0
            Lb0:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                b.j.a.c r0 = r0.f4591s
                r1 = r10
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m29125N(r1, r2)
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.C1052c.mo5402l(android.view.View, float, float):void");
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: m */
        public boolean mo5401m(View view, int i) {
            if (SlidingPaneLayout.this.f4586n) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f4601c;
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$d.class */
    public interface AbstractC1053d {
        /* renamed from: a */
        void m31154a(View view, float f);

        /* renamed from: b */
        void m31153b(View view);

        /* renamed from: c */
        void m31152c(View view);
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4576d = -858993460;
        this.f4593u = true;
        this.f4594v = new Rect();
        this.f4595w = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f4580h = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        C1679w.m29273r0(this, new C1050a());
        C1679w.m29347B0(this, 1);
        C1710c m29107o = C1710c.m29107o(this, 0.5f, new C1052c());
        this.f4591s = m29107o;
        m29107o.m29126M(f * 400.0f);
    }

    /* renamed from: b */
    private boolean m31177b(View view, int i) {
        if (this.f4593u || m31162q(0.0f, i)) {
            this.f4592t = false;
            return true;
        }
        return false;
    }

    /* renamed from: c */
    private void m31176c(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f);
            if (layoutParams.f4603e == null) {
                layoutParams.f4603e = new Paint();
            }
            layoutParams.f4603e.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f4603e);
            }
            m31172g(view);
        } else if (view.getLayerType() == 0) {
        } else {
            Paint paint = layoutParams.f4603e;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            RunnableC1051b runnableC1051b = new RunnableC1051b(view);
            this.f4595w.add(runnableC1051b);
            C1679w.m29289j0(this, runnableC1051b);
        }
    }

    /* renamed from: n */
    private boolean m31165n(View view, int i) {
        if (this.f4593u || m31162q(1.0f, i)) {
            this.f4592t = true;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m31164o(float r6) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m31164o(float):void");
    }

    /* renamed from: s */
    private static boolean m31160s(View view) {
        Drawable background;
        boolean z = true;
        if (view.isOpaque()) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 18 || (background = view.getBackground()) == null) {
            return false;
        }
        if (background.getOpacity() != -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m31178a() {
        return m31177b(this.f4582j, 0);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f4591s.m29108n(true)) {
            if (!this.f4581i) {
                this.f4591s.m29121a();
            } else {
                C1679w.m29293h0(this);
            }
        }
    }

    /* renamed from: d */
    void m31175d(View view) {
        AbstractC1053d abstractC1053d = this.f4590r;
        if (abstractC1053d != null) {
            abstractC1053d.m31152c(view);
        }
        sendAccessibilityEvent(32);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m31170i() ? this.f4579g : this.f4578f;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (m31170i()) {
            i2 = childAt.getRight();
            i = intrinsicWidth + i2;
        } else {
            int left = childAt.getLeft();
            i = left;
            i2 = left - intrinsicWidth;
        }
        drawable.setBounds(i2, top, i, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f4581i && !layoutParams.f4601c && this.f4582j != null) {
            canvas.getClipBounds(this.f4594v);
            if (m31170i()) {
                Rect rect = this.f4594v;
                rect.left = Math.max(rect.left, this.f4582j.getRight());
            } else {
                Rect rect2 = this.f4594v;
                rect2.right = Math.min(rect2.right, this.f4582j.getLeft());
            }
            canvas.clipRect(this.f4594v);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* renamed from: e */
    void m31174e(View view) {
        AbstractC1053d abstractC1053d = this.f4590r;
        if (abstractC1053d != null) {
            abstractC1053d.m31153b(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: f */
    void m31173f(View view) {
        AbstractC1053d abstractC1053d = this.f4590r;
        if (abstractC1053d != null) {
            abstractC1053d.m31154a(view, this.f4583k);
        }
    }

    /* renamed from: g */
    void m31172g(View view) {
        Field field;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            C1679w.m29343D0(view, ((LayoutParams) view.getLayoutParams()).f4603e);
            return;
        }
        if (i >= 16) {
            if (!this.f4598z) {
                try {
                    this.f4596x = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f4597y = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.f4598z = true;
            }
            if (this.f4596x == null || (field = this.f4597y) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.f4596x.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        C1679w.m29291i0(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.f4577e;
    }

    public int getParallaxDistance() {
        return this.f4587o;
    }

    public int getSliderFadeColor() {
        return this.f4576d;
    }

    /* renamed from: h */
    boolean m31171h(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = false;
        if (this.f4581i) {
            z = false;
            if (layoutParams.f4602d) {
                z = false;
                if (this.f4583k > 0.0f) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: i */
    boolean m31170i() {
        boolean z = true;
        if (C1679w.m29346C(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m31169j() {
        return !this.f4581i || this.f4583k == 1.0f;
    }

    /* renamed from: k */
    public boolean m31168k() {
        return this.f4581i;
    }

    /* renamed from: l */
    void m31167l(int i) {
        if (this.f4582j == null) {
            this.f4583k = 0.0f;
            return;
        }
        boolean m31170i = m31170i();
        LayoutParams layoutParams = (LayoutParams) this.f4582j.getLayoutParams();
        int width = this.f4582j.getWidth();
        int i2 = i;
        if (m31170i) {
            i2 = (getWidth() - i) - width;
        }
        float paddingRight = (i2 - ((m31170i ? getPaddingRight() : getPaddingLeft()) + (m31170i ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f4585m;
        this.f4583k = paddingRight;
        if (this.f4587o != 0) {
            m31164o(paddingRight);
        }
        if (layoutParams.f4602d) {
            m31176c(this.f4582j, this.f4583k, this.f4576d);
        }
        m31173f(this.f4582j);
    }

    /* renamed from: m */
    public boolean m31166m() {
        return m31165n(this.f4582j, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f4593u = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f4593u = true;
        int size = this.f4595w.size();
        for (int i = 0; i < size; i++) {
            this.f4595w.get(i).run();
        }
        this.f4595w.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0109  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean m31170i = m31170i();
        if (m31170i) {
            this.f4591s.m29127L(2);
        } else {
            this.f4591s.m29127L(1);
        }
        int i9 = i3 - i;
        int paddingRight = m31170i ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = m31170i ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f4593u) {
            this.f4583k = (!this.f4581i || !this.f4592t) ? 0.0f : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f4601c) {
                    int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int i14 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i14 - this.f4580h) - i10) - (i12 + i13);
                    this.f4585m = min;
                    int i15 = m31170i ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f4602d = ((i10 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (min * this.f4583k);
                    i10 += i15 + i16;
                    this.f4583k = i16 / min;
                    i5 = 0;
                } else if (!this.f4581i || (i8 = this.f4587o) == 0) {
                    i10 = paddingRight;
                    i5 = 0;
                } else {
                    i5 = (int) ((1.0f - this.f4583k) * i8);
                    i10 = paddingRight;
                }
                if (m31170i) {
                    i6 = (i9 - i10) + i5;
                    i7 = i6 - measuredWidth;
                } else {
                    i7 = i10 - i5;
                    i6 = i7 + measuredWidth;
                }
                childAt.layout(i7, paddingTop, i6, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.f4593u) {
            if (this.f4581i) {
                if (this.f4587o != 0) {
                    m31164o(this.f4583k);
                }
                if (((LayoutParams) this.f4582j.getLayoutParams()).f4602d) {
                    m31176c(this.f4582j, this.f4583k, this.f4576d);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    m31176c(getChildAt(i17), 0.0f, this.f4576d);
                }
            }
            m31161r(this.f4582j);
        }
        this.f4593u = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            i4 = size;
            i3 = mode2;
            i5 = size2;
            if (mode2 == 0) {
                if (!isInEditMode()) {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                }
                i4 = size;
                i3 = mode2;
                i5 = size2;
                if (mode2 == 0) {
                    i3 = Integer.MIN_VALUE;
                    i5 = 300;
                    i4 = size;
                }
            }
        } else if (!isInEditMode()) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        } else {
            if (mode == Integer.MIN_VALUE) {
                i4 = size;
                i3 = mode2;
                i5 = size2;
            } else {
                i4 = size;
                i3 = mode2;
                i5 = size2;
                if (mode == 0) {
                    i4 = 300;
                    i3 = mode2;
                    i5 = size2;
                }
            }
        }
        if (i3 == Integer.MIN_VALUE) {
            i6 = (i5 - getPaddingTop()) - getPaddingBottom();
            i7 = 0;
        } else if (i3 != 1073741824) {
            i7 = 0;
            i6 = 0;
        } else {
            i7 = (i5 - getPaddingTop()) - getPaddingBottom();
            i6 = i7;
        }
        int paddingLeft = (i4 - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f4582j = null;
        int i11 = paddingLeft;
        int i12 = 0;
        boolean z = false;
        float f = 0.0f;
        while (true) {
            i8 = i7;
            if (i12 >= childCount) {
                break;
            }
            View childAt = getChildAt(i12);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f4602d = false;
                i7 = i8;
            } else {
                float f2 = layoutParams.f4600b;
                float f3 = f;
                if (f2 > 0.0f) {
                    f += f2;
                    f3 = f;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                        i7 = i8;
                    }
                }
                int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                int makeMeasureSpec = i14 == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, Integer.MIN_VALUE) : i14 == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, 1073741824) : View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                childAt.measure(makeMeasureSpec, i15 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i15 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i15, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                i7 = i8;
                if (i3 == Integer.MIN_VALUE) {
                    i7 = i8;
                    if (measuredHeight > i8) {
                        i7 = Math.min(measuredHeight, i6);
                    }
                }
                i11 -= measuredWidth;
                boolean z2 = i11 < 0;
                layoutParams.f4601c = z2;
                z |= z2;
                if (z2) {
                    this.f4582j = childAt;
                }
                f = f3;
            }
            i12++;
        }
        if (z || f > 0.0f) {
            int i16 = paddingLeft - this.f4580h;
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt2 = getChildAt(i17);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z3 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.f4600b > 0.0f;
                        int measuredWidth2 = z3 ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.f4582j) {
                            if (layoutParams2.f4600b > 0.0f) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                    int i18 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    i9 = i18 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i18 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i18, 1073741824);
                                } else {
                                    i9 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                if (z) {
                                    int i19 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
                                    if (measuredWidth2 != i19) {
                                        childAt2.measure(makeMeasureSpec2, i9);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.f4600b * Math.max(0, i11)) / f)), 1073741824), i9);
                                }
                            }
                        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth2 > i16 || layoutParams2.f4600b > 0.0f)) {
                            if (z3) {
                                int i20 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                i10 = i20 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i20 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i20, 1073741824);
                            } else {
                                i10 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i16, 1073741824), i10);
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, i8 + getPaddingTop() + getPaddingBottom());
        this.f4581i = z;
        if (this.f4591s.m29138A() == 0 || z) {
            return;
        }
        this.f4591s.m29121a();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        if (savedState.f4604f) {
            m31166m();
        } else {
            m31178a();
        }
        this.f4592t = savedState.f4604f;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4604f = m31168k() ? m31169j() : this.f4592t;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f4593u = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f4581i) {
            return super.onTouchEvent(motionEvent);
        }
        this.f4591s.m29133F(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f4588p = x;
            this.f4589q = y;
            return true;
        } else if (actionMasked != 1 || !m31171h(this.f4582j)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f4588p;
            float f2 = y2 - this.f4589q;
            int m29096z = this.f4591s.m29096z();
            if ((f * f) + (f2 * f2) >= m29096z * m29096z || !this.f4591s.m29134E(this.f4582j, (int) x2, (int) y2)) {
                return true;
            }
            m31177b(this.f4582j, 0);
            return true;
        }
    }

    /* renamed from: p */
    void m31163p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* renamed from: q */
    boolean m31162q(float f, int i) {
        int i2;
        if (!this.f4581i) {
            return false;
        }
        boolean m31170i = m31170i();
        LayoutParams layoutParams = (LayoutParams) this.f4582j.getLayoutParams();
        if (m31170i) {
            i2 = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f * this.f4585m)) + this.f4582j.getWidth()));
        } else {
            i2 = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f * this.f4585m));
        }
        C1710c c1710c = this.f4591s;
        View view = this.f4582j;
        if (!c1710c.m29123P(view, i2, view.getTop())) {
            return false;
        }
        m31163p();
        C1679w.m29293h0(this);
        return true;
    }

    /* renamed from: r */
    void m31161r(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        View childAt;
        boolean m31170i = m31170i();
        int width = m31170i ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = m31170i ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        if (view == null || !m31160s(view)) {
            i4 = 0;
            i3 = 0;
            i2 = 0;
            i = 0;
        } else {
            i4 = view.getLeft();
            i3 = view.getRight();
            i2 = view.getTop();
            i = view.getBottom();
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount && (childAt = getChildAt(i5)) != view; i5++) {
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility((Math.max(m31170i ? paddingLeft : width, childAt.getLeft()) < i4 || Math.max(paddingTop, childAt.getTop()) < i2 || Math.min(m31170i ? width : paddingLeft, childAt.getRight()) > i3 || Math.min(height - paddingBottom, childAt.getBottom()) > i) ? 0 : 4);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f4581i) {
            return;
        }
        this.f4592t = view == this.f4582j;
    }

    public void setCoveredFadeColor(int i) {
        this.f4577e = i;
    }

    public void setPanelSlideListener(AbstractC1053d abstractC1053d) {
        this.f4590r = abstractC1053d;
    }

    public void setParallaxDistance(int i) {
        this.f4587o = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.f4578f = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.f4579g = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(C0586a.m33348f(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(C0586a.m33348f(getContext(), i));
    }

    public void setSliderFadeColor(int i) {
        this.f4576d = i;
    }
}
