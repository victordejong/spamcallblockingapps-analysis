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
import androidx.appcompat.a;
import androidx.appcompat.b.a.c;
import androidx.core.view.y;
import androidx.core.widget.f;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView.class */
public class DropDownListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    boolean f950a;

    /* renamed from: b  reason: collision with root package name */
    b f951b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f952c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    private int f953d = 0;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h;
    private Field i;
    private a j;
    private boolean k;
    private boolean l;
    private y m;
    private f n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView$a.class */
    public static final class a extends c {

        /* renamed from: b  reason: collision with root package name */
        boolean f954b = true;

        a(Drawable drawable) {
            super(drawable);
        }

        @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            if (this.f954b) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
        public final void setHotspot(float f, float f2) {
            if (this.f954b) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
        public final void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f954b) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
        public final boolean setState(int[] iArr) {
            if (this.f954b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.b.a.c, android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z, boolean z2) {
            if (this.f954b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView$b.class */
    public final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DropDownListView.this.f951b = null;
            DropDownListView.this.drawableStateChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropDownListView(Context context, boolean z) {
        super(context, null, a.C0018a.dropDownListViewStyle);
        this.k = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.i = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void a() {
        Drawable selector = getSelector();
        if (selector != null && this.l && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    private void a(boolean z) {
        a aVar = this.j;
        if (aVar != null) {
            aVar.f954b = z;
        }
    }

    public int a(int i, int i2, int i3, int i4, int i5) {
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
            view2.measure(i, layoutParams2.height > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i10 = i6;
            if (i7 > 0) {
                i10 = i6 + dividerHeight;
            }
            i6 = i10 + view2.getMeasuredHeight();
            if (i6 >= i4) {
                return (i5 < 0 || i7 <= i5 || i9 <= 0 || i6 == i4) ? i4 : i9;
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

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r0 != 3) goto L_0x0017;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DropDownListView.a(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f952c.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f952c);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f951b == null) {
            super.drawableStateChanged();
            a(true);
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.k && this.f950a) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f951b = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f951b == null) {
            b bVar = new b();
            this.f951b = bVar;
            DropDownListView.this.post(bVar);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                a();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.h = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.f951b;
        if (bVar != null) {
            DropDownListView.this.f951b = null;
            DropDownListView.this.removeCallbacks(bVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        a aVar = drawable != null ? new a(drawable) : null;
        this.j = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f953d = rect.left;
        this.e = rect.top;
        this.f = rect.right;
        this.g = rect.bottom;
    }
}
