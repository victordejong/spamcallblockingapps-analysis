package androidx.appcompat.widget;

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
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.C0646h;
import java.lang.reflect.Field;
import p020b.p021a.C1423a;
import p020b.p021a.p024l.p025a.C1448c;
import p020b.p041h.p050l.C1601a0;
/* renamed from: androidx.appcompat.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r.class */
public class C0318r extends ListView {

    /* renamed from: d */
    private final Rect f1365d = new Rect();

    /* renamed from: e */
    private int f1366e = 0;

    /* renamed from: f */
    private int f1367f = 0;

    /* renamed from: g */
    private int f1368g = 0;

    /* renamed from: h */
    private int f1369h = 0;

    /* renamed from: i */
    private int f1370i;

    /* renamed from: j */
    private Field f1371j;

    /* renamed from: k */
    private C0319a f1372k;

    /* renamed from: l */
    private boolean f1373l;

    /* renamed from: m */
    private boolean f1374m;

    /* renamed from: n */
    private boolean f1375n;

    /* renamed from: o */
    private C1601a0 f1376o;

    /* renamed from: p */
    private C0646h f1377p;

    /* renamed from: q */
    RunnableC0320b f1378q;

    /* renamed from: androidx.appcompat.widget.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r$a.class */
    public static class C0319a extends C1448c {

        /* renamed from: e */
        private boolean f1379e = true;

        C0319a(Drawable drawable) {
            super(drawable);
        }

        /* renamed from: c */
        void m34761c(boolean z) {
            this.f1379e = z;
        }

        @Override // p020b.p021a.p024l.p025a.C1448c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1379e) {
                super.draw(canvas);
            }
        }

        @Override // p020b.p021a.p024l.p025a.C1448c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f1379e) {
                super.setHotspot(f, f2);
            }
        }

        @Override // p020b.p021a.p024l.p025a.C1448c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f1379e) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // p020b.p021a.p024l.p025a.C1448c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1379e) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // p020b.p021a.p024l.p025a.C1448c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f1379e) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r$b.class */
    public class RunnableC0320b implements Runnable {
        RunnableC0320b() {
            C0318r.this = r4;
        }

        /* renamed from: a */
        public void m34760a() {
            C0318r c0318r = C0318r.this;
            c0318r.f1378q = null;
            c0318r.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m34759b() {
            C0318r.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0318r c0318r = C0318r.this;
            c0318r.f1378q = null;
            c0318r.drawableStateChanged();
        }
    }

    public C0318r(Context context, boolean z) {
        super(context, null, C1423a.dropDownListViewStyle);
        this.f1374m = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1371j = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m34772a() {
        this.f1375n = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1370i - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        C1601a0 c1601a0 = this.f1376o;
        if (c1601a0 != null) {
            c1601a0.m29641b();
            this.f1376o = null;
        }
    }

    /* renamed from: b */
    private void m34771b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: c */
    private void m34770c(Canvas canvas) {
        Drawable selector;
        if (this.f1365d.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1365d);
        selector.draw(canvas);
    }

    /* renamed from: f */
    private void m34767f(int i, View view) {
        Rect rect = this.f1365d;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1366e;
        rect.top -= this.f1367f;
        rect.right += this.f1368g;
        rect.bottom += this.f1369h;
        try {
            boolean z = this.f1371j.getBoolean(this);
            if (view.isEnabled() == z) {
                return;
            }
            this.f1371j.set(this, Boolean.valueOf(!z));
            if (i == -1) {
                return;
            }
            refreshDrawableState();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    private void m34766g(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m34767f(i, view);
        if (z2) {
            Rect rect = this.f1365d;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            C0615a.m33219k(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: h */
    private void m34765h(int i, View view, float f, float f2) {
        m34766g(i, view);
        Drawable selector = getSelector();
        if (selector == null || i == -1) {
            return;
        }
        C0615a.m33219k(selector, f, f2);
    }

    /* renamed from: i */
    private void m34764i(View view, int i, float f, float f2) {
        View childAt;
        this.f1375n = true;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f1370i;
        if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1370i = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (i2 >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m34765h(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* renamed from: j */
    private boolean m34763j() {
        return this.f1375n;
    }

    /* renamed from: k */
    private void m34762k() {
        Drawable selector = getSelector();
        if (selector == null || !m34763j() || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    private void setSelectorEnabled(boolean z) {
        C0319a c0319a = this.f1372k;
        if (c0319a != null) {
            c0319a.m34761c(z);
        }
    }

    /* renamed from: d */
    public int mo34769d(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingTop + listPaddingBottom;
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
    protected void dispatchDraw(Canvas canvas) {
        m34770c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1378q != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m34762k();
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
    public boolean mo34768e(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0318r.mo34768e(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1374m || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1374m || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1374m || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1374m && this.f1373l) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1378q = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1378q == null) {
            RunnableC0320b runnableC0320b = new RunnableC0320b();
            this.f1378q = runnableC0320b;
            runnableC0320b.m34759b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m34762k();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1370i = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0320b runnableC0320b = this.f1378q;
        if (runnableC0320b != null) {
            runnableC0320b.m34760a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f1373l = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0319a c0319a = drawable != null ? new C0319a(drawable) : null;
        this.f1372k = c0319a;
        super.setSelector(c0319a);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1366e = rect.left;
        this.f1367f = rect.top;
        this.f1368g = rect.right;
        this.f1369h = rect.bottom;
    }
}
