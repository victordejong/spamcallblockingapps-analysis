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
import androidx.appcompat.C0051a;
import androidx.appcompat.p008b.p009a.C0146c;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p023g.C0564y;
import androidx.core.widget.C0602f;
import java.lang.reflect.Field;
/* renamed from: androidx.appcompat.widget.ab */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab.class */
public class C0269ab extends ListView {

    /* renamed from: a */
    RunnableC0271b f1125a;

    /* renamed from: b */
    private final Rect f1126b = new Rect();

    /* renamed from: c */
    private int f1127c = 0;

    /* renamed from: d */
    private int f1128d = 0;

    /* renamed from: e */
    private int f1129e = 0;

    /* renamed from: f */
    private int f1130f = 0;

    /* renamed from: g */
    private int f1131g;

    /* renamed from: h */
    private Field f1132h;

    /* renamed from: i */
    private C0270a f1133i;

    /* renamed from: j */
    private boolean f1134j;

    /* renamed from: k */
    private boolean f1135k;

    /* renamed from: l */
    private boolean f1136l;

    /* renamed from: m */
    private C0564y f1137m;

    /* renamed from: n */
    private C0602f f1138n;

    /* renamed from: androidx.appcompat.widget.ab$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab$a.class */
    public static class C0270a extends C0146c {

        /* renamed from: a */
        private boolean f1139a = true;

        C0270a(Drawable drawable) {
            super(drawable);
        }

        /* renamed from: a */
        void m7292a(boolean z) {
            this.f1139a = z;
        }

        @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1139a) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f1139a) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f1139a) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1139a) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f1139a) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ab$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ab$b.class */
    public class RunnableC0271b implements Runnable {
        RunnableC0271b() {
            C0269ab.this = r4;
        }

        /* renamed from: a */
        public void m7291a() {
            C0269ab c0269ab = C0269ab.this;
            c0269ab.f1125a = null;
            c0269ab.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m7290b() {
            C0269ab.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0269ab c0269ab = C0269ab.this;
            c0269ab.f1125a = null;
            c0269ab.drawableStateChanged();
        }
    }

    public C0269ab(Context context, boolean z) {
        super(context, null, C0051a.C0052a.dropDownListViewStyle);
        this.f1135k = z;
        setCacheColorHint(0);
        try {
            this.f1132h = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1132h.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m7301a() {
        Drawable selector = getSelector();
        if (selector == null || !m7293c() || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    /* renamed from: a */
    private void m7300a(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m7294b(i, view);
        if (z2) {
            Rect rect = this.f1126b;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            C0575a.m6136a(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: a */
    private void m7299a(int i, View view, float f, float f2) {
        m7300a(i, view);
        Drawable selector = getSelector();
        if (selector == null || i == -1) {
            return;
        }
        C0575a.m6136a(selector, f, f2);
    }

    /* renamed from: a */
    private void m7298a(Canvas canvas) {
        Drawable selector;
        if (this.f1126b.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1126b);
        selector.draw(canvas);
    }

    /* renamed from: a */
    private void m7297a(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: a */
    private void m7296a(View view, int i, float f, float f2) {
        View childAt;
        this.f1136l = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i2 = this.f1131g;
        if (i2 != -1 && (childAt = getChildAt(i2 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1131g = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m7299a(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* renamed from: b */
    private void m7295b() {
        this.f1136l = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1131g - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        C0564y c0564y = this.f1137m;
        if (c0564y != null) {
            c0564y.m6182b();
            this.f1137m = null;
        }
    }

    /* renamed from: b */
    private void m7294b(int i, View view) {
        Rect rect = this.f1126b;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1127c;
        rect.top -= this.f1128d;
        rect.right += this.f1129e;
        rect.bottom += this.f1130f;
        try {
            boolean z = this.f1132h.getBoolean(this);
            if (view.isEnabled() == z) {
                return;
            }
            this.f1132h.set(this, Boolean.valueOf(!z));
            if (i == -1) {
                return;
            }
            refreshDrawableState();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private boolean m7293c() {
        return this.f1136l;
    }

    private void setSelectorEnabled(boolean z) {
        C0270a c0270a = this.f1133i;
        if (c0270a != null) {
            c0270a.m7292a(z);
        }
    }

    /* renamed from: a */
    public int mo7238a(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i6 = 0;
        int i7 = 0;
        View view = null;
        int i8 = 0;
        int i9 = listPaddingTop + listPaddingBottom;
        while (i6 < count) {
            int itemViewType = adapter.getItemViewType(i6);
            int i10 = i8;
            if (itemViewType != i8) {
                view = null;
                i10 = itemViewType;
            }
            View view2 = adapter.getView(i6, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams2);
            }
            view2.measure(i, layoutParams2.height > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i11 = i9;
            if (i6 > 0) {
                i11 = i9 + dividerHeight;
            }
            i9 = i11 + view2.getMeasuredHeight();
            if (i9 >= i4) {
                int i12 = i4;
                if (i5 >= 0) {
                    i12 = i4;
                    if (i6 > i5) {
                        i12 = i4;
                        if (i7 > 0) {
                            i12 = i4;
                            if (i9 != i4) {
                                i12 = i7;
                            }
                        }
                    }
                }
                return i12;
            }
            int i13 = i7;
            if (i5 >= 0) {
                i13 = i7;
                if (i6 >= i5) {
                    i13 = i9;
                }
            }
            i6++;
            i8 = i10;
            view = view2;
            i7 = i13;
        }
        return i9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cb  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo7237a(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0269ab.mo7237a(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m7298a(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1125a != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m7301a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1135k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1135k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1135k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1135k && this.f1134j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1125a = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1125a == null) {
            this.f1125a = new RunnableC0271b();
            this.f1125a.m7290b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m7301a();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1131g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0271b runnableC0271b = this.f1125a;
        if (runnableC0271b != null) {
            runnableC0271b.m7291a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f1134j = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        this.f1133i = drawable != null ? new C0270a(drawable) : null;
        super.setSelector(this.f1133i);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1127c = rect.left;
        this.f1128d = rect.top;
        this.f1129e = rect.right;
        this.f1130f = rect.bottom;
    }
}
