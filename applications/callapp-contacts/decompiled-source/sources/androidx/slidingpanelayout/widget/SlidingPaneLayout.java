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
import androidx.core.view.v;
import androidx.customview.a.c;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    int f5614a;

    /* renamed from: b  reason: collision with root package name */
    View f5615b;

    /* renamed from: c  reason: collision with root package name */
    float f5616c;

    /* renamed from: d  reason: collision with root package name */
    int f5617d;
    boolean e;
    int f;
    final androidx.customview.a.c g;
    boolean h;
    final ArrayList<b> i;
    private int j;
    private Drawable k;
    private Drawable l;
    private final int m;
    private boolean n;
    private float o;
    private float p;
    private float q;
    private d r;
    private boolean s;
    private final Rect t;
    private Method u;
    private Field v;
    private boolean w;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] e = {16843137};

        /* renamed from: a  reason: collision with root package name */
        public float f5618a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5619b;

        /* renamed from: c  reason: collision with root package name */
        boolean f5620c;

        /* renamed from: d  reason: collision with root package name */
        Paint f5621d;

        public LayoutParams() {
            super(-1, -1);
            this.f5618a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f5618a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f5618a = BitmapDescriptorFactory.HUE_RED;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.f5618a = obtainStyledAttributes.getFloat(0, BitmapDescriptorFactory.HUE_RED);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f5618a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f5618a = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f5618a = BitmapDescriptorFactory.HUE_RED;
            this.f5618a = layoutParams.f5618a;
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

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$a.class */
    final class a extends androidx.core.view.a {

        /* renamed from: c  reason: collision with root package name */
        private final Rect f5623c = new Rect();

        a() {
        }

        private boolean c(View view) {
            return SlidingPaneLayout.this.c(view);
        }

        @Override // androidx.core.view.a
        public final void a(View view, androidx.core.view.a.c cVar) {
            androidx.core.view.a.c a2 = androidx.core.view.a.c.a(cVar);
            super.a(view, a2);
            Rect rect = this.f5623c;
            a2.a(rect);
            cVar.b(rect);
            a2.c(rect);
            cVar.d(rect);
            cVar.d(a2.b());
            cVar.a(a2.f1959a.getPackageName());
            cVar.b(a2.f1959a.getClassName());
            cVar.e(a2.f1959a.getContentDescription());
            cVar.i(a2.f1959a.isEnabled());
            cVar.g(a2.f1959a.isClickable());
            cVar.b(a2.f1959a.isFocusable());
            cVar.c(a2.f1959a.isFocused());
            cVar.e(a2.c());
            cVar.f(a2.f1959a.isSelected());
            cVar.h(a2.f1959a.isLongClickable());
            cVar.a(a2.f1959a.getActions());
            int movementGranularities = Build.VERSION.SDK_INT >= 16 ? a2.f1959a.getMovementGranularities() : 0;
            if (Build.VERSION.SDK_INT >= 16) {
                cVar.f1959a.setMovementGranularities(movementGranularities);
            }
            a2.f1959a.recycle();
            cVar.b((CharSequence) SlidingPaneLayout.class.getName());
            cVar.b(view);
            ViewParent g = v.g(view);
            if (g instanceof View) {
                cVar.d((View) g);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!c(childAt) && childAt.getVisibility() == 0) {
                    v.c(childAt, 1);
                    cVar.c(childAt);
                }
            }
        }

        @Override // androidx.core.view.a
        public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!c(view)) {
                return super.a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // androidx.core.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$b.class */
    public final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final View f5624a;

        b(View view) {
            this.f5624a = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f5624a.getParent() == SlidingPaneLayout.this) {
                this.f5624a.setLayerType(0, null);
                SlidingPaneLayout.this.b(this.f5624a);
            }
            SlidingPaneLayout.this.i.remove(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$c.class */
    final class c extends c.a {
        c() {
        }

        @Override // androidx.customview.a.c.a
        public final int a(View view) {
            return SlidingPaneLayout.this.f5617d;
        }

        @Override // androidx.customview.a.c.a
        public final void a(int i) {
            if (SlidingPaneLayout.this.g.f2082a != 0) {
                return;
            }
            if (SlidingPaneLayout.this.f5616c == BitmapDescriptorFactory.HUE_RED) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.a(slidingPaneLayout.f5615b);
                SlidingPaneLayout.this.sendAccessibilityEvent(32);
                SlidingPaneLayout.this.h = false;
                return;
            }
            SlidingPaneLayout.this.sendAccessibilityEvent(32);
            SlidingPaneLayout.this.h = true;
        }

        @Override // androidx.customview.a.c.a
        public final void a(int i, int i2) {
            SlidingPaneLayout.this.g.a(SlidingPaneLayout.this.f5615b, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x00a1, code lost:
            if (r4.f5626a.f5616c > 0.5f) goto L_0x00a4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
            if (r4.f5626a.f5616c > 0.5f) goto L_0x0043;
         */
        @Override // androidx.customview.a.c.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r0 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r0
                r8 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                boolean r0 = r0.b()
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
                float r0 = r0.f5616c
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x004f
            L_0x0043:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f5617d
                int r0 = r0 + r1
                r10 = r0
            L_0x004f:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                android.view.View r0 = r0.f5615b
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
                goto L_0x00b0
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
                r11 = r0
                r0 = r11
                if (r0 > 0) goto L_0x00a4
                r0 = r9
                r10 = r0
                r0 = r11
                if (r0 != 0) goto L_0x00b0
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f5616c
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00b0
            L_0x00a4:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f5617d
                int r0 = r0 + r1
                r10 = r0
            L_0x00b0:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                androidx.customview.a.c r0 = r0.g
                r1 = r10
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.a(r1, r2)
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.c.a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, int i) {
            SlidingPaneLayout.this.a();
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.f5615b == null) {
                slidingPaneLayout.f5616c = BitmapDescriptorFactory.HUE_RED;
            } else {
                boolean b2 = slidingPaneLayout.b();
                LayoutParams layoutParams = (LayoutParams) slidingPaneLayout.f5615b.getLayoutParams();
                int width = slidingPaneLayout.f5615b.getWidth();
                int i3 = i;
                if (b2) {
                    i3 = (slidingPaneLayout.getWidth() - i) - width;
                }
                slidingPaneLayout.f5616c = (i3 - ((b2 ? slidingPaneLayout.getPaddingRight() : slidingPaneLayout.getPaddingLeft()) + (b2 ? layoutParams.rightMargin : layoutParams.leftMargin))) / slidingPaneLayout.f5617d;
                if (slidingPaneLayout.f != 0) {
                    slidingPaneLayout.a(slidingPaneLayout.f5616c);
                }
                if (layoutParams.f5620c) {
                    slidingPaneLayout.a(slidingPaneLayout.f5615b, slidingPaneLayout.f5616c, slidingPaneLayout.f5614a);
                }
            }
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.a.c.a
        public final boolean b(View view, int i) {
            if (SlidingPaneLayout.this.e) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f5619b;
        }

        @Override // androidx.customview.a.c.a
        public final int c(View view, int i) {
            int i2;
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f5615b.getLayoutParams();
            if (SlidingPaneLayout.this.b()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + layoutParams.rightMargin) + SlidingPaneLayout.this.f5615b.getWidth());
                i2 = Math.max(Math.min(i, width), width - SlidingPaneLayout.this.f5617d);
            } else {
                int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + layoutParams.leftMargin;
                i2 = Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.f5617d + paddingLeft);
            }
            return i2;
        }

        @Override // androidx.customview.a.c.a
        public final int d(View view, int i) {
            return view.getTop();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$d.class */
    public interface d {
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5614a = -858993460;
        this.s = true;
        this.t = new Rect();
        this.i = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.m = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        v.a(this, new a());
        v.c((View) this, 1);
        androidx.customview.a.c a2 = androidx.customview.a.c.a(this, 0.5f, new c());
        this.g = a2;
        a2.g = f * 400.0f;
    }

    private boolean b(float f) {
        int i;
        if (!this.n) {
            return false;
        }
        boolean b2 = b();
        LayoutParams layoutParams = (LayoutParams) this.f5615b.getLayoutParams();
        if (b2) {
            i = (int) (getWidth() - (((getPaddingRight() + layoutParams.rightMargin) + (f * this.f5617d)) + this.f5615b.getWidth()));
        } else {
            i = (int) (getPaddingLeft() + layoutParams.leftMargin + (f * this.f5617d));
        }
        androidx.customview.a.c cVar = this.g;
        View view = this.f5615b;
        if (!cVar.a(view, i, view.getTop())) {
            return false;
        }
        a();
        v.d(this);
        return true;
    }

    private boolean c() {
        if (!this.s && !b(BitmapDescriptorFactory.HUE_RED)) {
            return false;
        }
        this.h = false;
        return true;
    }

    final void a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void a(float r6) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.a(float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void a(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.a(android.view.View):void");
    }

    final void a(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > BitmapDescriptorFactory.HUE_RED && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f);
            if (layoutParams.f5621d == null) {
                layoutParams.f5621d = new Paint();
            }
            layoutParams.f5621d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f5621d);
            }
            b(view);
        } else if (view.getLayerType() != 0) {
            if (layoutParams.f5621d != null) {
                layoutParams.f5621d.setColorFilter(null);
            }
            b bVar = new b(view);
            this.i.add(bVar);
            v.a(this, bVar);
        }
    }

    final void b(View view) {
        Field field;
        if (Build.VERSION.SDK_INT >= 17) {
            v.a(view, ((LayoutParams) view.getLayoutParams()).f5621d);
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (!this.w) {
                try {
                    this.u = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    Field declaredField = View.class.getDeclaredField("mRecreateDisplayList");
                    this.v = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.w = true;
            }
            if (this.u == null || (field = this.v) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.u.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        v.a(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    final boolean b() {
        return v.f(this) == 1;
    }

    final boolean c(View view) {
        if (view == null) {
            return false;
        }
        return this.n && ((LayoutParams) view.getLayoutParams()).f5620c && this.f5616c > BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.g.c()) {
            return;
        }
        if (!this.n) {
            this.g.b();
        } else {
            v.d(this);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = b() ? this.l : this.k;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (b()) {
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
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.n && !layoutParams.f5619b && this.f5615b != null) {
            canvas.getClipBounds(this.t);
            if (b()) {
                Rect rect = this.t;
                rect.left = Math.max(rect.left, this.f5615b.getRight());
            } else {
                Rect rect2 = this.t;
                rect2.right = Math.min(rect2.right, this.f5615b.getLeft());
            }
            canvas.clipRect(this.t);
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
        this.s = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.s = true;
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            this.i.get(i).run();
        }
        this.i.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.n && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.h = !androidx.customview.a.c.b(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.n || (this.e && actionMasked != 0)) {
            this.g.a();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.g.a();
            return false;
        } else {
            if (actionMasked == 0) {
                this.e = false;
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.p = x;
                this.q = y;
                if (androidx.customview.a.c.b(this.f5615b, (int) x, (int) y) && c(this.f5615b)) {
                    z = true;
                    return this.g.a(motionEvent) || z;
                }
            } else if (actionMasked == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float abs = Math.abs(x2 - this.p);
                float abs2 = Math.abs(y2 - this.q);
                if (abs > this.g.f2083b && abs2 > abs) {
                    this.g.a();
                    this.e = true;
                    return false;
                }
            }
            z = false;
            if (this.g.a(motionEvent)) {
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
        boolean b2 = b();
        if (b2) {
            this.g.i = 2;
        } else {
            this.g.i = 1;
        }
        int i9 = i3 - i;
        int paddingRight = b2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = b2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.s) {
            this.f5616c = (!this.n || !this.h) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f5619b) {
                    int i12 = layoutParams.leftMargin;
                    int i13 = layoutParams.rightMargin;
                    int i14 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i14 - this.m) - i10) - (i12 + i13);
                    this.f5617d = min;
                    int i15 = b2 ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.f5620c = ((i10 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (min * this.f5616c);
                    i10 += i15 + i16;
                    this.f5616c = i16 / this.f5617d;
                    i5 = 0;
                } else {
                    i5 = (!this.n || (i8 = this.f) == 0) ? 0 : (int) ((1.0f - this.f5616c) * i8);
                    i10 = paddingRight;
                }
                if (b2) {
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
        if (this.s) {
            if (this.n) {
                if (this.f != 0) {
                    a(this.f5616c);
                }
                if (((LayoutParams) this.f5615b.getLayoutParams()).f5620c) {
                    a(this.f5615b, this.f5616c, this.f5614a);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    a(getChildAt(i17), BitmapDescriptorFactory.HUE_RED, this.f5614a);
                }
            }
            a(this.f5615b);
        }
        this.s = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
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
                        i3 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                        i5 = VastError.ERROR_CODE_GENERAL_WRAPPER;
                        i4 = size;
                    }
                } else {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                }
            }
        } else if (isInEditMode()) {
            i4 = size;
            i3 = mode2;
            i5 = size2;
            if (mode != Integer.MIN_VALUE) {
                i4 = size;
                i3 = mode2;
                i5 = size2;
                if (mode == 0) {
                    i4 = VastError.ERROR_CODE_GENERAL_WRAPPER;
                    i3 = mode2;
                    i5 = size2;
                }
            }
        } else {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
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
        this.f5615b = null;
        int i8 = paddingLeft;
        boolean z = false;
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f5620c = false;
                i7 = i7;
                z = z;
                i8 = i8;
            } else {
                float f2 = f;
                if (layoutParams.f5618a > BitmapDescriptorFactory.HUE_RED) {
                    f2 = f + layoutParams.f5618a;
                    i7 = i7;
                    z = z;
                    f = f2;
                    i8 = i8;
                    if (layoutParams.width == 0) {
                    }
                }
                int i10 = layoutParams.leftMargin + layoutParams.rightMargin;
                childAt.measure(layoutParams.width == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i10, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), layoutParams.height == -2 ? View.MeasureSpec.makeMeasureSpec(i6, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i11 = i7;
                if (i3 == Integer.MIN_VALUE) {
                    i11 = i7;
                    if (measuredHeight > i7) {
                        i11 = Math.min(measuredHeight, i6);
                    }
                }
                int i12 = i8 - measuredWidth;
                boolean z2 = i12 < 0;
                layoutParams.f5619b = z2;
                boolean z3 = z | z2;
                i7 = i11;
                z = z3;
                f = f2;
                i8 = i12;
                if (layoutParams.f5619b) {
                    this.f5615b = childAt;
                    i8 = i12;
                    f = f2;
                    z = z3;
                    i7 = i11;
                }
            }
        }
        if (z || f > BitmapDescriptorFactory.HUE_RED) {
            int i13 = paddingLeft - this.m;
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt2 = getChildAt(i14);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z4 = layoutParams2.width == 0 && layoutParams2.f5618a > BitmapDescriptorFactory.HUE_RED;
                        int measuredWidth2 = z4 ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.f5615b) {
                            if (layoutParams2.f5618a > BitmapDescriptorFactory.HUE_RED) {
                                int makeMeasureSpec = layoutParams2.width == 0 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(i6, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                if (z) {
                                    int i15 = paddingLeft - (layoutParams2.leftMargin + layoutParams2.rightMargin);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i15, 1073741824);
                                    if (measuredWidth2 != i15) {
                                        childAt2.measure(makeMeasureSpec2, makeMeasureSpec);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.f5618a * Math.max(0, i8)) / f)), 1073741824), makeMeasureSpec);
                                }
                            }
                        } else if (layoutParams2.width < 0 && (measuredWidth2 > i13 || layoutParams2.f5618a > BitmapDescriptorFactory.HUE_RED)) {
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), z4 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(i6, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i4, i7 + getPaddingTop() + getPaddingBottom());
        this.n = z;
        if (!(this.g.f2082a == 0 || z)) {
            this.g.b();
        }
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
            c();
        } else if (this.s || b(1.0f)) {
            this.h = true;
        }
        this.h = savedState.isOpen;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean z = this.n;
        savedState.isOpen = z ? !z || this.f5616c == 1.0f : this.h;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.s = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.n) {
            return super.onTouchEvent(motionEvent);
        }
        this.g.b(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.p = x;
            this.q = y;
            return true;
        } else if (actionMasked != 1 || !c(this.f5615b)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.p;
            float f2 = y2 - this.q;
            int i = this.g.f2083b;
            if ((f * f) + (f2 * f2) >= i * i || !androidx.customview.a.c.b(this.f5615b, (int) x2, (int) y2)) {
                return true;
            }
            c();
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.n) {
            this.h = view == this.f5615b;
        }
    }

    public void setCoveredFadeColor(int i) {
        this.j = i;
    }

    public void setPanelSlideListener(d dVar) {
        this.r = dVar;
    }

    public void setParallaxDistance(int i) {
        this.f = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.k = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.l = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(androidx.core.content.b.a(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(androidx.core.content.b.a(getContext(), i));
    }

    public void setSliderFadeColor(int i) {
        this.f5614a = i;
    }
}
