package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.C0032R;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25488p;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.f.b0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/b0.class */
public class C25493b0 implements AbstractC25488p {

    /* renamed from: A */
    public static Method f71313A;

    /* renamed from: B */
    public static Method f71314B;

    /* renamed from: C */
    public static Method f71315C;

    /* renamed from: a */
    public Context f71316a;

    /* renamed from: b */
    public ListAdapter f71317b;

    /* renamed from: c */
    public C25555x f71318c;

    /* renamed from: f */
    public int f71321f;

    /* renamed from: g */
    public int f71322g;

    /* renamed from: i */
    public boolean f71324i;

    /* renamed from: j */
    public boolean f71325j;

    /* renamed from: k */
    public boolean f71326k;

    /* renamed from: o */
    public DataSetObserver f71330o;

    /* renamed from: p */
    public View f71331p;

    /* renamed from: q */
    public AdapterView.OnItemClickListener f71332q;

    /* renamed from: v */
    public final Handler f71337v;

    /* renamed from: x */
    public Rect f71339x;

    /* renamed from: y */
    public boolean f71340y;

    /* renamed from: z */
    public PopupWindow f71341z;

    /* renamed from: d */
    public int f71319d = -2;

    /* renamed from: e */
    public int f71320e = -2;

    /* renamed from: h */
    public int f71323h = 1002;

    /* renamed from: l */
    public int f71327l = 0;

    /* renamed from: m */
    public int f71328m = Integer.MAX_VALUE;

    /* renamed from: n */
    public int f71329n = 0;

    /* renamed from: r */
    public final RunnableC25498e f71333r = new RunnableC25498e();

    /* renamed from: s */
    public final View$OnTouchListenerC25497d f71334s = new View$OnTouchListenerC25497d();

    /* renamed from: t */
    public final C25496c f71335t = new C25496c();

    /* renamed from: u */
    public final RunnableC25494a f71336u = new RunnableC25494a();

    /* renamed from: w */
    public final Rect f71338w = new Rect();

    /* renamed from: n3.b.f.b0$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/b0$a.class */
    public class RunnableC25494a implements Runnable {
        public RunnableC25494a() {
            C25493b0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C25555x c25555x = C25493b0.this.f71318c;
            if (c25555x != null) {
                c25555x.setListSelectionHidden(true);
                c25555x.requestLayout();
            }
        }
    }

    /* renamed from: n3.b.f.b0$b */
    /* loaded from: classes-dex2jar.jar:n3/b/f/b0$b.class */
    public class C25495b extends DataSetObserver {
        public C25495b() {
            C25493b0.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (C25493b0.this.isShowing()) {
                C25493b0.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C25493b0.this.dismiss();
        }
    }

    /* renamed from: n3.b.f.b0$c */
    /* loaded from: classes-dex2jar.jar:n3/b/f/b0$c.class */
    public class C25496c implements AbsListView.OnScrollListener {
        public C25496c() {
            C25493b0.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1) {
                if ((C25493b0.this.f71341z.getInputMethodMode() == 2) || C25493b0.this.f71341z.getContentView() == null) {
                    return;
                }
                C25493b0 c25493b0 = C25493b0.this;
                c25493b0.f71337v.removeCallbacks(c25493b0.f71333r);
                C25493b0.this.f71333r.run();
            }
        }
    }

    /* renamed from: n3.b.f.b0$d */
    /* loaded from: classes-dex2jar.jar:n3/b/f/b0$d.class */
    public class View$OnTouchListenerC25497d implements View.OnTouchListener {
        public View$OnTouchListenerC25497d() {
            C25493b0.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = C25493b0.this.f71341z) != null && popupWindow.isShowing() && x >= 0 && x < C25493b0.this.f71341z.getWidth() && y >= 0 && y < C25493b0.this.f71341z.getHeight()) {
                C25493b0 c25493b0 = C25493b0.this;
                c25493b0.f71337v.postDelayed(c25493b0.f71333r, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                C25493b0 c25493b02 = C25493b0.this;
                c25493b02.f71337v.removeCallbacks(c25493b02.f71333r);
                return false;
            }
        }
    }

    /* renamed from: n3.b.f.b0$e */
    /* loaded from: classes-dex2jar.jar:n3/b/f/b0$e.class */
    public class RunnableC25498e implements Runnable {
        public RunnableC25498e() {
            C25493b0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C25555x c25555x = C25493b0.this.f71318c;
            if (c25555x != null) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (!c25555x.isAttachedToWindow() || C25493b0.this.f71318c.getCount() <= C25493b0.this.f71318c.getChildCount()) {
                    return;
                }
                int childCount = C25493b0.this.f71318c.getChildCount();
                C25493b0 c25493b0 = C25493b0.this;
                if (childCount > c25493b0.f71328m) {
                    return;
                }
                c25493b0.f71341z.setInputMethodMode(2);
                C25493b0.this.show();
            }
        }
    }

    static {
        Class cls = Boolean.TYPE;
        int i = Build.VERSION.SDK_INT;
        if (i <= 28) {
            try {
                f71313A = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException e) {
            }
            try {
                f71315C = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
            }
        }
        if (i <= 23) {
            try {
                f71314B = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException e3) {
            }
        }
    }

    public C25493b0(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f71316a = context;
        this.f71337v = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0032R.styleable.ListPopupWindow, i, i2);
        this.f71321f = obtainStyledAttributes.getDimensionPixelOffset(C0032R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C0032R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f71322g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f71324i = true;
        }
        obtainStyledAttributes.recycle();
        C25511h c25511h = new C25511h(context, attributeSet, i, i2);
        this.f71341z = c25511h;
        c25511h.setInputMethodMode(1);
    }

    /* renamed from: b */
    public Drawable m3404b() {
        return this.f71341z.getBackground();
    }

    /* renamed from: c */
    public void m3403c(int i) {
        this.f71322g = i;
        this.f71324i = true;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25488p
    public void dismiss() {
        this.f71341z.dismiss();
        this.f71341z.setContentView(null);
        this.f71318c = null;
        this.f71337v.removeCallbacks(this.f71333r);
    }

    /* renamed from: f */
    public int m3402f() {
        if (!this.f71324i) {
            return 0;
        }
        return this.f71322g;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25488p
    /* renamed from: h */
    public ListView mo3401h() {
        return this.f71318c;
    }

    /* renamed from: i */
    public int m3400i() {
        return this.f71321f;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25488p
    public boolean isShowing() {
        return this.f71341z.isShowing();
    }

    /* renamed from: j */
    public void m3399j(int i) {
        this.f71321f = i;
    }

    /* renamed from: m */
    public void m3398m(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f71330o;
        if (dataSetObserver == null) {
            this.f71330o = new C25495b();
        } else {
            ListAdapter listAdapter2 = this.f71317b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f71317b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f71330o);
        }
        C25555x c25555x = this.f71318c;
        if (c25555x != null) {
            c25555x.setAdapter(this.f71317b);
        }
    }

    /* renamed from: n */
    public void m3397n(Drawable drawable) {
        this.f71341z.setBackgroundDrawable(drawable);
    }

    /* renamed from: o */
    public C25555x m3396o(Context context, boolean z) {
        return new C25555x(context, z);
    }

    /* renamed from: p */
    public void m3395p(int i) {
        Drawable background = this.f71341z.getBackground();
        if (background == null) {
            this.f71320e = i;
            return;
        }
        background.getPadding(this.f71338w);
        Rect rect = this.f71338w;
        this.f71320e = rect.left + rect.right + i;
    }

    /* renamed from: q */
    public void m3394q(boolean z) {
        this.f71340y = z;
        this.f71341z.setFocusable(z);
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25488p
    public void show() {
        int i;
        int i2;
        int i3;
        int i4;
        C25555x c25555x;
        int i5;
        int i6;
        int i7 = Build.VERSION.SDK_INT;
        if (this.f71318c == null) {
            C25555x m3396o = m3396o(this.f71316a, !this.f71340y);
            this.f71318c = m3396o;
            m3396o.setAdapter(this.f71317b);
            this.f71318c.setOnItemClickListener(this.f71332q);
            this.f71318c.setFocusable(true);
            this.f71318c.setFocusableInTouchMode(true);
            this.f71318c.setOnItemSelectedListener(new C25491a0(this));
            this.f71318c.setOnScrollListener(this.f71335t);
            this.f71341z.setContentView(this.f71318c);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f71341z.getContentView();
        }
        Drawable background = this.f71341z.getBackground();
        if (background != null) {
            background.getPadding(this.f71338w);
            Rect rect = this.f71338w;
            int i8 = rect.top;
            int i9 = rect.bottom + i8;
            i = i9;
            if (!this.f71324i) {
                this.f71322g = -i8;
                i = i9;
            }
        } else {
            this.f71338w.setEmpty();
            i = 0;
        }
        boolean z = this.f71341z.getInputMethodMode() == 2;
        View view = this.f71331p;
        int i10 = this.f71322g;
        if (i7 <= 23) {
            Method method = f71314B;
            if (method != null) {
                try {
                    i2 = ((Integer) method.invoke(this.f71341z, view, Integer.valueOf(i10), Boolean.valueOf(z))).intValue();
                } catch (Exception e) {
                }
            }
            i2 = this.f71341z.getMaxAvailableHeight(view, i10);
        } else {
            i2 = this.f71341z.getMaxAvailableHeight(view, i10, z);
        }
        if (this.f71319d == -1) {
            i3 = i2 + i;
        } else {
            int i11 = this.f71320e;
            if (i11 == -2) {
                int i12 = this.f71316a.getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = this.f71338w;
                i6 = View.MeasureSpec.makeMeasureSpec(i12 - (rect2.left + rect2.right), Integer.MIN_VALUE);
            } else if (i11 != -1) {
                i6 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
            } else {
                int i13 = this.f71316a.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.f71338w;
                i6 = View.MeasureSpec.makeMeasureSpec(i13 - (rect3.left + rect3.right), 1073741824);
            }
            int m3247a = this.f71318c.m3247a(i6, i2 - 0, -1);
            i3 = m3247a + (m3247a > 0 ? this.f71318c.getPaddingBottom() + this.f71318c.getPaddingTop() + i + 0 : 0);
        }
        boolean z2 = this.f71341z.getInputMethodMode() == 2;
        this.f71341z.setWindowLayoutType(this.f71323h);
        if (this.f71341z.isShowing()) {
            View view2 = this.f71331p;
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (!view2.isAttachedToWindow()) {
                return;
            }
            int i14 = this.f71320e;
            if (i14 == -1) {
                i5 = -1;
            } else {
                i5 = i14;
                if (i14 == -2) {
                    i5 = this.f71331p.getWidth();
                }
            }
            int i15 = this.f71319d;
            if (i15 == -1) {
                if (!z2) {
                    i3 = -1;
                }
                if (z2) {
                    this.f71341z.setWidth(this.f71320e == -1 ? -1 : 0);
                    this.f71341z.setHeight(0);
                } else {
                    PopupWindow popupWindow = this.f71341z;
                    int i16 = 0;
                    if (this.f71320e == -1) {
                        i16 = -1;
                    }
                    popupWindow.setWidth(i16);
                    this.f71341z.setHeight(-1);
                }
            } else if (i15 != -2) {
                i3 = i15;
            }
            this.f71341z.setOutsideTouchable(true);
            PopupWindow popupWindow2 = this.f71341z;
            View view3 = this.f71331p;
            int i17 = this.f71321f;
            int i18 = this.f71322g;
            if (i5 < 0) {
                i5 = -1;
            }
            if (i3 < 0) {
                i3 = -1;
            }
            popupWindow2.update(view3, i17, i18, i5, i3);
            return;
        }
        int i19 = this.f71320e;
        if (i19 == -1) {
            i4 = -1;
        } else {
            i4 = i19;
            if (i19 == -2) {
                i4 = this.f71331p.getWidth();
            }
        }
        int i20 = this.f71319d;
        if (i20 == -1) {
            i3 = -1;
        } else if (i20 != -2) {
            i3 = i20;
        }
        this.f71341z.setWidth(i4);
        this.f71341z.setHeight(i3);
        if (i7 <= 28) {
            Method method2 = f71313A;
            if (method2 != null) {
                try {
                    method2.invoke(this.f71341z, Boolean.TRUE);
                } catch (Exception e2) {
                }
            }
        } else {
            this.f71341z.setIsClippedToScreen(true);
        }
        this.f71341z.setOutsideTouchable(true);
        this.f71341z.setTouchInterceptor(this.f71334s);
        if (this.f71326k) {
            this.f71341z.setOverlapAnchor(this.f71325j);
        }
        if (i7 <= 28) {
            Method method3 = f71315C;
            if (method3 != null) {
                try {
                    method3.invoke(this.f71341z, this.f71339x);
                } catch (Exception e3) {
                }
            }
        } else {
            this.f71341z.setEpicenterBounds(this.f71339x);
        }
        this.f71341z.showAsDropDown(this.f71331p, this.f71321f, this.f71322g, this.f71327l);
        this.f71318c.setSelection(-1);
        if ((!this.f71340y || this.f71318c.isInTouchMode()) && (c25555x = this.f71318c) != null) {
            c25555x.setListSelectionHidden(true);
            c25555x.requestLayout();
        }
        if (this.f71340y) {
            return;
        }
        this.f71337v.post(this.f71336u);
    }
}
