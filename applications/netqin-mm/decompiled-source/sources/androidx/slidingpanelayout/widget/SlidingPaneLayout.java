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
import androidx.customview.view.AbsSavedState;
import com.google.logging.type.LogSeverity;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p054p.C0949a;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.p055d0.C0970c;
import p012b.p059k.p060a.C1043a;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: a */
    public int f2714a;

    /* renamed from: b */
    public int f2715b;

    /* renamed from: c */
    public Drawable f2716c;

    /* renamed from: d */
    public Drawable f2717d;

    /* renamed from: e */
    public final int f2718e;

    /* renamed from: f */
    public boolean f2719f;

    /* renamed from: g */
    public View f2720g;

    /* renamed from: h */
    public float f2721h;

    /* renamed from: i */
    public float f2722i;

    /* renamed from: j */
    public int f2723j;

    /* renamed from: k */
    public boolean f2724k;

    /* renamed from: l */
    public int f2725l;

    /* renamed from: m */
    public float f2726m;

    /* renamed from: n */
    public float f2727n;

    /* renamed from: o */
    public AbstractC0540d f2728o;

    /* renamed from: p */
    public final C1043a f2729p;

    /* renamed from: q */
    public boolean f2730q;

    /* renamed from: r */
    public boolean f2731r;

    /* renamed from: s */
    public final Rect f2732s;

    /* renamed from: t */
    public final ArrayList<RunnableC0538b> f2733t;

    /* renamed from: u */
    public Method f2734u;

    /* renamed from: v */
    public Field f2735v;

    /* renamed from: w */
    public boolean f2736w;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: e */
        public static final int[] f2737e = {16843137};

        /* renamed from: a */
        public float f2738a;

        /* renamed from: b */
        public boolean f2739b;

        /* renamed from: c */
        public boolean f2740c;

        /* renamed from: d */
        public Paint f2741d;

        public LayoutParams() {
            super(-1, -1);
            this.f2738a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2738a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2737e);
            this.f2738a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2738a = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2738a = 0.0f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0536a();

        /* renamed from: c */
        public boolean f2742c;

        /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$a.class */
        public static final class C0536a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2742c = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2742c ? 1 : 0);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$a.class */
    public class C0537a extends C0949a {

        /* renamed from: d */
        public final Rect f2743d = new Rect();

        public C0537a() {
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public void mo31581a(View view, C0970c cVar) {
            C0970c a = C0970c.m35374a(cVar);
            super.mo31581a(view, a);
            m37028a(cVar, a);
            a.m35319x();
            cVar.m35373a((CharSequence) SlidingPaneLayout.class.getName());
            cVar.m35344f(view);
            ViewParent q = C1002u.m35205q(view);
            if (q instanceof View) {
                cVar.m35348e((View) q);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!m37027c(childAt) && childAt.getVisibility() == 0) {
                    C1002u.m35217f(childAt, 1);
                    cVar.m35377a(childAt);
                }
            }
        }

        /* renamed from: a */
        public final void m37028a(C0970c cVar, C0970c cVar2) {
            Rect rect = this.f2743d;
            cVar2.m35380a(rect);
            cVar.m35358c(rect);
            cVar2.m35366b(rect);
            cVar.m35353d(rect);
            cVar.m35331l(cVar2.m35320w());
            cVar.m35356c(cVar2.m35340h());
            cVar.m35373a(cVar2.m35354d());
            cVar.m35363b(cVar2.m35349e());
            cVar.m35350d(cVar2.m35327p());
            cVar.m35355c(cVar2.m35328o());
            cVar.m35346e(cVar2.m35326q());
            cVar.m35343f(cVar2.m35325r());
            cVar.m35369a(cVar2.m35332l());
            cVar.m35333k(cVar2.m35321v());
            cVar.m35339h(cVar2.m35324s());
            cVar.m35383a(cVar2.m35360c());
            cVar.m35367b(cVar2.m35342g());
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31580a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!m37027c(view)) {
                return super.mo31580a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: b */
        public void mo31579b(View view, AccessibilityEvent accessibilityEvent) {
            super.mo31579b(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        /* renamed from: c */
        public boolean m37027c(View view) {
            return SlidingPaneLayout.this.m37032e(view);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$b.class */
    public class RunnableC0538b implements Runnable {

        /* renamed from: a */
        public final View f2745a;

        public RunnableC0538b(View view) {
            this.f2745a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2745a.getParent() == SlidingPaneLayout.this) {
                this.f2745a.setLayerType(0, null);
                SlidingPaneLayout.this.m37034d(this.f2745a);
            }
            SlidingPaneLayout.this.f2733t.remove(this);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$c.class */
    public class C0539c extends C1043a.AbstractC1046c {
        public C0539c() {
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public int mo35028a(View view) {
            return SlidingPaneLayout.this.f2723j;
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public int mo35025a(View view, int i, int i2) {
            int i3;
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f2720g.getLayoutParams();
            if (SlidingPaneLayout.this.m37040b()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + SlidingPaneLayout.this.f2720g.getWidth());
                i3 = Math.max(Math.min(i, width), width - SlidingPaneLayout.this.f2723j);
            } else {
                int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                i3 = Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.f2723j + paddingLeft);
            }
            return i3;
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public void mo35029a(int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.f2729p.m35061a(slidingPaneLayout.f2720g, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x009e, code lost:
            if (r4.f2747a.f2721h > 0.5f) goto L_0x00a1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
            if (r4.f2747a.f2721h > 0.5f) goto L_0x0043;
         */
        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo35027a(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r0 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r0
                r8 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                boolean r0 = r0.m37040b()
                if (r0 == 0) goto L_0x006d
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
                if (r0 < 0) goto L_0x0043
                r0 = r9
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x004f
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f2721h
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x004f
            L_0x0043:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f2723j
                int r0 = r0 + r1
                r10 = r0
            L_0x004f:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                android.view.View r0 = r0.f2720g
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
                goto L_0x00ad
            L_0x006d:
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
                if (r0 > 0) goto L_0x00a1
                r0 = r9
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x00ad
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f2721h
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00ad
            L_0x00a1:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f2723j
                int r0 = r0 + r1
                r10 = r0
            L_0x00ad:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                b.k.a.a r0 = r0.f2729p
                r1 = r10
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m35036e(r1, r2)
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.C0539c.mo35027a(android.view.View, float, float):void");
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public void mo35026a(View view, int i) {
            SlidingPaneLayout.this.m37031f();
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public void mo35024a(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.m37044a(i);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: b */
        public int mo35019b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: b */
        public boolean mo35020b(View view, int i) {
            if (SlidingPaneLayout.this.f2724k) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f2739b;
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: c */
        public void mo35018c(int i) {
            if (SlidingPaneLayout.this.f2729p.m35033g() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f2721h == 0.0f) {
                    slidingPaneLayout.m37030f(slidingPaneLayout.f2720g);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.m37043a(slidingPaneLayout2.f2720g);
                    SlidingPaneLayout.this.f2730q = false;
                    return;
                }
                slidingPaneLayout.m37039b(slidingPaneLayout.f2720g);
                SlidingPaneLayout.this.f2730q = true;
            }
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$d.class */
    public interface AbstractC0540d {
        /* renamed from: a */
        void m37026a(View view);

        /* renamed from: a */
        void m37025a(View view, float f);

        /* renamed from: b */
        void m37024b(View view);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2714a = -858993460;
        this.f2731r = true;
        this.f2732s = new Rect();
        this.f2733t = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f2718e = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        C1002u.m35238a(this, new C0537a());
        C1002u.m35217f(this, 1);
        C1043a a = C1043a.m35058a(this, 0.5f, new C0539c());
        this.f2729p = a;
        a.m35054b(f * 400.0f);
    }

    /* renamed from: g */
    public static boolean m37029g(View view) {
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37046a(float r6) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m37046a(float):void");
    }

    /* renamed from: a */
    public void m37044a(int i) {
        if (this.f2720g == null) {
            this.f2721h = 0.0f;
            return;
        }
        boolean b = m37040b();
        LayoutParams layoutParams = (LayoutParams) this.f2720g.getLayoutParams();
        int width = this.f2720g.getWidth();
        int i2 = i;
        if (b) {
            i2 = (getWidth() - i) - width;
        }
        float paddingRight = (i2 - ((b ? getPaddingRight() : getPaddingLeft()) + (b ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f2723j;
        this.f2721h = paddingRight;
        if (this.f2725l != 0) {
            m37046a(paddingRight);
        }
        if (layoutParams.f2740c) {
            m37042a(this.f2720g, this.f2721h, this.f2714a);
        }
        m37036c(this.f2720g);
    }

    /* renamed from: a */
    public void m37043a(View view) {
        AbstractC0540d dVar = this.f2728o;
        if (dVar != null) {
            dVar.m37024b(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: a */
    public final void m37042a(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f);
            if (layoutParams.f2741d == null) {
                layoutParams.f2741d = new Paint();
            }
            layoutParams.f2741d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f2741d);
            }
            m37034d(view);
        } else if (view.getLayerType() != 0) {
            Paint paint = layoutParams.f2741d;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            RunnableC0538b bVar = new RunnableC0538b(view);
            this.f2733t.add(bVar);
            C1002u.m35234a(this, bVar);
        }
    }

    /* renamed from: a */
    public boolean m37047a() {
        return m37041a(this.f2720g, 0);
    }

    /* renamed from: a */
    public boolean m37045a(float f, int i) {
        int i2;
        if (!this.f2719f) {
            return false;
        }
        boolean b = m37040b();
        LayoutParams layoutParams = (LayoutParams) this.f2720g.getLayoutParams();
        if (b) {
            i2 = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f * this.f2723j)) + this.f2720g.getWidth()));
        } else {
            i2 = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f * this.f2723j));
        }
        C1043a aVar = this.f2729p;
        View view = this.f2720g;
        if (!aVar.m35046b(view, i2, view.getTop())) {
            return false;
        }
        m37031f();
        C1002u.m35254C(this);
        return true;
    }

    /* renamed from: a */
    public final boolean m37041a(View view, int i) {
        if (!this.f2731r && !m37045a(0.0f, i)) {
            return false;
        }
        this.f2730q = false;
        return true;
    }

    /* renamed from: b */
    public void m37039b(View view) {
        AbstractC0540d dVar = this.f2728o;
        if (dVar != null) {
            dVar.m37026a(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: b */
    public boolean m37040b() {
        boolean z = true;
        if (C1002u.m35208n(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m37038b(View view, int i) {
        if (!this.f2731r && !m37045a(1.0f, i)) {
            return false;
        }
        this.f2730q = true;
        return true;
    }

    /* renamed from: c */
    public void m37036c(View view) {
        AbstractC0540d dVar = this.f2728o;
        if (dVar != null) {
            dVar.m37025a(view, this.f2721h);
        }
    }

    /* renamed from: c */
    public boolean m37037c() {
        return !this.f2719f || this.f2721h == 1.0f;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.f2729p.m35056a(true)) {
            return;
        }
        if (!this.f2719f) {
            this.f2729p.m35073a();
        } else {
            C1002u.m35254C(this);
        }
    }

    /* renamed from: d */
    public void m37034d(View view) {
        Field field;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            C1002u.m35242a(view, ((LayoutParams) view.getLayoutParams()).f2741d);
            return;
        }
        if (i >= 16) {
            if (!this.f2736w) {
                try {
                    this.f2734u = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f2735v = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.f2736w = true;
            }
            if (this.f2734u == null || (field = this.f2735v) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.f2734u.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        C1002u.m35245a(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: d */
    public boolean m37035d() {
        return this.f2719f;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m37040b() ? this.f2717d : this.f2716c;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (m37040b()) {
                i2 = childAt.getRight();
                i = intrinsicWidth + i2;
            } else {
                int left = childAt.getLeft();
                i2 = left - intrinsicWidth;
                i = left;
            }
            drawable.setBounds(i2, top, i, bottom);
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f2719f && !layoutParams.f2739b && this.f2720g != null) {
            canvas.getClipBounds(this.f2732s);
            if (m37040b()) {
                Rect rect = this.f2732s;
                rect.left = Math.max(rect.left, this.f2720g.getRight());
            } else {
                Rect rect2 = this.f2732s;
                rect2.right = Math.min(rect2.right, this.f2720g.getLeft());
            }
            canvas.clipRect(this.f2732s);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* renamed from: e */
    public boolean m37033e() {
        return m37038b(this.f2720g, 0);
    }

    /* renamed from: e */
    public boolean m37032e(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = false;
        if (this.f2719f) {
            z = false;
            if (layoutParams.f2740c) {
                z = false;
                if (this.f2721h > 0.0f) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public void m37031f() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* renamed from: f */
    public void m37030f(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        View childAt;
        boolean b = m37040b();
        int width = b ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = b ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        if (view == null || !m37029g(view)) {
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
                childAt.setVisibility((Math.max(b ? paddingLeft : width, childAt.getLeft()) < i4 || Math.max(paddingTop, childAt.getTop()) < i2 || Math.min(b ? width : paddingLeft, childAt.getRight()) > i3 || Math.min(height - paddingBottom, childAt.getBottom()) > i) ? 0 : 4);
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.f2715b;
    }

    public int getParallaxDistance() {
        return this.f2725l;
    }

    public int getSliderFadeColor() {
        return this.f2714a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2731r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2731r = true;
        int size = this.f2733t.size();
        for (int i = 0; i < size; i++) {
            this.f2733t.get(i).run();
        }
        this.f2733t.clear();
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean b = m37040b();
        if (b) {
            this.f2729p.m35032g(2);
        } else {
            this.f2729p.m35032g(1);
        }
        int i9 = i3 - i;
        int paddingRight = b ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = b ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f2731r) {
            this.f2721h = (!this.f2719f || !this.f2730q) ? 0.0f : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f2739b) {
                    int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int i14 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i14 - this.f2718e) - i10) - (i12 + i13);
                    this.f2723j = min;
                    int i15 = b ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f2740c = ((i10 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (min * this.f2721h);
                    i10 += i15 + i16;
                    this.f2721h = i16 / this.f2723j;
                    i5 = 0;
                } else if (!this.f2719f || (i8 = this.f2725l) == 0) {
                    i10 = paddingRight;
                    i5 = 0;
                } else {
                    i5 = (int) ((1.0f - this.f2721h) * i8);
                    i10 = paddingRight;
                }
                if (b) {
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
        if (this.f2731r) {
            if (this.f2719f) {
                if (this.f2725l != 0) {
                    m37046a(this.f2721h);
                }
                if (((LayoutParams) this.f2720g.getLayoutParams()).f2740c) {
                    m37042a(this.f2720g, this.f2721h, this.f2714a);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    m37042a(getChildAt(i17), 0.0f, this.f2714a);
                }
            }
            m37030f(this.f2720g);
        }
        this.f2731r = false;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            i4 = size;
            i3 = mode2;
            i5 = size2;
            if (mode2 == 0) {
                if (isInEditMode()) {
                    i4 = size;
                    i3 = mode2;
                    i5 = size2;
                    if (mode2 == 0) {
                        i3 = Integer.MIN_VALUE;
                        i5 = LogSeverity.NOTICE_VALUE;
                        i4 = size;
                    }
                } else {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                }
            }
        } else if (!isInEditMode()) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        } else if (mode == Integer.MIN_VALUE) {
            i4 = size;
            i3 = mode2;
            i5 = size2;
        } else {
            i4 = size;
            i3 = mode2;
            i5 = size2;
            if (mode == 0) {
                i4 = LogSeverity.NOTICE_VALUE;
                i3 = mode2;
                i5 = size2;
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
        this.f2720g = null;
        int i10 = paddingLeft;
        boolean z = false;
        float f = 0.0f;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f2740c = false;
                i7 = i7;
            } else {
                float f2 = layoutParams.f2738a;
                f = f;
                if (f2 > 0.0f) {
                    f += f2;
                    f = f;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                        i7 = i7;
                    }
                }
                int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                int makeMeasureSpec = i13 == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i12, Integer.MIN_VALUE) : i13 == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                childAt.measure(makeMeasureSpec, i14 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i14 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i14, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                i7 = i7;
                if (i3 == Integer.MIN_VALUE) {
                    i7 = i7;
                    if (measuredHeight > i7) {
                        i7 = Math.min(measuredHeight, i6);
                    }
                }
                i10 -= measuredWidth;
                boolean z2 = i10 < 0;
                layoutParams.f2739b = z2;
                z |= z2;
                if (z2) {
                    this.f2720g = childAt;
                }
            }
        }
        if (z || f > 0.0f) {
            int i15 = paddingLeft - this.f2718e;
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt2 = getChildAt(i16);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z3 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.f2738a > 0.0f;
                        int measuredWidth2 = z3 ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.f2720g) {
                            if (layoutParams2.f2738a > 0.0f) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                    int i17 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    i8 = i17 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i17 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i17, 1073741824);
                                } else {
                                    i8 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                if (z) {
                                    int i18 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i18, 1073741824);
                                    if (measuredWidth2 != i18) {
                                        childAt2.measure(makeMeasureSpec2, i8);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.f2738a * Math.max(0, i10)) / f)), 1073741824), i8);
                                }
                            }
                        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth2 > i15 || layoutParams2.f2738a > 0.0f)) {
                            if (z3) {
                                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                i9 = i19 == -2 ? View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE) : i19 == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
                            } else {
                                i9 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i15, 1073741824), i9);
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, i7 + getPaddingTop() + getPaddingBottom());
        this.f2719f = z;
        if (!(this.f2729p.m35033g() == 0 || z)) {
            this.f2729p.m35073a();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m38516a());
        if (savedState.f2742c) {
            m37033e();
        } else {
            m37047a();
        }
        this.f2730q = savedState.f2742c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2742c = m37035d() ? m37037c() : this.f2730q;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f2731r = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f2719f) {
            return super.onTouchEvent(motionEvent);
        }
        this.f2729p.m35063a(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f2726m = x;
            this.f2727n = y;
            return true;
        } else if (actionMasked != 1 || !m37032e(this.f2720g)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f2726m;
            float f2 = y2 - this.f2727n;
            int f3 = this.f2729p.m35035f();
            if ((f * f) + (f2 * f2) >= f3 * f3 || !this.f2729p.m35060a(this.f2720g, (int) x2, (int) y2)) {
                return true;
            }
            m37041a(this.f2720g, 0);
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.f2719f) {
            this.f2730q = view == this.f2720g;
        }
    }

    public void setCoveredFadeColor(int i) {
        this.f2715b = i;
    }

    public void setPanelSlideListener(AbstractC0540d dVar) {
        this.f2728o = dVar;
    }

    public void setParallaxDistance(int i) {
        this.f2725l = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.f2716c = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.f2717d = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(C0869a.m35684c(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(C0869a.m35684c(getContext(), i));
    }

    public void setSliderFadeColor(int i) {
        this.f2714a = i;
    }
}
