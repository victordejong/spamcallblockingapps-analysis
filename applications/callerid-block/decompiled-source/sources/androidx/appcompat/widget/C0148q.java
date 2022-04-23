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
import androidx.core.graphics.drawable.C0283a;
import androidx.core.widget.f;
import d.a.a;
import d.h.m.x;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q.class */
public class C0148q extends ListView {

    /* renamed from: b */
    private final Rect f670b = new Rect();

    /* renamed from: c */
    private int f671c = 0;

    /* renamed from: d */
    private int f672d = 0;

    /* renamed from: e */
    private int f673e = 0;

    /* renamed from: f */
    private int f674f = 0;

    /* renamed from: g */
    private int f675g;

    /* renamed from: h */
    private Field f676h;

    /* renamed from: i */
    private a f677i;

    /* renamed from: j */
    private boolean f678j;

    /* renamed from: k */
    private boolean f679k;

    /* renamed from: l */
    private boolean f680l;

    /* renamed from: m */
    private x f681m;

    /* renamed from: n */
    private f f682n;

    /* renamed from: o */
    RunnableC0149b f683o;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q$b.class */
    public class RunnableC0149b implements Runnable {
        RunnableC0149b() {
        }

        /* renamed from: a */
        public void m14458a() {
            C0148q qVar = C0148q.this;
            qVar.f683o = null;
            qVar.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m14457b() {
            C0148q.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0148q qVar = C0148q.this;
            qVar.f683o = null;
            qVar.drawableStateChanged();
        }
    }

    C0148q(Context context, boolean z) {
        super(context, null, a.dropDownListViewStyle);
        this.f679k = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f676h = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m14469a() {
        this.f680l = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f675g - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        x xVar = this.f681m;
        if (xVar != null) {
            xVar.b();
            this.f681m = null;
        }
    }

    /* renamed from: b */
    private void m14468b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: c */
    private void m14467c(Canvas canvas) {
        Drawable selector;
        if (!this.f670b.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f670b);
            selector.draw(canvas);
        }
    }

    /* renamed from: f */
    private void m14464f(int i, View view) {
        Rect rect = this.f670b;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f671c;
        rect.top -= this.f672d;
        rect.right += this.f673e;
        rect.bottom += this.f674f;
        try {
            boolean z = this.f676h.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f676h.set(this, Boolean.valueOf(!z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    private void m14463g(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m14464f(i, view);
        if (z2) {
            Rect rect = this.f670b;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            C0283a.m13468k(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: h */
    private void m14462h(int i, View view, float f, float f2) {
        m14463g(i, view);
        Drawable selector = getSelector();
        if (selector != null && i != -1) {
            C0283a.m13468k(selector, f, f2);
        }
    }

    /* renamed from: i */
    private void m14461i(View view, int i, float f, float f2) {
        View childAt;
        this.f680l = true;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f675g;
        if (!(i3 == -1 || (childAt = getChildAt(i3 - getFirstVisiblePosition())) == null || childAt == view || !childAt.isPressed())) {
            childAt.setPressed(false);
        }
        this.f675g = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (i2 >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m14462h(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* renamed from: j */
    private boolean m14460j() {
        return this.f680l;
    }

    /* renamed from: k */
    private void m14459k() {
        Drawable selector = getSelector();
        if (selector != null && m14460j() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.f677i;
        if (aVar != null) {
            aVar.c(z);
        }
    }

    /* renamed from: d */
    public int m14466d(int i, int i2, int i3, int i4, int i5) {
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
        while (i7 < count) {
            int itemViewType = adapter.getItemViewType(i7);
            i8 = i8;
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            }
            View view2 = adapter.getView(i7, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams2);
            }
            int i10 = layoutParams2.height;
            view2.measure(i, i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i11 = i6;
            if (i7 > 0) {
                i11 = i6 + dividerHeight;
            }
            i6 = i11 + view2.getMeasuredHeight();
            if (i6 >= i4) {
                int i12 = i4;
                if (i5 >= 0) {
                    i12 = i4;
                    if (i7 > i5) {
                        i12 = i4;
                        if (i9 > 0) {
                            i12 = i4;
                            if (i6 != i4) {
                                i12 = i9;
                            }
                        }
                    }
                }
                return i12;
            }
            i9 = i9;
            if (i5 >= 0) {
                i9 = i9;
                if (i7 >= i5) {
                    i9 = i6;
                }
            }
            i7++;
            view = view2;
        }
        return i6;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m14467c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f683o == null) {
            super.drawableStateChanged();
            setSelectorEnabled(true);
            m14459k();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r0 != 3) goto L_0x0014;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m14465e(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0148q.m14465e(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f679k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f679k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f679k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f679k && this.f678j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f683o = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f683o == null) {
            RunnableC0149b bVar = new RunnableC0149b();
            this.f683o = bVar;
            bVar.m14457b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m14459k();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f675g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0149b bVar = this.f683o;
        if (bVar != null) {
            bVar.m14458a();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListSelectionHidden(boolean z) {
        this.f678j = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        a aVar = drawable != null ? new a(drawable) : null;
        this.f677i = aVar;
        super.setSelector((Drawable) aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f671c = rect.left;
        this.f672d = rect.top;
        this.f673e = rect.right;
        this.f674f = rect.bottom;
    }
}
