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
import androidx.core.content.C0790b;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.customview.p039a.C0972c;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: a */
    int f10498a;

    /* renamed from: b */
    View f10499b;

    /* renamed from: c */
    float f10500c;

    /* renamed from: d */
    int f10501d;

    /* renamed from: e */
    boolean f10502e;

    /* renamed from: f */
    int f10503f;

    /* renamed from: g */
    final C0972c f10504g;

    /* renamed from: h */
    boolean f10505h;

    /* renamed from: i */
    final ArrayList<RunnableC2778b> f10506i;

    /* renamed from: j */
    private int f10507j;

    /* renamed from: k */
    private Drawable f10508k;

    /* renamed from: l */
    private Drawable f10509l;

    /* renamed from: m */
    private final int f10510m;

    /* renamed from: n */
    private boolean f10511n;

    /* renamed from: o */
    private float f10512o;

    /* renamed from: p */
    private float f10513p;

    /* renamed from: q */
    private float f10514q;

    /* renamed from: r */
    private AbstractC2780d f10515r;

    /* renamed from: s */
    private boolean f10516s;

    /* renamed from: t */
    private final Rect f10517t;

    /* renamed from: u */
    private Method f10518u;

    /* renamed from: v */
    private Field f10519v;

    /* renamed from: w */
    private boolean f10520w;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: e */
        private static final int[] f10521e = {16843137};

        /* renamed from: a */
        public float f10522a;

        /* renamed from: b */
        boolean f10523b;

        /* renamed from: c */
        boolean f10524c;

        /* renamed from: d */
        Paint f10525d;

        public LayoutParams() {
            super(-1, -1);
            this.f10522a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f10522a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f10522a = BitmapDescriptorFactory.HUE_RED;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f10521e);
            this.f10522a = obtainStyledAttributes.getFloat(0, BitmapDescriptorFactory.HUE_RED);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f10522a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f10522a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f10522a = BitmapDescriptorFactory.HUE_RED;
            this.f10522a = layoutParams.f10522a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean isOpen;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isOpen = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isOpen ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$a.class */
    public final class C2777a extends C0865a {

        /* renamed from: c */
        private final Rect f10527c = new Rect();

        C2777a() {
            SlidingPaneLayout.this = r5;
        }

        /* renamed from: c */
        private boolean m39916c(View view) {
            return SlidingPaneLayout.this.m39918c(view);
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            C0869c m44276a = C0869c.m44276a(c0869c);
            super.mo9886a(view, m44276a);
            Rect rect = this.f10527c;
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
            int movementGranularities = Build.VERSION.SDK_INT >= 16 ? m44276a.f3644a.getMovementGranularities() : 0;
            if (Build.VERSION.SDK_INT >= 16) {
                c0869c.f3644a.setMovementGranularities(movementGranularities);
            }
            m44276a.f3644a.recycle();
            c0869c.m44265b((CharSequence) SlidingPaneLayout.class.getName());
            c0869c.m44268b(view);
            ViewParent m44095g = C0926v.m44095g(view);
            if (m44095g instanceof View) {
                c0869c.m44255d((View) m44095g);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!m39916c(childAt) && childAt.getVisibility() == 0) {
                    C0926v.m44102c(childAt, 1);
                    c0869c.m44260c(childAt);
                }
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final boolean mo39917a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!m39916c(view)) {
                return super.mo39917a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: d */
        public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo10621d(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$b.class */
    public final class RunnableC2778b implements Runnable {

        /* renamed from: a */
        final View f10528a;

        RunnableC2778b(View view) {
            SlidingPaneLayout.this = r4;
            this.f10528a = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f10528a.getParent() == SlidingPaneLayout.this) {
                this.f10528a.setLayerType(0, null);
                SlidingPaneLayout.this.m39920b(this.f10528a);
            }
            SlidingPaneLayout.this.f10506i.remove(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$c.class */
    public final class C2779c extends C0972c.AbstractC0975a {
        C2779c() {
            SlidingPaneLayout.this = r4;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final int mo11217a(View view) {
            return SlidingPaneLayout.this.f10501d;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11096a(int i) {
            if (SlidingPaneLayout.this.f10504g.f3897a == 0) {
                if (SlidingPaneLayout.this.f10500c != BitmapDescriptorFactory.HUE_RED) {
                    SlidingPaneLayout.this.sendAccessibilityEvent(32);
                    SlidingPaneLayout.this.f10505h = true;
                    return;
                }
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.m39924a(slidingPaneLayout.f10499b);
                SlidingPaneLayout.this.sendAccessibilityEvent(32);
                SlidingPaneLayout.this.f10505h = false;
            }
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo39915a(int i, int i2) {
            SlidingPaneLayout.this.f10504g.m43898a(SlidingPaneLayout.this.f10499b, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x00a1, code lost:
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f10500c > 0.5f) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f10500c > 0.5f) goto L10;
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
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r0 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r0
                r8 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                boolean r0 = r0.m39922b()
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
                float r0 = r0.f10500c
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L4f
            L43:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f10501d
                int r0 = r0 + r1
                r10 = r0
            L4f:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                android.view.View r0 = r0.f10499b
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
                float r0 = r0.f10500c
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto Lb0
            La4:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f10501d
                int r0 = r0 + r1
                r10 = r0
            Lb0:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                androidx.customview.a.c r0 = r0.f10504g
                r1 = r10
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m43903a(r1, r2)
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.C2779c.mo11095a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11216a(View view, int i) {
            SlidingPaneLayout.this.m39926a();
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11094a(View view, int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.f10499b == null) {
                slidingPaneLayout.f10500c = BitmapDescriptorFactory.HUE_RED;
            } else {
                boolean m39922b = slidingPaneLayout.m39922b();
                LayoutParams layoutParams = (LayoutParams) slidingPaneLayout.f10499b.getLayoutParams();
                int width = slidingPaneLayout.f10499b.getWidth();
                int i3 = i;
                if (m39922b) {
                    i3 = (slidingPaneLayout.getWidth() - i) - width;
                }
                slidingPaneLayout.f10500c = (i3 - ((m39922b ? slidingPaneLayout.getPaddingRight() : slidingPaneLayout.getPaddingLeft()) + (m39922b ? layoutParams.rightMargin : layoutParams.leftMargin))) / slidingPaneLayout.f10501d;
                if (slidingPaneLayout.f10503f != 0) {
                    slidingPaneLayout.m39925a(slidingPaneLayout.f10500c);
                }
                if (layoutParams.f10524c) {
                    slidingPaneLayout.m39923a(slidingPaneLayout.f10499b, slidingPaneLayout.f10500c, slidingPaneLayout.f10498a);
                }
            }
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: b */
        public final boolean mo11092b(View view, int i) {
            if (SlidingPaneLayout.this.f10502e) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f10523b;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: c */
        public final int mo11091c(View view, int i) {
            int i2;
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f10499b.getLayoutParams();
            if (SlidingPaneLayout.this.m39922b()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + layoutParams.rightMargin) + SlidingPaneLayout.this.f10499b.getWidth());
                i2 = Math.max(Math.min(i, width), width - SlidingPaneLayout.this.f10501d);
            } else {
                int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + layoutParams.leftMargin;
                i2 = Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.f10501d + paddingLeft);
            }
            return i2;
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: d */
        public final int mo11090d(View view, int i) {
            return view.getTop();
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$d.class */
    public interface AbstractC2780d {
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10498a = -858993460;
        this.f10516s = true;
        this.f10517t = new Rect();
        this.f10506i = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f10510m = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        C0926v.m44123a(this, new C2777a());
        C0926v.m44102c((View) this, 1);
        C0972c m43895a = C0972c.m43895a(this, 0.5f, new C2779c());
        this.f10504g = m43895a;
        m43895a.f3903g = f * 400.0f;
    }

    /* renamed from: b */
    private boolean m39921b(float f) {
        int i;
        if (!this.f10511n) {
            return false;
        }
        boolean m39922b = m39922b();
        LayoutParams layoutParams = (LayoutParams) this.f10499b.getLayoutParams();
        if (m39922b) {
            i = (int) (getWidth() - (((getPaddingRight() + layoutParams.rightMargin) + (f * this.f10501d)) + this.f10499b.getWidth()));
        } else {
            i = (int) (getPaddingLeft() + layoutParams.leftMargin + (f * this.f10501d));
        }
        C0972c c0972c = this.f10504g;
        View view = this.f10499b;
        if (!c0972c.m43897a(view, i, view.getTop())) {
            return false;
        }
        m39926a();
        C0926v.m44101d(this);
        return true;
    }

    /* renamed from: c */
    private boolean m39919c() {
        if (this.f10516s || m39921b(BitmapDescriptorFactory.HUE_RED)) {
            this.f10505h = false;
            return true;
        }
        return false;
    }

    /* renamed from: a */
    final void m39926a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m39925a(float r6) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m39925a(float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014e A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m39924a(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m39924a(android.view.View):void");
    }

    /* renamed from: a */
    final void m39923a(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f <= BitmapDescriptorFactory.HUE_RED || i == 0) {
            if (view.getLayerType() == 0) {
                return;
            }
            if (layoutParams.f10525d != null) {
                layoutParams.f10525d.setColorFilter(null);
            }
            RunnableC2778b runnableC2778b = new RunnableC2778b(view);
            this.f10506i.add(runnableC2778b);
            C0926v.m44117a(this, runnableC2778b);
            return;
        }
        int i2 = (int) ((((-16777216) & i) >>> 24) * f);
        if (layoutParams.f10525d == null) {
            layoutParams.f10525d = new Paint();
        }
        layoutParams.f10525d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
        if (view.getLayerType() != 2) {
            view.setLayerType(2, layoutParams.f10525d);
        }
        m39920b(view);
    }

    /* renamed from: b */
    final void m39920b(View view) {
        Field field;
        if (Build.VERSION.SDK_INT >= 17) {
            C0926v.m44131a(view, ((LayoutParams) view.getLayoutParams()).f10525d);
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (!this.f10520w) {
                try {
                    this.f10518u = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f10519v = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.f10520w = true;
            }
            if (this.f10518u == null || (field = this.f10519v) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.f10518u.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        C0926v.m44135a(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: b */
    final boolean m39922b() {
        return C0926v.m44097f(this) == 1;
    }

    /* renamed from: c */
    final boolean m39918c(View view) {
        if (view == null) {
            return false;
        }
        return this.f10511n && ((LayoutParams) view.getLayoutParams()).f10524c && this.f10500c > BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f10504g.m43885c()) {
            if (!this.f10511n) {
                this.f10504g.m43893b();
            } else {
                C0926v.m44101d(this);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m39922b() ? this.f10509l : this.f10508k;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (m39922b()) {
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
        if (this.f10511n && !layoutParams.f10523b && this.f10499b != null) {
            canvas.getClipBounds(this.f10517t);
            if (m39922b()) {
                Rect rect = this.f10517t;
                rect.left = Math.max(rect.left, this.f10499b.getRight());
            } else {
                Rect rect2 = this.f10517t;
                rect2.right = Math.min(rect2.right, this.f10499b.getLeft());
            }
            canvas.clipRect(this.f10517t);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
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

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f10516s = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f10516s = true;
        int size = this.f10506i.size();
        for (int i = 0; i < size; i++) {
            this.f10506i.get(i).run();
        }
        this.f10506i.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f10511n && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f10505h = !C0972c.m43886b(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f10511n || (this.f10502e && actionMasked != 0)) {
            this.f10504g.m43910a();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.f10504g.m43910a();
            return false;
        } else {
            if (actionMasked == 0) {
                this.f10502e = false;
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.f10513p = x;
                this.f10514q = y;
                if (C0972c.m43886b(this.f10499b, (int) x, (int) y) && m39918c(this.f10499b)) {
                    z = true;
                    return this.f10504g.m43900a(motionEvent) || z;
                }
            } else if (actionMasked == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float abs = Math.abs(x2 - this.f10513p);
                float abs2 = Math.abs(y2 - this.f10514q);
                if (abs > this.f10504g.f3898b && abs2 > abs) {
                    this.f10504g.m43910a();
                    this.f10502e = true;
                    return false;
                }
            }
            z = false;
            if (this.f10504g.m43900a(motionEvent)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean m39922b = m39922b();
        if (m39922b) {
            this.f10504g.f3905i = 2;
        } else {
            this.f10504g.f3905i = 1;
        }
        int i9 = i3 - i;
        int paddingRight = m39922b ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = m39922b ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f10516s) {
            this.f10500c = (!this.f10511n || !this.f10505h) ? 0.0f : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f10523b) {
                    int i12 = layoutParams.leftMargin;
                    int i13 = layoutParams.rightMargin;
                    int i14 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i14 - this.f10510m) - i10) - (i12 + i13);
                    this.f10501d = min;
                    int i15 = m39922b ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.f10524c = ((i10 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (min * this.f10500c);
                    i10 += i15 + i16;
                    this.f10500c = i16 / this.f10501d;
                    i5 = 0;
                } else {
                    i5 = (!this.f10511n || (i8 = this.f10503f) == 0) ? 0 : (int) ((1.0f - this.f10500c) * i8);
                    i10 = paddingRight;
                }
                if (m39922b) {
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
        if (this.f10516s) {
            if (this.f10511n) {
                if (this.f10503f != 0) {
                    m39925a(this.f10500c);
                }
                if (((LayoutParams) this.f10499b.getLayoutParams()).f10524c) {
                    m39923a(this.f10499b, this.f10500c, this.f10498a);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    m39923a(getChildAt(i17), BitmapDescriptorFactory.HUE_RED, this.f10498a);
                }
            }
            m39924a(this.f10499b);
        }
        this.f10516s = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
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
            i4 = size;
            i3 = mode2;
            i5 = size2;
            if (mode != Integer.MIN_VALUE) {
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
        this.f10499b = null;
        int i10 = paddingLeft;
        int i11 = 0;
        boolean z2 = false;
        float f = 0.0f;
        int i12 = i7;
        while (i11 < childCount) {
            View childAt = getChildAt(i11);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f10524c = false;
                i8 = i12;
                z = z2;
                i9 = i10;
            } else {
                float f2 = f;
                if (layoutParams.f10522a > BitmapDescriptorFactory.HUE_RED) {
                    f2 = f + layoutParams.f10522a;
                    i8 = i12;
                    z = z2;
                    f = f2;
                    i9 = i10;
                    if (layoutParams.width == 0) {
                    }
                }
                int i13 = layoutParams.leftMargin + layoutParams.rightMargin;
                childAt.measure(layoutParams.width == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), layoutParams.height == -2 ? View.MeasureSpec.makeMeasureSpec(i6, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i14 = i12;
                if (i3 == Integer.MIN_VALUE) {
                    i14 = i12;
                    if (measuredHeight > i12) {
                        i14 = Math.min(measuredHeight, i6);
                    }
                }
                int i15 = i10 - measuredWidth;
                boolean z3 = i15 < 0;
                layoutParams.f10523b = z3;
                boolean z4 = z2 | z3;
                i8 = i14;
                z = z4;
                f = f2;
                i9 = i15;
                if (layoutParams.f10523b) {
                    this.f10499b = childAt;
                    i9 = i15;
                    f = f2;
                    z = z4;
                    i8 = i14;
                }
            }
            i11++;
            i12 = i8;
            z2 = z;
            i10 = i9;
        }
        if (z2 || f > BitmapDescriptorFactory.HUE_RED) {
            int i16 = paddingLeft - this.f10510m;
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt2 = getChildAt(i17);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z5 = layoutParams2.width == 0 && layoutParams2.f10522a > BitmapDescriptorFactory.HUE_RED;
                        int measuredWidth2 = z5 ? 0 : childAt2.getMeasuredWidth();
                        if (!z2 || childAt2 == this.f10499b) {
                            if (layoutParams2.f10522a > BitmapDescriptorFactory.HUE_RED) {
                                int makeMeasureSpec = layoutParams2.width == 0 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(i6, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                if (z2) {
                                    int i18 = paddingLeft - (layoutParams2.leftMargin + layoutParams2.rightMargin);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i18, 1073741824);
                                    if (measuredWidth2 != i18) {
                                        childAt2.measure(makeMeasureSpec2, makeMeasureSpec);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.f10522a * Math.max(0, i10)) / f)), 1073741824), makeMeasureSpec);
                                }
                            }
                        } else if (layoutParams2.width < 0 && (measuredWidth2 > i16 || layoutParams2.f10522a > BitmapDescriptorFactory.HUE_RED)) {
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i16, 1073741824), z5 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(i6, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, i12 + getPaddingTop() + getPaddingBottom());
        this.f10511n = z2;
        if (this.f10504g.f3897a == 0 || z2) {
            return;
        }
        this.f10504g.m43893b();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.isOpen) {
            m39919c();
        } else if (this.f10516s || m39921b(1.0f)) {
            this.f10505h = true;
        }
        this.f10505h = savedState.isOpen;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean z = this.f10511n;
        savedState.isOpen = z ? !z || this.f10500c == 1.0f : this.f10505h;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f10516s = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f10511n) {
            return super.onTouchEvent(motionEvent);
        }
        this.f10504g.m43888b(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f10513p = x;
            this.f10514q = y;
            return true;
        } else if (actionMasked != 1 || !m39918c(this.f10499b)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f10513p;
            float f2 = y2 - this.f10514q;
            int i = this.f10504g.f3898b;
            if ((f * f) + (f2 * f2) >= i * i || !C0972c.m43886b(this.f10499b, (int) x2, (int) y2)) {
                return true;
            }
            m39919c();
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f10511n) {
            return;
        }
        this.f10505h = view == this.f10499b;
    }

    public void setCoveredFadeColor(int i) {
        this.f10507j = i;
    }

    public void setPanelSlideListener(AbstractC2780d abstractC2780d) {
        this.f10515r = abstractC2780d;
    }

    public void setParallaxDistance(int i) {
        this.f10503f = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.f10508k = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.f10509l = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(C0790b.m44502a(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(C0790b.m44502a(getContext(), i));
    }

    public void setSliderFadeColor(int i) {
        this.f10498a = i;
    }
}
