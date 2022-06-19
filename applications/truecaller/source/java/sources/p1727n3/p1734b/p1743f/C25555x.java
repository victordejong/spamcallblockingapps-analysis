package p1727n3.p1734b.p1743f;

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
import androidx.appcompat.C0032R;
import java.lang.reflect.Field;
import p1727n3.p1734b.p1738c.p1739a.C25445c;
import p1727n3.p1807k.p1824j.C26636g;
/* renamed from: n3.b.f.x */
/* loaded from: classes-dex2jar.jar:n3/b/f/x.class */
public class C25555x extends ListView {

    /* renamed from: a */
    public final Rect f71527a = new Rect();

    /* renamed from: b */
    public int f71528b = 0;

    /* renamed from: c */
    public int f71529c = 0;

    /* renamed from: d */
    public int f71530d = 0;

    /* renamed from: e */
    public int f71531e = 0;

    /* renamed from: f */
    public int f71532f;

    /* renamed from: g */
    public Field f71533g;

    /* renamed from: h */
    public C25556a f71534h;

    /* renamed from: i */
    public boolean f71535i;

    /* renamed from: j */
    public boolean f71536j;

    /* renamed from: k */
    public boolean f71537k;

    /* renamed from: l */
    public C26636g f71538l;

    /* renamed from: m */
    public RunnableC25557b f71539m;

    /* renamed from: n3.b.f.x$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/x$a.class */
    public static class C25556a extends C25445c {

        /* renamed from: b */
        public boolean f71540b = true;

        public C25556a(Drawable drawable) {
            super(drawable);
        }

        @Override // p1727n3.p1734b.p1738c.p1739a.C25445c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f71540b) {
                this.f71077a.draw(canvas);
            }
        }

        @Override // p1727n3.p1734b.p1738c.p1739a.C25445c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f71540b) {
                this.f71077a.setHotspot(f, f2);
            }
        }

        @Override // p1727n3.p1734b.p1738c.p1739a.C25445c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f71540b) {
                this.f71077a.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // p1727n3.p1734b.p1738c.p1739a.C25445c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f71540b) {
                return this.f71077a.setState(iArr);
            }
            return false;
        }

        @Override // p1727n3.p1734b.p1738c.p1739a.C25445c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f71540b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: n3.b.f.x$b */
    /* loaded from: classes-dex2jar.jar:n3/b/f/x$b.class */
    public class RunnableC25557b implements Runnable {
        public RunnableC25557b() {
            C25555x.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C25555x c25555x = C25555x.this;
            c25555x.f71539m = null;
            c25555x.drawableStateChanged();
        }
    }

    public C25555x(Context context, boolean z) {
        super(context, null, C0032R.attr.dropDownListViewStyle);
        this.f71536j = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f71533g = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        C25556a c25556a = this.f71534h;
        if (c25556a != null) {
            c25556a.f71540b = z;
        }
    }

    /* renamed from: a */
    public int m3247a(int i, int i2, int i3) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i4 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i5 = 0;
        int i6 = 0;
        View view = null;
        int i7 = 0;
        int i8 = i4;
        while (i5 < count) {
            int itemViewType = adapter.getItemViewType(i5);
            int i9 = i7;
            if (itemViewType != i7) {
                view = null;
                i9 = itemViewType;
            }
            View view2 = adapter.getView(i5, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams2);
            }
            int i10 = layoutParams2.height;
            view2.measure(i, i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i11 = i8;
            if (i5 > 0) {
                i11 = i8 + dividerHeight;
            }
            i8 = i11 + view2.getMeasuredHeight();
            if (i8 >= i2) {
                int i12 = i2;
                if (i3 >= 0) {
                    i12 = i2;
                    if (i5 > i3) {
                        i12 = i2;
                        if (i6 > 0) {
                            i12 = i2;
                            if (i8 != i2) {
                                i12 = i6;
                            }
                        }
                    }
                }
                return i12;
            }
            int i13 = i6;
            if (i3 >= 0) {
                i13 = i6;
                if (i5 >= i3) {
                    i13 = i8;
                }
            }
            i5++;
            i7 = i9;
            view = view2;
            i6 = i13;
        }
        return i8;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0295  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3246b(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 689
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25555x.m3246b(android.view.MotionEvent, int):boolean");
    }

    /* renamed from: c */
    public final void m3245c() {
        Drawable selector = getSelector();
        if (selector == null || !this.f71537k || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f71527a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f71527a);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f71539m != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m3245c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f71536j || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f71536j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f71536j || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f71536j && this.f71535i) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f71539m = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f71539m == null) {
            RunnableC25557b runnableC25557b = new RunnableC25557b();
            this.f71539m = runnableC25557b;
            post(runnableC25557b);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m3245c();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f71532f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC25557b runnableC25557b = this.f71539m;
        if (runnableC25557b != null) {
            C25555x c25555x = C25555x.this;
            c25555x.f71539m = null;
            c25555x.removeCallbacks(runnableC25557b);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f71535i = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C25556a c25556a = drawable != null ? new C25556a(drawable) : null;
        this.f71534h = c25556a;
        super.setSelector(c25556a);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f71528b = rect.left;
        this.f71529c = rect.top;
        this.f71530d = rect.right;
        this.f71531e = rect.bottom;
    }
}
