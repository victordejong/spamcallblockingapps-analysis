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
import androidx.appcompat.C0083a;
import androidx.appcompat.p010b.p011a.C0165c;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p026h.C0607y;
import androidx.core.widget.C0625f;
import java.lang.reflect.Field;
/* renamed from: androidx.appcompat.widget.z */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z.class */
public class C0370z extends ListView {

    /* renamed from: a */
    RunnableC0372b f1528a;

    /* renamed from: b */
    private final Rect f1529b = new Rect();

    /* renamed from: c */
    private int f1530c = 0;

    /* renamed from: d */
    private int f1531d = 0;

    /* renamed from: e */
    private int f1532e = 0;

    /* renamed from: f */
    private int f1533f = 0;

    /* renamed from: g */
    private int f1534g;

    /* renamed from: h */
    private Field f1535h;

    /* renamed from: i */
    private C0371a f1536i;

    /* renamed from: j */
    private boolean f1537j;

    /* renamed from: k */
    private boolean f1538k;

    /* renamed from: l */
    private boolean f1539l;

    /* renamed from: m */
    private C0607y f1540m;

    /* renamed from: n */
    private C0625f f1541n;

    /* renamed from: androidx.appcompat.widget.z$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z$a.class */
    public static class C0371a extends C0165c {

        /* renamed from: a */
        private boolean f1542a = true;

        C0371a(Drawable drawable) {
            super(drawable);
        }

        /* renamed from: a */
        void m21153a(boolean z) {
            this.f1542a = z;
        }

        @Override // androidx.appcompat.p010b.p011a.C0165c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1542a) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.p010b.p011a.C0165c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f1542a) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.p010b.p011a.C0165c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f1542a) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // androidx.appcompat.p010b.p011a.C0165c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            return this.f1542a ? super.setState(iArr) : false;
        }

        @Override // androidx.appcompat.p010b.p011a.C0165c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            return this.f1542a ? super.setVisible(z, z2) : false;
        }
    }

    /* renamed from: androidx.appcompat.widget.z$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z$b.class */
    public class RunnableC0372b implements Runnable {
        RunnableC0372b() {
            C0370z.this = r4;
        }

        /* renamed from: a */
        public void m21152a() {
            C0370z.this.f1528a = null;
            C0370z.this.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m21151b() {
            C0370z.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0370z.this.f1528a = null;
            C0370z.this.drawableStateChanged();
        }
    }

    public C0370z(Context context, boolean z) {
        super(context, null, C0083a.C0084a.dropDownListViewStyle);
        this.f1538k = z;
        setCacheColorHint(0);
        try {
            this.f1535h = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1535h.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m21164a() {
        Drawable selector = getSelector();
        if (selector == null || !m21154c() || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    /* renamed from: a */
    private void m21162a(int i, View view) {
        boolean z = true;
        Drawable selector = getSelector();
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m21155b(i, view);
        if (z2) {
            Rect rect = this.f1529b;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            C0535a.m20598a(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: a */
    private void m21161a(int i, View view, float f, float f2) {
        m21162a(i, view);
        Drawable selector = getSelector();
        if (selector == null || i == -1) {
            return;
        }
        C0535a.m20598a(selector, f, f2);
    }

    /* renamed from: a */
    private void m21160a(Canvas canvas) {
        Drawable selector;
        if (this.f1529b.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1529b);
        selector.draw(canvas);
    }

    /* renamed from: a */
    private void m21158a(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: a */
    private void m21157a(View view, int i, float f, float f2) {
        View childAt;
        this.f1539l = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        if (this.f1534g != -1 && (childAt = getChildAt(this.f1534g - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1534g = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m21161a(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* renamed from: b */
    private void m21156b() {
        this.f1539l = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1534g - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        if (this.f1540m != null) {
            this.f1540m.m20249b();
            this.f1540m = null;
        }
    }

    /* renamed from: b */
    private void m21155b(int i, View view) {
        Rect rect = this.f1529b;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1530c;
        rect.top -= this.f1531d;
        rect.right += this.f1532e;
        rect.bottom += this.f1533f;
        try {
            boolean z = this.f1535h.getBoolean(this);
            if (view.isEnabled() == z) {
                return;
            }
            this.f1535h.set(this, Boolean.valueOf(!z));
            if (i == -1) {
                return;
            }
            refreshDrawableState();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private boolean m21154c() {
        return this.f1539l;
    }

    private void setSelectorEnabled(boolean z) {
        if (this.f1536i != null) {
            this.f1536i.m21153a(z);
        }
    }

    /* renamed from: a */
    public int mo21163a(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter != null) {
            int i7 = listPaddingBottom + listPaddingTop;
            if (dividerHeight <= 0 || divider == null) {
                dividerHeight = 0;
            }
            int i8 = 0;
            View view = null;
            int i9 = 0;
            int count = adapter.getCount();
            int i10 = 0;
            while (true) {
                if (i10 >= count) {
                    i6 = i7;
                    break;
                }
                int itemViewType = adapter.getItemViewType(i10);
                int i11 = i9;
                if (itemViewType != i9) {
                    view = null;
                    i11 = itemViewType;
                }
                View view2 = adapter.getView(i10, view, this);
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                ViewGroup.LayoutParams layoutParams2 = layoutParams;
                if (layoutParams == null) {
                    layoutParams2 = generateDefaultLayoutParams();
                    view2.setLayoutParams(layoutParams2);
                }
                view2.measure(i, layoutParams2.height > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
                view2.forceLayout();
                if (i10 > 0) {
                    i7 += dividerHeight;
                }
                i7 += view2.getMeasuredHeight();
                if (i7 >= i4) {
                    i6 = i4;
                    if (i5 >= 0) {
                        i6 = i4;
                        if (i10 > i5) {
                            i6 = i4;
                            if (i8 > 0) {
                                i6 = i4;
                                if (i7 != i4) {
                                    i6 = i8;
                                }
                            }
                        }
                    }
                } else {
                    int i12 = i8;
                    if (i5 >= 0) {
                        i12 = i8;
                        if (i10 >= i5) {
                            i12 = i7;
                        }
                    }
                    i10++;
                    i8 = i12;
                    i9 = i11;
                    view = view2;
                }
            }
        } else {
            i6 = listPaddingTop + listPaddingBottom;
        }
        return i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo21159a(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0370z.mo21159a(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m21160a(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1528a != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m21164a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1538k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1538k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1538k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1538k && this.f1537j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1528a = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        boolean z;
        if (Build.VERSION.SDK_INT < 26) {
            z = super.onHoverEvent(motionEvent);
        } else {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 10 && this.f1528a == null) {
                this.f1528a = new RunnableC0372b();
                this.f1528a.m21151b();
            }
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 || actionMasked == 7) {
                int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                z = onHoverEvent;
                if (pointToPosition != -1) {
                    z = onHoverEvent;
                    if (pointToPosition != getSelectedItemPosition()) {
                        View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                        if (childAt.isEnabled()) {
                            setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                        }
                        m21164a();
                        z = onHoverEvent;
                    }
                }
            } else {
                setSelection(-1);
                z = onHoverEvent;
            }
        }
        return z;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.f1534g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                break;
        }
        if (this.f1528a != null) {
            this.f1528a.m21152a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f1537j = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        this.f1536i = drawable != null ? new C0371a(drawable) : null;
        super.setSelector(this.f1536i);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1530c = rect.left;
        this.f1531d = rect.top;
        this.f1532e = rect.right;
        this.f1533f = rect.bottom;
    }
}
