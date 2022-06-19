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
import java.lang.reflect.Field;
import me.zhanghai.android.materialprogressbar.C3681R;
import p108h.C2986c;
import p196p0.C3988e;
/* renamed from: androidx.appcompat.widget.i0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0.class */
public class C0238i0 extends ListView {

    /* renamed from: a */
    public final Rect f970a = new Rect();

    /* renamed from: b */
    public int f971b = 0;

    /* renamed from: c */
    public int f972c = 0;

    /* renamed from: d */
    public int f973d = 0;

    /* renamed from: e */
    public int f974e = 0;

    /* renamed from: f */
    public int f975f;

    /* renamed from: g */
    public Field f976g;

    /* renamed from: h */
    public C0239a f977h;

    /* renamed from: i */
    public boolean f978i;

    /* renamed from: j */
    public boolean f979j;

    /* renamed from: k */
    public boolean f980k;

    /* renamed from: l */
    public C3988e f981l;

    /* renamed from: m */
    public RunnableC0240b f982m;

    /* renamed from: androidx.appcompat.widget.i0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0$a.class */
    public static class C0239a extends C2986c {

        /* renamed from: b */
        public boolean f983b = true;

        public C0239a(Drawable drawable) {
            super(drawable);
        }

        @Override // p108h.C2986c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f983b) {
                this.f10067a.draw(canvas);
            }
        }

        @Override // p108h.C2986c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f983b) {
                this.f10067a.setHotspot(f, f2);
            }
        }

        @Override // p108h.C2986c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f983b) {
                this.f10067a.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // p108h.C2986c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f983b) {
                return this.f10067a.setState(iArr);
            }
            return false;
        }

        @Override // p108h.C2986c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f983b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.i0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0$b.class */
    public class RunnableC0240b implements Runnable {
        public RunnableC0240b() {
            C0238i0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0238i0 c0238i0 = C0238i0.this;
            c0238i0.f982m = null;
            c0238i0.drawableStateChanged();
        }
    }

    public C0238i0(Context context, boolean z) {
        super(context, null, C3681R.attr.dropDownListViewStyle);
        this.f979j = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f976g = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        C0239a c0239a = this.f977h;
        if (c0239a != null) {
            c0239a.f983b = z;
        }
    }

    /* renamed from: a */
    public int m8490a(int i, int i2, int i3) {
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
        View view = null;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i5 >= count) {
                return i4;
            }
            int itemViewType = adapter.getItemViewType(i5);
            int i9 = i6;
            if (itemViewType != i6) {
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
            int i11 = i4;
            if (i5 > 0) {
                i11 = i4 + dividerHeight;
            }
            i4 = i11 + view2.getMeasuredHeight();
            if (i4 >= i2) {
                int i12 = i2;
                if (i3 >= 0) {
                    i12 = i2;
                    if (i5 > i3) {
                        i12 = i2;
                        if (i8 > 0) {
                            i12 = i2;
                            if (i4 != i2) {
                                i12 = i8;
                            }
                        }
                    }
                }
                return i12;
            }
            int i13 = i8;
            if (i3 >= 0) {
                i13 = i8;
                if (i5 >= i3) {
                    i13 = i4;
                }
            }
            i5++;
            i6 = i9;
            view = view2;
            i7 = i13;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r0 != 3) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x028c  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8489b(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0238i0.m8489b(android.view.MotionEvent, int):boolean");
    }

    /* renamed from: c */
    public final void m8488c() {
        Drawable selector = getSelector();
        if (selector == null || !this.f980k || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f970a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f970a);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f982m != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m8488c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f979j || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f979j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f979j || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f979j && this.f978i) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f982m = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f982m == null) {
            RunnableC0240b runnableC0240b = new RunnableC0240b();
            this.f982m = runnableC0240b;
            post(runnableC0240b);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m8488c();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f975f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0240b runnableC0240b = this.f982m;
        if (runnableC0240b != null) {
            C0238i0 c0238i0 = C0238i0.this;
            c0238i0.f982m = null;
            c0238i0.removeCallbacks(runnableC0240b);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f978i = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0239a c0239a = drawable != null ? new C0239a(drawable) : null;
        this.f977h = c0239a;
        super.setSelector(c0239a);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f971b = rect.left;
        this.f972c = rect.top;
        this.f973d = rect.right;
        this.f974e = rect.bottom;
    }
}
