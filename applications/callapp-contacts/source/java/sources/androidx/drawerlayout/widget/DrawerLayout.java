package androidx.drawerlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.content.C0790b;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0865a;
import androidx.core.view.C0908e;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.customview.p039a.C0972c;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: b */
    static final boolean f3936b;

    /* renamed from: g */
    private static final boolean f3938g;

    /* renamed from: A */
    private List<AbstractC0988c> f3939A;

    /* renamed from: B */
    private float f3940B;

    /* renamed from: C */
    private float f3941C;

    /* renamed from: D */
    private Drawable f3942D;

    /* renamed from: E */
    private Drawable f3943E;

    /* renamed from: F */
    private Drawable f3944F;

    /* renamed from: G */
    private Object f3945G;

    /* renamed from: H */
    private boolean f3946H;

    /* renamed from: I */
    private Drawable f3947I;

    /* renamed from: J */
    private Drawable f3948J;

    /* renamed from: K */
    private Drawable f3949K;

    /* renamed from: L */
    private Drawable f3950L;

    /* renamed from: M */
    private final ArrayList<View> f3951M;

    /* renamed from: N */
    private Rect f3952N;

    /* renamed from: O */
    private Matrix f3953O;

    /* renamed from: c */
    boolean f3954c;

    /* renamed from: d */
    CharSequence f3955d;

    /* renamed from: e */
    CharSequence f3956e;

    /* renamed from: h */
    private final C0987b f3957h;

    /* renamed from: i */
    private float f3958i;

    /* renamed from: j */
    private int f3959j;

    /* renamed from: k */
    private int f3960k;

    /* renamed from: l */
    private float f3961l;

    /* renamed from: m */
    private Paint f3962m;

    /* renamed from: n */
    private final C0972c f3963n;

    /* renamed from: o */
    private final C0972c f3964o;

    /* renamed from: p */
    private final C0990e f3965p;

    /* renamed from: q */
    private final C0990e f3966q;

    /* renamed from: r */
    private int f3967r;

    /* renamed from: s */
    private boolean f3968s;

    /* renamed from: t */
    private boolean f3969t;

    /* renamed from: u */
    private int f3970u;

    /* renamed from: v */
    private int f3971v;

    /* renamed from: w */
    private int f3972w;

    /* renamed from: x */
    private int f3973x;

    /* renamed from: y */
    private boolean f3974y;

    /* renamed from: z */
    private AbstractC0988c f3975z;

    /* renamed from: f */
    private static final int[] f3937f = {16843828};

    /* renamed from: a */
    static final int[] f3935a = {16842931};

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f3977a;

        /* renamed from: b */
        float f3978b;

        /* renamed from: c */
        boolean f3979c;

        /* renamed from: d */
        int f3980d;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f3977a = 0;
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.f3977a = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3977a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f3935a);
            this.f3977a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3977a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3977a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f3977a = 0;
            this.f3977a = layoutParams.f3977a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.drawerlayout.widget.DrawerLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    public final class C0986a extends C0865a {

        /* renamed from: c */
        private final Rect f3982c = new Rect();

        C0986a() {
            DrawerLayout.this = r5;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            if (DrawerLayout.f3936b) {
                super.mo9886a(view, c0869c);
            } else {
                C0869c m44276a = C0869c.m44276a(c0869c);
                super.mo9886a(view, m44276a);
                c0869c.m44268b(view);
                ViewParent m44095g = C0926v.m44095g(view);
                if (m44095g instanceof View) {
                    c0869c.m44255d((View) m44095g);
                }
                Rect rect = this.f3982c;
                m44276a.m44282a(rect);
                c0869c.m44269b(rect);
                m44276a.m44261c(rect);
                c0869c.m44256d(rect);
                c0869c.m44253d(m44276a.m44271b());
                c0869c.m44275a(m44276a.f3644a.getPackageName());
                c0869c.m44265b(m44276a.f3644a.getClassName());
                c0869c.m44250e(m44276a.f3644a.getContentDescription());
                c0869c.m44241i(m44276a.f3644a.isEnabled());
                c0869c.m44243g(m44276a.f3644a.isClickable());
                c0869c.m44263b(m44276a.f3644a.isFocusable());
                c0869c.m44258c(m44276a.f3644a.isFocused());
                c0869c.m44249e(m44276a.m44262c());
                c0869c.m44245f(m44276a.f3644a.isSelected());
                c0869c.m44242h(m44276a.f3644a.isLongClickable());
                c0869c.m44284a(m44276a.f3644a.getActions());
                m44276a.f3644a.recycle();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.m43843g(childAt)) {
                        c0869c.m44260c(childAt);
                    }
                }
            }
            c0869c.m44265b((CharSequence) DrawerLayout.class.getName());
            c0869c.m44263b(false);
            c0869c.m44258c(false);
            c0869c.m44266b(C0869c.C0870a.f3658a);
            c0869c.m44266b(C0869c.C0870a.f3659b);
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final boolean mo39917a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f3936b || DrawerLayout.m43843g(view)) {
                return super.mo39917a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: b */
        public final boolean mo40050b(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View m43859b = DrawerLayout.this.m43859b();
                if (m43859b == null) {
                    return true;
                }
                int m43852c = DrawerLayout.this.m43852c(m43859b);
                DrawerLayout drawerLayout = DrawerLayout.this;
                int m44195a = C0908e.m44195a(m43852c, C0926v.m44097f(drawerLayout));
                CharSequence charSequence = m44195a == 3 ? drawerLayout.f3955d : m44195a == 5 ? drawerLayout.f3956e : null;
                if (charSequence == null) {
                    return true;
                }
                text.add(charSequence);
                return true;
            }
            return super.mo40050b(view, accessibilityEvent);
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: d */
        public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo10621d(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    public static final class C0987b extends C0865a {
        C0987b() {
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            super.mo9886a(view, c0869c);
            if (!DrawerLayout.m43843g(view)) {
                c0869c.m44255d((View) null);
            }
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public interface AbstractC0988c {
        /* renamed from: a */
        void mo30555a();

        /* renamed from: a */
        void mo30554a(float f);

        /* renamed from: b */
        void mo30553b();
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public static abstract class AbstractC0989d implements AbstractC0988c {
        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
        /* renamed from: a */
        public void mo30555a() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
        /* renamed from: a */
        public void mo30554a(float f) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
        /* renamed from: b */
        public void mo30553b() {
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e.class */
    public final class C0990e extends C0972c.AbstractC0975a {

        /* renamed from: a */
        final int f3983a;

        /* renamed from: b */
        C0972c f3984b;

        /* renamed from: d */
        private final Runnable f3986d = new Runnable() { // from class: androidx.drawerlayout.widget.DrawerLayout.e.1
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                View view;
                C0990e c0990e = C0990e.this;
                int i2 = c0990e.f3984b.f3904h;
                boolean z = c0990e.f3983a == 3;
                if (z) {
                    view = DrawerLayout.this.m43858b(3);
                    i = (view != null ? -view.getWidth() : 0) + i2;
                } else {
                    view = DrawerLayout.this.m43858b(5);
                    i = DrawerLayout.this.getWidth() - i2;
                }
                if (view != null) {
                    if (((!z || view.getLeft() >= i) && (z || view.getLeft() <= i)) || DrawerLayout.this.m43865a(view) != 0) {
                        return;
                    }
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    c0990e.f3984b.m43897a(view, i, view.getTop());
                    layoutParams.f3979c = true;
                    DrawerLayout.this.invalidate();
                    c0990e.m43839c();
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    if (drawerLayout.f3954c) {
                        return;
                    }
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        drawerLayout.getChildAt(i3).dispatchTouchEvent(obtain);
                    }
                    obtain.recycle();
                    drawerLayout.f3954c = true;
                }
            }
        };

        C0990e(int i) {
            DrawerLayout.this = r6;
            this.f3983a = i;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final int mo11217a(View view) {
            if (DrawerLayout.m43848d(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo43841a() {
            DrawerLayout.this.postDelayed(this.f3986d, 160L);
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11096a(int i) {
            DrawerLayout.this.m43868a(i, this.f3984b.f3906j);
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo39915a(int i, int i2) {
            View m43858b = (i & 1) == 1 ? DrawerLayout.this.m43858b(3) : DrawerLayout.this.m43858b(5);
            if (m43858b == null || DrawerLayout.this.m43865a(m43858b) != 0) {
                return;
            }
            this.f3984b.m43898a(m43858b, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
            if (r0 > 0.5f) goto L18;
         */
        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo11095a(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r5
                float r0 = androidx.drawerlayout.widget.DrawerLayout.m43857b(r0)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m43863a(r1, r2)
                if (r0 == 0) goto L3e
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 > 0) goto L38
                r0 = r9
                if (r0 != 0) goto L30
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L30
                goto L38
            L30:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L69
            L38:
                r0 = 0
                r9 = r0
                goto L69
            L3e:
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L62
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L69
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L69
            L62:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
            L69:
                r0 = r4
                androidx.customview.a.c r0 = r0.f3984b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m43903a(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.C0990e.mo11095a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11216a(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f3979c = false;
            m43839c();
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11094a(View view, int i, int i2) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m43863a(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m43864a(view, width2);
            view.setVisibility(width2 == BitmapDescriptorFactory.HUE_RED ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* renamed from: b */
        public final void m43840b() {
            DrawerLayout.this.removeCallbacks(this.f3986d);
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: b */
        public final boolean mo11092b(View view, int i) {
            return DrawerLayout.m43848d(view) && DrawerLayout.this.m43863a(view, this.f3983a) && DrawerLayout.this.m43865a(view) == 0;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: c */
        public final int mo11091c(View view, int i) {
            if (DrawerLayout.this.m43863a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        /* renamed from: c */
        final void m43839c() {
            int i = 3;
            if (this.f3983a == 3) {
                i = 5;
            }
            View m43858b = DrawerLayout.this.m43858b(i);
            if (m43858b != null) {
                DrawerLayout.this.m43862a(m43858b, true);
            }
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: d */
        public final int mo11090d(View view, int i) {
            return view.getTop();
        }
    }

    static {
        f3936b = Build.VERSION.SDK_INT >= 19;
        f3938g = Build.VERSION.SDK_INT >= 21;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3957h = new C0987b();
        this.f3960k = -1728053248;
        this.f3962m = new Paint();
        this.f3969t = true;
        this.f3970u = 3;
        this.f3971v = 3;
        this.f3972w = 3;
        this.f3973x = 3;
        this.f3947I = null;
        this.f3948J = null;
        this.f3949K = null;
        this.f3950L = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f3959j = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        C0990e c0990e = new C0990e(3);
        this.f3965p = c0990e;
        C0990e c0990e2 = new C0990e(5);
        this.f3966q = c0990e2;
        C0972c m43895a = C0972c.m43895a(this, 1.0f, c0990e);
        this.f3963n = m43895a;
        m43895a.f3905i = 1;
        m43895a.f3903g = f2;
        c0990e.f3984b = m43895a;
        C0972c m43895a2 = C0972c.m43895a(this, 1.0f, c0990e2);
        this.f3964o = m43895a2;
        m43895a2.f3905i = 2;
        m43895a2.f3903g = f2;
        c0990e2.f3984b = m43895a2;
        setFocusableInTouchMode(true);
        C0926v.m44102c((View) this, 1);
        C0926v.m44123a(this, new C0986a());
        setMotionEventSplittingEnabled(false);
        if (C0926v.m44080s(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.drawerlayout.widget.DrawerLayout.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
                        return windowInsets.consumeSystemWindowInsets();
                    }
                });
                setSystemUiVisibility(Constants.SMALL_SIZE_SCREEN);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f3937f);
                try {
                    this.f3942D = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f3942D = null;
            }
        }
        this.f3958i = f * 10.0f;
        this.f3951M = new ArrayList<>();
    }

    /* renamed from: a */
    private void m43860a(boolean z) {
        boolean z2;
        int childCount = getChildCount();
        int i = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            boolean z4 = z2;
            if (m43848d(childAt)) {
                if (z) {
                    z4 = z2;
                    if (!layoutParams.f3979c) {
                    }
                }
                z4 = z2 | (m43863a(childAt, 3) ? this.f3963n.m43897a(childAt, -childAt.getWidth(), childAt.getTop()) : this.f3964o.m43897a(childAt, getWidth(), childAt.getTop()));
                layoutParams.f3979c = false;
            }
            i++;
            z3 = z4;
        }
        this.f3965p.m43840b();
        this.f3966q.m43840b();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: a */
    private static boolean m43866a(Drawable drawable, int i) {
        if (drawable == null || !C0840a.m44359a(drawable)) {
            return false;
        }
        C0840a.m44349b(drawable, i);
        return true;
    }

    /* renamed from: b */
    static float m43857b(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3978b;
    }

    /* renamed from: b */
    private void m43856b(View view, float f) {
        float m43857b = m43857b(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (m43857b * width));
        if (!m43863a(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m43864a(view, f);
    }

    /* renamed from: b */
    private void m43855b(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m43848d(childAt)) && (!z || childAt != view)) {
                C0926v.m44102c(childAt, 4);
            } else {
                C0926v.m44102c(childAt, 1);
            }
        }
    }

    /* renamed from: c */
    private View m43854c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f3980d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: c */
    private void m43851c(View view, boolean z) {
        if (!m43848d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f3969t) {
            layoutParams.f3978b = 1.0f;
            layoutParams.f3980d = 1;
            m43855b(view, true);
        } else {
            layoutParams.f3980d |= 2;
            if (m43863a(view, 3)) {
                this.f3963n.m43897a(view, 0, view.getTop());
            } else {
                this.f3964o.m43897a(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    /* renamed from: d */
    private static String m43849d(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: d */
    private void m43850d() {
        if (f3938g) {
            return;
        }
        this.f3943E = m43847e();
        this.f3944F = m43845f();
    }

    /* renamed from: d */
    static boolean m43848d(View view) {
        int m44195a = C0908e.m44195a(((LayoutParams) view.getLayoutParams()).f3977a, C0926v.m44097f(view));
        return ((m44195a & 3) == 0 && (m44195a & 5) == 0) ? false : true;
    }

    /* renamed from: e */
    private Drawable m43847e() {
        int m44097f = C0926v.m44097f(this);
        if (m44097f == 0) {
            Drawable drawable = this.f3947I;
            if (drawable != null) {
                m43866a(drawable, m44097f);
                return this.f3947I;
            }
        } else {
            Drawable drawable2 = this.f3948J;
            if (drawable2 != null) {
                m43866a(drawable2, m44097f);
                return this.f3948J;
            }
        }
        return this.f3949K;
    }

    /* renamed from: e */
    public static boolean m43846e(View view) {
        if (m43848d(view)) {
            return (((LayoutParams) view.getLayoutParams()).f3980d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: f */
    private Drawable m43845f() {
        int m44097f = C0926v.m44097f(this);
        if (m44097f == 0) {
            Drawable drawable = this.f3948J;
            if (drawable != null) {
                m43866a(drawable, m44097f);
                return this.f3948J;
            }
        } else {
            Drawable drawable2 = this.f3947I;
            if (drawable2 != null) {
                m43866a(drawable2, m44097f);
                return this.f3947I;
            }
        }
        return this.f3950L;
    }

    /* renamed from: f */
    public static boolean m43844f(View view) {
        if (m43848d(view)) {
            return ((LayoutParams) view.getLayoutParams()).f3978b > BitmapDescriptorFactory.HUE_RED;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: g */
    static boolean m43843g(View view) {
        return (C0926v.m44099e(view) == 4 || C0926v.m44099e(view) == 2) ? false : true;
    }

    /* renamed from: h */
    private static boolean m43842h(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3977a == 0;
    }

    /* renamed from: a */
    public final int m43869a(int i) {
        int m44097f = C0926v.m44097f(this);
        if (i == 3) {
            int i2 = this.f3970u;
            if (i2 != 3) {
                return i2;
            }
            int i3 = m44097f == 0 ? this.f3972w : this.f3973x;
            if (i3 == 3) {
                return 0;
            }
            return i3;
        } else if (i == 5) {
            int i4 = this.f3971v;
            if (i4 != 3) {
                return i4;
            }
            int i5 = m44097f == 0 ? this.f3973x : this.f3972w;
            if (i5 == 3) {
                return 0;
            }
            return i5;
        } else if (i == 8388611) {
            int i6 = this.f3972w;
            if (i6 != 3) {
                return i6;
            }
            int i7 = m44097f == 0 ? this.f3970u : this.f3971v;
            if (i7 == 3) {
                return 0;
            }
            return i7;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f3973x;
            if (i8 != 3) {
                return i8;
            }
            int i9 = m44097f == 0 ? this.f3971v : this.f3970u;
            if (i9 == 3) {
                return 0;
            }
            return i9;
        }
    }

    /* renamed from: a */
    public final int m43865a(View view) {
        if (m43848d(view)) {
            return m43869a(((LayoutParams) view.getLayoutParams()).f3977a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: a */
    public final void m43870a() {
        m43867a(8388611, true);
    }

    /* renamed from: a */
    final void m43868a(int i, View view) {
        int i2;
        View rootView;
        int i3 = this.f3963n.f3897a;
        int i4 = this.f3964o.f3897a;
        if (i3 == 1 || i4 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (i3 != 2) {
                i2 = i4 == 2 ? 2 : 0;
            }
        }
        if (view != null && i == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.f3978b == BitmapDescriptorFactory.HUE_RED) {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams2.f3980d & 1) == 1) {
                    layoutParams2.f3980d = 0;
                    List<AbstractC0988c> list = this.f3939A;
                    if (list != null) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            this.f3939A.get(size).mo30553b();
                        }
                    }
                    m43855b(view, false);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (layoutParams.f3978b == 1.0f) {
                LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams3.f3980d & 1) == 0) {
                    layoutParams3.f3980d = 1;
                    List<AbstractC0988c> list2 = this.f3939A;
                    if (list2 != null) {
                        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                            this.f3939A.get(size2).mo30555a();
                        }
                    }
                    m43855b(view, true);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != this.f3967r) {
            this.f3967r = i2;
            List<AbstractC0988c> list3 = this.f3939A;
            if (list3 == null) {
                return;
            }
            for (int size3 = list3.size() - 1; size3 >= 0; size3--) {
                this.f3939A.get(size3);
            }
        }
    }

    /* renamed from: a */
    public final void m43867a(int i, boolean z) {
        View m43858b = m43858b(8388611);
        if (m43858b != null) {
            m43862a(m43858b, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m43849d(8388611));
    }

    /* renamed from: a */
    final void m43864a(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.f3978b) {
            return;
        }
        layoutParams.f3978b = f;
        List<AbstractC0988c> list = this.f3939A;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            this.f3939A.get(size).mo30554a(f);
        }
    }

    /* renamed from: a */
    public final void m43862a(View view, boolean z) {
        if (!m43848d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f3969t) {
            layoutParams.f3978b = BitmapDescriptorFactory.HUE_RED;
            layoutParams.f3980d = 0;
        } else if (z) {
            layoutParams.f3980d |= 4;
            if (m43863a(view, 3)) {
                this.f3963n.m43897a(view, -view.getWidth(), view.getTop());
            } else {
                this.f3964o.m43897a(view, getWidth(), view.getTop());
            }
        } else {
            m43856b(view, BitmapDescriptorFactory.HUE_RED);
            m43868a(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    /* renamed from: a */
    public final void m43861a(AbstractC0988c abstractC0988c) {
        if (abstractC0988c == null) {
            return;
        }
        if (this.f3939A == null) {
            this.f3939A = new ArrayList();
        }
        this.f3939A.add(abstractC0988c);
    }

    /* renamed from: a */
    final boolean m43863a(View view, int i) {
        return (m43852c(view) & i) == i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (!m43848d(childAt)) {
                this.f3951M.add(childAt);
            } else if (m43846e(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (!z) {
            int size = this.f3951M.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.f3951M.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.f3951M.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m43854c() != null || m43848d(view)) {
            C0926v.m44102c(view, 4);
        } else {
            C0926v.m44102c(view, 1);
        }
        if (!f3936b) {
            C0926v.m44123a(view, this.f3957h);
        }
    }

    /* renamed from: b */
    final View m43859b() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m43848d(childAt) && m43844f(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final View m43858b(int i) {
        int m44195a = C0908e.m44195a(i, C0926v.m44097f(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m43852c(childAt) & 7) == (m44195a & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: c */
    final int m43852c(View view) {
        return C0908e.m44195a(((LayoutParams) view.getLayoutParams()).f3977a, C0926v.m44097f(this));
    }

    /* renamed from: c */
    public void m43853c(int i) {
        View m43858b = m43858b(8388611);
        if (m43858b != null) {
            m43851c(m43858b, true);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m43849d(8388611));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f3978b);
        }
        this.f3961l = f;
        boolean m43885c = this.f3963n.m43885c();
        boolean m43885c2 = this.f3964o.m43885c();
        if (m43885c || m43885c2) {
            C0926v.m44101d(this);
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f3961l <= BitmapDescriptorFactory.HUE_RED) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return false;
            }
            View childAt = getChildAt(childCount);
            if (this.f3952N == null) {
                this.f3952N = new Rect();
            }
            childAt.getHitRect(this.f3952N);
            if (this.f3952N.contains((int) x, (int) y) && !m43842h(childAt)) {
                if (!childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(scrollX, scrollY);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.f3953O == null) {
                            this.f3953O = new Matrix();
                        }
                        matrix.invert(this.f3953O);
                        obtain.transform(this.f3953O);
                    }
                    z = childAt.dispatchGenericMotionEvent(obtain);
                    obtain.recycle();
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX2, scrollY2);
                    z = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX2, -scrollY2);
                }
                if (z) {
                    return true;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int height = getHeight();
        boolean m43842h = m43842h(view);
        int width = getWidth();
        int save = canvas.save();
        int i2 = 0;
        int i3 = width;
        if (m43842h) {
            int childCount = getChildCount();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i2 = i5;
                if (i4 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i4);
                int i6 = width;
                int i7 = i2;
                if (childAt != view) {
                    i6 = width;
                    i7 = i2;
                    if (childAt.getVisibility() == 0) {
                        Drawable background = childAt.getBackground();
                        i6 = width;
                        i7 = i2;
                        if (background != null && background.getOpacity() == -1) {
                            i6 = width;
                            i7 = i2;
                            if (m43848d(childAt)) {
                                i6 = width;
                                i7 = i2;
                                if (childAt.getHeight() >= height) {
                                    if (m43863a(childAt, 3)) {
                                        int right = childAt.getRight();
                                        i6 = width;
                                        i7 = i2;
                                        if (right > i2) {
                                            i7 = right;
                                            i6 = width;
                                        }
                                    } else {
                                        int left = childAt.getLeft();
                                        i6 = width;
                                        i7 = i2;
                                        if (left < width) {
                                            i6 = left;
                                            i7 = i2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i4++;
                width = i6;
                i5 = i7;
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i3 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f3961l;
        if (f > BitmapDescriptorFactory.HUE_RED && m43842h) {
            this.f3962m.setColor((this.f3960k & 16777215) | (((int) ((((-16777216) & i) >>> 24) * f)) << 24));
            canvas.drawRect(i2, BitmapDescriptorFactory.HUE_RED, i3, getHeight(), this.f3962m);
        } else if (this.f3943E != null && m43863a(view, 3)) {
            int intrinsicWidth = this.f3943E.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(right2 / this.f3963n.f3904h, 1.0f));
            this.f3943E.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f3943E.setAlpha((int) (max * 255.0f));
            this.f3943E.draw(canvas);
        } else if (this.f3944F != null && m43863a(view, 5)) {
            int intrinsicWidth2 = this.f3944F.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min((getWidth() - left2) / this.f3964o.f3904h, 1.0f));
            this.f3944F.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f3944F.setAlpha((int) (max2 * 255.0f));
            this.f3944F.draw(canvas);
        }
        return drawChild;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3969t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3969t = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.f3946H || this.f3942D == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f3945G) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop <= 0) {
            return;
        }
        this.f3942D.setBounds(0, 0, getWidth(), systemWindowInsetTop);
        this.f3942D.draw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r0 != 3) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094 A[LOOP:0: B:11:0x003c->B:22:0x0094, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008f A[SYNTHETIC] */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (m43859b() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View m43859b = m43859b();
            if (m43859b != null && m43865a(m43859b) == 0) {
                m43860a(false);
            }
            return m43859b != null;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        int i6;
        this.f3968s = true;
        int i7 = i3 - i;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m43842h(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m43863a(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (layoutParams.f3978b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i7 - ((int) (layoutParams.f3978b * f3));
                        f = (i7 - i5) / f3;
                    }
                    boolean z2 = f != layoutParams.f3978b;
                    int i10 = layoutParams.f3977a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        if (i12 < layoutParams.topMargin) {
                            i6 = layoutParams.topMargin;
                        } else {
                            i6 = i12;
                            if (i12 + measuredHeight > i11 - layoutParams.bottomMargin) {
                                i6 = (i11 - layoutParams.bottomMargin) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
                    } else if (i10 != 80) {
                        childAt.layout(i5, layoutParams.topMargin, measuredWidth + i5, layoutParams.topMargin + measuredHeight);
                    } else {
                        int i13 = i4 - i2;
                        childAt.layout(i5, (i13 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i13 - layoutParams.bottomMargin);
                    }
                    if (z2) {
                        m43864a(childAt, f);
                    }
                    int i14 = layoutParams.f3978b > BitmapDescriptorFactory.HUE_RED ? 0 : 4;
                    if (childAt.getVisibility() != i14) {
                        childAt.setVisibility(i14);
                    }
                }
            }
        }
        this.f3968s = false;
        this.f3969t = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L6;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View m43858b;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.openDrawerGravity != 0 && (m43858b = m43858b(savedState.openDrawerGravity)) != null) {
            m43851c(m43858b, true);
        }
        if (savedState.lockModeLeft != 3) {
            setDrawerLockMode(savedState.lockModeLeft, 3);
        }
        if (savedState.lockModeRight != 3) {
            setDrawerLockMode(savedState.lockModeRight, 5);
        }
        if (savedState.lockModeStart != 3) {
            setDrawerLockMode(savedState.lockModeStart, 8388611);
        }
        if (savedState.lockModeEnd == 3) {
            return;
        }
        setDrawerLockMode(savedState.lockModeEnd, 8388613);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m43850d();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            boolean z = true;
            boolean z2 = layoutParams.f3980d == 1;
            if (layoutParams.f3980d != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.openDrawerGravity = layoutParams.f3977a;
                break;
            }
        }
        savedState.lockModeLeft = this.f3970u;
        savedState.lockModeRight = this.f3971v;
        savedState.lockModeStart = this.f3972w;
        savedState.lockModeEnd = this.f3973x;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View m43854c;
        this.f3963n.m43888b(motionEvent);
        this.f3964o.m43888b(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f3940B = x;
            this.f3941C = y;
            this.f3974y = false;
            this.f3954c = false;
            return true;
        } else if (action != 1) {
            if (action != 3) {
                return true;
            }
            m43860a(true);
            this.f3974y = false;
            this.f3954c = false;
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            View m43890b = this.f3963n.m43890b((int) x2, (int) y2);
            if (m43890b != null && m43842h(m43890b)) {
                float f = x2 - this.f3940B;
                float f2 = y2 - this.f3941C;
                int i = this.f3963n.f3898b;
                if ((f * f) + (f2 * f2) < i * i && (m43854c = m43854c()) != null && m43865a(m43854c) != 2) {
                    z = false;
                    m43860a(z);
                    this.f3974y = false;
                    return true;
                }
            }
            z = true;
            m43860a(z);
            this.f3974y = false;
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.f3974y = z;
        if (z) {
            m43860a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f3968s) {
            super.requestLayout();
        }
    }

    public void setChildInsets(Object obj, boolean z) {
        this.f3945G = obj;
        this.f3946H = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.f3958i = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m43848d(childAt)) {
                C0926v.m44138a(childAt, this.f3958i);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0988c abstractC0988c) {
        List<AbstractC0988c> list;
        AbstractC0988c abstractC0988c2 = this.f3975z;
        if (abstractC0988c2 != null && abstractC0988c2 != null && (list = this.f3939A) != null) {
            list.remove(abstractC0988c2);
        }
        if (abstractC0988c != null) {
            m43861a(abstractC0988c);
        }
        this.f3975z = abstractC0988c;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        View m43858b;
        int m44195a = C0908e.m44195a(i2, C0926v.m44097f(this));
        if (i2 == 3) {
            this.f3970u = i;
        } else if (i2 == 5) {
            this.f3971v = i;
        } else if (i2 == 8388611) {
            this.f3972w = i;
        } else if (i2 == 8388613) {
            this.f3973x = i;
        }
        if (i != 0) {
            (m44195a == 3 ? this.f3963n : this.f3964o).m43910a();
        }
        if (i != 1) {
            if (i != 2 || (m43858b = m43858b(m44195a)) == null) {
                return;
            }
            m43851c(m43858b, true);
            return;
        }
        View m43858b2 = m43858b(m44195a);
        if (m43858b2 == null) {
            return;
        }
        m43862a(m43858b2, true);
    }

    public void setDrawerLockMode(int i, View view) {
        if (m43848d(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).f3977a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(int i, int i2) {
        setDrawerShadow(C0790b.m44502a(getContext(), i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (f3938g) {
            return;
        }
        if ((i & 8388611) == 8388611) {
            this.f3947I = drawable;
        } else if ((i & 8388613) == 8388613) {
            this.f3948J = drawable;
        } else if ((i & 3) == 3) {
            this.f3949K = drawable;
        } else if ((i & 5) != 5) {
            return;
        } else {
            this.f3950L = drawable;
        }
        m43850d();
        invalidate();
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        int m44195a = C0908e.m44195a(i, C0926v.m44097f(this));
        if (m44195a == 3) {
            this.f3955d = charSequence;
        } else if (m44195a != 5) {
        } else {
            this.f3956e = charSequence;
        }
    }

    public void setScrimColor(int i) {
        this.f3960k = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f3942D = i != 0 ? C0790b.m44502a(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f3942D = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f3942D = new ColorDrawable(i);
        invalidate();
    }
}
