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
import androidx.appcompat.C0142a;
import androidx.appcompat.p019b.p020a.C0232c;
import androidx.core.view.C0940y;
import androidx.core.widget.C0957f;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView.class */
public class DropDownListView extends ListView {

    /* renamed from: a */
    boolean f1204a;

    /* renamed from: b */
    RunnableC0330b f1205b;

    /* renamed from: c */
    private final Rect f1206c = new Rect();

    /* renamed from: d */
    private int f1207d = 0;

    /* renamed from: e */
    private int f1208e = 0;

    /* renamed from: f */
    private int f1209f = 0;

    /* renamed from: g */
    private int f1210g = 0;

    /* renamed from: h */
    private int f1211h;

    /* renamed from: i */
    private Field f1212i;

    /* renamed from: j */
    private C0329a f1213j;

    /* renamed from: k */
    private boolean f1214k;

    /* renamed from: l */
    private boolean f1215l;

    /* renamed from: m */
    private C0940y f1216m;

    /* renamed from: n */
    private C0957f f1217n;

    /* renamed from: androidx.appcompat.widget.DropDownListView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView$a.class */
    public static final class C0329a extends C0232c {

        /* renamed from: b */
        boolean f1218b = true;

        C0329a(Drawable drawable) {
            super(drawable);
        }

        @Override // androidx.appcompat.p019b.p020a.C0232c, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            if (this.f1218b) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.p019b.p020a.C0232c, android.graphics.drawable.Drawable
        public final void setHotspot(float f, float f2) {
            if (this.f1218b) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.p019b.p020a.C0232c, android.graphics.drawable.Drawable
        public final void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f1218b) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // androidx.appcompat.p019b.p020a.C0232c, android.graphics.drawable.Drawable
        public final boolean setState(int[] iArr) {
            if (this.f1218b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.p019b.p020a.C0232c, android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z, boolean z2) {
            if (this.f1218b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.DropDownListView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView$b.class */
    public final class RunnableC0330b implements Runnable {
        RunnableC0330b() {
            DropDownListView.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DropDownListView.this.f1205b = null;
            DropDownListView.this.drawableStateChanged();
        }
    }

    public DropDownListView(Context context, boolean z) {
        super(context, null, C0142a.C0143a.dropDownListViewStyle);
        this.f1214k = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1212i = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m45950a() {
        Drawable selector = getSelector();
        if (selector == null || !this.f1215l || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    /* renamed from: a */
    private void m45949a(boolean z) {
        C0329a c0329a = this.f1213j;
        if (c0329a != null) {
            c0329a.f1218b = z;
        }
    }

    /* renamed from: a */
    public int mo45908a(int i, int i2, int i3, int i4, int i5) {
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
            view2.measure(i, layoutParams2.height > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i12 = i6;
            if (i7 > 0) {
                i12 = i6 + dividerHeight;
            }
            i6 = i12 + view2.getMeasuredHeight();
            if (i6 >= i4) {
                return (i5 < 0 || i7 <= i5 || i10 <= 0 || i6 == i4) ? i4 : i10;
            }
            int i13 = i10;
            if (i5 >= 0) {
                i13 = i10;
                if (i7 >= i5) {
                    i13 = i6;
                }
            }
            i7++;
            i8 = i11;
            view = view2;
            i9 = i13;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02b7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo45907a(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DropDownListView.mo45907a(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f1206c.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f1206c);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1205b != null) {
            return;
        }
        super.drawableStateChanged();
        m45949a(true);
        m45950a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1214k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1214k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1214k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1214k && this.f1204a) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1205b = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1205b == null) {
            RunnableC0330b runnableC0330b = new RunnableC0330b();
            this.f1205b = runnableC0330b;
            DropDownListView.this.post(runnableC0330b);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m45950a();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1211h = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0330b runnableC0330b = this.f1205b;
        if (runnableC0330b != null) {
            DropDownListView.this.f1205b = null;
            DropDownListView.this.removeCallbacks(runnableC0330b);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0329a c0329a = drawable != null ? new C0329a(drawable) : null;
        this.f1213j = c0329a;
        super.setSelector(c0329a);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1207d = rect.left;
        this.f1208e = rect.top;
        this.f1209f = rect.right;
        this.f1210g = rect.bottom;
    }
}
