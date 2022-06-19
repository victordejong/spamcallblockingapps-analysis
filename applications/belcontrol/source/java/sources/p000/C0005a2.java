package p000;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
/* renamed from: a2 */
/* loaded from: classes-dex2jar.jar:a2.class */
public class C0005a2 extends ListView {

    /* renamed from: a */
    public final Rect f20a = new Rect();

    /* renamed from: b */
    public int f21b = 0;

    /* renamed from: c */
    public int f22c = 0;

    /* renamed from: d */
    public int f23d = 0;

    /* renamed from: f */
    public int f24f = 0;

    /* renamed from: g */
    public int f25g;

    /* renamed from: h */
    public Field f26h;

    /* renamed from: j */
    public a f27j;

    /* renamed from: k */
    public boolean f28k;

    /* renamed from: l */
    public boolean f29l;

    /* renamed from: m */
    public boolean f30m;

    /* renamed from: n */
    public nb f31n;

    /* renamed from: o */
    public fc f32o;

    /* renamed from: p */
    public RunnableC0006b f33p;

    /* renamed from: a2$b */
    /* loaded from: classes-dex2jar.jar:a2$b.class */
    public class RunnableC0006b implements Runnable {
        public RunnableC0006b() {
            C0005a2.this = r4;
        }

        /* renamed from: a */
        public void m7409a() {
            C0005a2.this.post(this);
        }

        public void cancel() {
            C0005a2 c0005a2 = C0005a2.this;
            c0005a2.f33p = null;
            c0005a2.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0005a2 c0005a2 = C0005a2.this;
            c0005a2.f33p = null;
            c0005a2.drawableStateChanged();
        }
    }

    public C0005a2(Context context, boolean z) {
        super(context, null, C1389f.dropDownListViewStyle);
        this.f29l = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f26h = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.f27j;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    /* renamed from: a */
    public final void m7420a() {
        this.f30m = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f25g - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        nb nbVar = this.f31n;
        if (nbVar != null) {
            nbVar.b();
            this.f31n = null;
        }
    }

    /* renamed from: b */
    public final void m7419b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: c */
    public final void m7418c(Canvas canvas) {
        Drawable selector;
        if (this.f20a.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f20a);
        selector.draw(canvas);
    }

    /* renamed from: d */
    public int m7417d(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int i6 = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return i6;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = i9;
            if (i7 >= count) {
                return i6;
            }
            int itemViewType = adapter.getItemViewType(i7);
            int i11 = i8;
            if (itemViewType != i8) {
                view = null;
                i11 = itemViewType;
            }
            View view2 = adapter.getView(i7, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams2);
            }
            int i12 = layoutParams2.height;
            view2.measure(i, i12 > 0 ? View.MeasureSpec.makeMeasureSpec(i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i13 = i6;
            if (i7 > 0) {
                i13 = i6 + dividerHeight;
            }
            i6 = i13 + view2.getMeasuredHeight();
            if (i6 >= i4) {
                int i14 = i4;
                if (i5 >= 0) {
                    i14 = i4;
                    if (i7 > i5) {
                        i14 = i4;
                        if (i10 > 0) {
                            i14 = i4;
                            if (i6 != i4) {
                                i14 = i10;
                            }
                        }
                    }
                }
                return i14;
            }
            int i15 = i10;
            if (i5 >= 0) {
                i15 = i10;
                if (i7 >= i5) {
                    i15 = i6;
                }
            }
            i7++;
            i8 = i11;
            view = view2;
            i9 = i15;
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        m7418c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f33p != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m7410k();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7416e(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C0005a2.m7416e(android.view.MotionEvent, int):boolean");
    }

    /* renamed from: f */
    public final void m7415f(int i, View view) {
        Rect rect = this.f20a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f21b;
        rect.top -= this.f22c;
        rect.right += this.f23d;
        rect.bottom += this.f24f;
        try {
            boolean z = this.f26h.getBoolean(this);
            if (view.isEnabled() == z) {
                return;
            }
            this.f26h.set(this, Boolean.valueOf(!z));
            if (i == -1) {
                return;
            }
            refreshDrawableState();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public final void m7414g(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m7415f(i, view);
        if (z2) {
            Rect rect = this.f20a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            C1282d9.m2734k(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: h */
    public final void m7413h(int i, View view, float f, float f2) {
        m7414g(i, view);
        Drawable selector = getSelector();
        if (selector == null || i == -1) {
            return;
        }
        C1282d9.m2734k(selector, f, f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f29l || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f29l || super.hasWindowFocus();
    }

    /* renamed from: i */
    public final void m7412i(View view, int i, float f, float f2) {
        View childAt;
        this.f30m = true;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f25g;
        if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f25g = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (i2 >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m7413h(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f29l || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f29l && this.f28k) || super.isInTouchMode();
    }

    /* renamed from: j */
    public final boolean m7411j() {
        return this.f30m;
    }

    /* renamed from: k */
    public final void m7410k() {
        Drawable selector = getSelector();
        if (selector == null || !m7411j() || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f33p = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f33p == null) {
            RunnableC0006b runnableC0006b = new RunnableC0006b();
            this.f33p = runnableC0006b;
            runnableC0006b.m7409a();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m7410k();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f25g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0006b runnableC0006b = this.f33p;
        if (runnableC0006b != null) {
            runnableC0006b.cancel();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f28k = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        Drawable aVar = drawable != null ? new a(drawable) : null;
        this.f27j = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f21b = rect.left;
        this.f22c = rect.top;
        this.f23d = rect.right;
        this.f24f = rect.bottom;
    }
}
