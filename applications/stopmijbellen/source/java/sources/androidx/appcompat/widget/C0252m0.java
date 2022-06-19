package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.facebook.ads.AdError;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p117h8.C3035k;
import p151l.AbstractC3424f;
import p163m0.C3589v;
import p163m0.C3611y;
import p196p0.C3989f;
/* renamed from: androidx.appcompat.widget.m0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m0.class */
public class C0252m0 implements AbstractC3424f {

    /* renamed from: A */
    public static Method f1016A;

    /* renamed from: B */
    public static Method f1017B;

    /* renamed from: z */
    public static Method f1018z;

    /* renamed from: a */
    public Context f1019a;

    /* renamed from: b */
    public ListAdapter f1020b;

    /* renamed from: c */
    public C0238i0 f1021c;

    /* renamed from: f */
    public int f1024f;

    /* renamed from: g */
    public int f1025g;

    /* renamed from: i */
    public boolean f1027i;

    /* renamed from: j */
    public boolean f1028j;

    /* renamed from: k */
    public boolean f1029k;

    /* renamed from: n */
    public DataSetObserver f1032n;

    /* renamed from: o */
    public View f1033o;

    /* renamed from: p */
    public AdapterView.OnItemClickListener f1034p;

    /* renamed from: u */
    public final Handler f1039u;

    /* renamed from: w */
    public Rect f1041w;

    /* renamed from: x */
    public boolean f1042x;

    /* renamed from: y */
    public PopupWindow f1043y;

    /* renamed from: d */
    public int f1022d = -2;

    /* renamed from: e */
    public int f1023e = -2;

    /* renamed from: h */
    public int f1026h = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;

    /* renamed from: l */
    public int f1030l = 0;

    /* renamed from: m */
    public int f1031m = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: q */
    public final RunnableC0257e f1035q = new RunnableC0257e();

    /* renamed from: r */
    public final View$OnTouchListenerC0256d f1036r = new View$OnTouchListenerC0256d();

    /* renamed from: s */
    public final C0255c f1037s = new C0255c();

    /* renamed from: t */
    public final RunnableC0253a f1038t = new RunnableC0253a();

    /* renamed from: v */
    public final Rect f1040v = new Rect();

    /* renamed from: androidx.appcompat.widget.m0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m0$a.class */
    public class RunnableC0253a implements Runnable {
        public RunnableC0253a() {
            C0252m0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0238i0 c0238i0 = C0252m0.this.f1021c;
            if (c0238i0 != null) {
                c0238i0.setListSelectionHidden(true);
                c0238i0.requestLayout();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.m0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m0$b.class */
    public class C0254b extends DataSetObserver {
        public C0254b() {
            C0252m0.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (C0252m0.this.mo2305b()) {
                C0252m0.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C0252m0.this.dismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.m0$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m0$c.class */
    public class C0255c implements AbsListView.OnScrollListener {
        public C0255c() {
            C0252m0.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1) {
                if ((C0252m0.this.f1043y.getInputMethodMode() == 2) || C0252m0.this.f1043y.getContentView() == null) {
                    return;
                }
                C0252m0 c0252m0 = C0252m0.this;
                c0252m0.f1039u.removeCallbacks(c0252m0.f1035q);
                C0252m0.this.f1035q.run();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.m0$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m0$d.class */
    public class View$OnTouchListenerC0256d implements View.OnTouchListener {
        public View$OnTouchListenerC0256d() {
            C0252m0.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = C0252m0.this.f1043y) != null && popupWindow.isShowing() && x >= 0 && x < C0252m0.this.f1043y.getWidth() && y >= 0 && y < C0252m0.this.f1043y.getHeight()) {
                C0252m0 c0252m0 = C0252m0.this;
                c0252m0.f1039u.postDelayed(c0252m0.f1035q, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                C0252m0 c0252m02 = C0252m0.this;
                c0252m02.f1039u.removeCallbacks(c0252m02.f1035q);
                return false;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.m0$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m0$e.class */
    public class RunnableC0257e implements Runnable {
        public RunnableC0257e() {
            C0252m0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0238i0 c0238i0 = C0252m0.this.f1021c;
            if (c0238i0 != null) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                if (!C3589v.C3596g.m2059b(c0238i0) || C0252m0.this.f1021c.getCount() <= C0252m0.this.f1021c.getChildCount()) {
                    return;
                }
                int childCount = C0252m0.this.f1021c.getChildCount();
                C0252m0 c0252m0 = C0252m0.this;
                if (childCount > c0252m0.f1031m) {
                    return;
                }
                c0252m0.f1043y.setInputMethodMode(2);
                C0252m0.this.show();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1018z = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f1017B = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f1016A = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public C0252m0(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1019a = context;
        this.f1039u = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10229p, i, i2);
        this.f1024f = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f1025g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1027i = true;
        }
        obtainStyledAttributes.recycle();
        C0274r c0274r = new C0274r(context, attributeSet, i, i2);
        this.f1043y = c0274r;
        c0274r.setInputMethodMode(1);
    }

    @Override // p151l.AbstractC3424f
    /* renamed from: b */
    public boolean mo2305b() {
        return this.f1043y.isShowing();
    }

    /* renamed from: c */
    public int m8465c() {
        return this.f1024f;
    }

    @Override // p151l.AbstractC3424f
    public void dismiss() {
        this.f1043y.dismiss();
        this.f1043y.setContentView(null);
        this.f1021c = null;
        this.f1039u.removeCallbacks(this.f1035q);
    }

    /* renamed from: e */
    public Drawable m8464e() {
        return this.f1043y.getBackground();
    }

    @Override // p151l.AbstractC3424f
    /* renamed from: f */
    public ListView mo2304f() {
        return this.f1021c;
    }

    /* renamed from: h */
    public void m8463h(Drawable drawable) {
        this.f1043y.setBackgroundDrawable(drawable);
    }

    /* renamed from: i */
    public void m8462i(int i) {
        this.f1025g = i;
        this.f1027i = true;
    }

    /* renamed from: k */
    public void m8461k(int i) {
        this.f1024f = i;
    }

    /* renamed from: m */
    public int m8460m() {
        if (!this.f1027i) {
            return 0;
        }
        return this.f1025g;
    }

    /* renamed from: o */
    public void mo8403o(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1032n;
        if (dataSetObserver == null) {
            this.f1032n = new C0254b();
        } else {
            ListAdapter listAdapter2 = this.f1020b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1020b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1032n);
        }
        C0238i0 c0238i0 = this.f1021c;
        if (c0238i0 != null) {
            c0238i0.setAdapter(this.f1020b);
        }
    }

    /* renamed from: p */
    public C0238i0 mo8450p(Context context, boolean z) {
        return new C0238i0(context, z);
    }

    /* renamed from: q */
    public void m8459q(int i) {
        Drawable background = this.f1043y.getBackground();
        if (background == null) {
            this.f1023e = i;
            return;
        }
        background.getPadding(this.f1040v);
        Rect rect = this.f1040v;
        this.f1023e = rect.left + rect.right + i;
    }

    /* renamed from: r */
    public void m8458r(boolean z) {
        this.f1042x = z;
        this.f1043y.setFocusable(z);
    }

    @Override // p151l.AbstractC3424f
    public void show() {
        int i;
        int i2;
        int i3;
        int i4;
        C0238i0 c0238i0;
        int i5;
        int i6;
        if (this.f1021c == null) {
            C0238i0 mo8450p = mo8450p(this.f1019a, !this.f1042x);
            this.f1021c = mo8450p;
            mo8450p.setAdapter(this.f1020b);
            this.f1021c.setOnItemClickListener(this.f1034p);
            this.f1021c.setFocusable(true);
            this.f1021c.setFocusableInTouchMode(true);
            this.f1021c.setOnItemSelectedListener(new C0250l0(this));
            this.f1021c.setOnScrollListener(this.f1037s);
            this.f1043y.setContentView(this.f1021c);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f1043y.getContentView();
        }
        Drawable background = this.f1043y.getBackground();
        if (background != null) {
            background.getPadding(this.f1040v);
            Rect rect = this.f1040v;
            int i7 = rect.top;
            int i8 = rect.bottom + i7;
            i = i8;
            if (!this.f1027i) {
                this.f1025g = -i7;
                i = i8;
            }
        } else {
            this.f1040v.setEmpty();
            i = 0;
        }
        boolean z = this.f1043y.getInputMethodMode() == 2;
        View view = this.f1033o;
        int i9 = this.f1025g;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f1016A;
            if (method != null) {
                try {
                    i2 = ((Integer) method.invoke(this.f1043y, view, Integer.valueOf(i9), Boolean.valueOf(z))).intValue();
                } catch (Exception e) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            i2 = this.f1043y.getMaxAvailableHeight(view, i9);
        } else {
            i2 = this.f1043y.getMaxAvailableHeight(view, i9, z);
        }
        if (this.f1022d == -1) {
            i3 = i2 + i;
        } else {
            int i10 = this.f1023e;
            if (i10 == -2) {
                int i11 = this.f1019a.getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = this.f1040v;
                i6 = View.MeasureSpec.makeMeasureSpec(i11 - (rect2.left + rect2.right), Integer.MIN_VALUE);
            } else if (i10 != -1) {
                i6 = View.MeasureSpec.makeMeasureSpec(i10, 1073741824);
            } else {
                int i12 = this.f1019a.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.f1040v;
                i6 = View.MeasureSpec.makeMeasureSpec(i12 - (rect3.left + rect3.right), 1073741824);
            }
            int m8490a = this.f1021c.m8490a(i6, i2 - 0, -1);
            i3 = m8490a + (m8490a > 0 ? this.f1021c.getPaddingBottom() + this.f1021c.getPaddingTop() + i + 0 : 0);
        }
        boolean z2 = this.f1043y.getInputMethodMode() == 2;
        C3989f.m1567b(this.f1043y, this.f1026h);
        if (this.f1043y.isShowing()) {
            View view2 = this.f1033o;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (!C3589v.C3596g.m2059b(view2)) {
                return;
            }
            int i13 = this.f1023e;
            if (i13 == -1) {
                i5 = -1;
            } else {
                i5 = i13;
                if (i13 == -2) {
                    i5 = this.f1033o.getWidth();
                }
            }
            int i14 = this.f1022d;
            if (i14 == -1) {
                if (!z2) {
                    i3 = -1;
                }
                if (z2) {
                    this.f1043y.setWidth(this.f1023e == -1 ? -1 : 0);
                    this.f1043y.setHeight(0);
                } else {
                    PopupWindow popupWindow = this.f1043y;
                    int i15 = 0;
                    if (this.f1023e == -1) {
                        i15 = -1;
                    }
                    popupWindow.setWidth(i15);
                    this.f1043y.setHeight(-1);
                }
            } else if (i14 != -2) {
                i3 = i14;
            }
            this.f1043y.setOutsideTouchable(true);
            PopupWindow popupWindow2 = this.f1043y;
            View view3 = this.f1033o;
            int i16 = this.f1024f;
            int i17 = this.f1025g;
            if (i5 < 0) {
                i5 = -1;
            }
            if (i3 < 0) {
                i3 = -1;
            }
            popupWindow2.update(view3, i16, i17, i5, i3);
            return;
        }
        int i18 = this.f1023e;
        if (i18 == -1) {
            i4 = -1;
        } else {
            i4 = i18;
            if (i18 == -2) {
                i4 = this.f1033o.getWidth();
            }
        }
        int i19 = this.f1022d;
        if (i19 == -1) {
            i3 = -1;
        } else if (i19 != -2) {
            i3 = i19;
        }
        this.f1043y.setWidth(i4);
        this.f1043y.setHeight(i3);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f1018z;
            if (method2 != null) {
                try {
                    method2.invoke(this.f1043y, Boolean.TRUE);
                } catch (Exception e2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.f1043y.setIsClippedToScreen(true);
        }
        this.f1043y.setOutsideTouchable(true);
        this.f1043y.setTouchInterceptor(this.f1036r);
        if (this.f1029k) {
            C3989f.m1568a(this.f1043y, this.f1028j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = f1017B;
            if (method3 != null) {
                try {
                    method3.invoke(this.f1043y, this.f1041w);
                } catch (Exception e3) {
                }
            }
        } else {
            this.f1043y.setEpicenterBounds(this.f1041w);
        }
        C3989f.C3990a.m1566a(this.f1043y, this.f1033o, this.f1024f, this.f1025g, this.f1030l);
        this.f1021c.setSelection(-1);
        if ((!this.f1042x || this.f1021c.isInTouchMode()) && (c0238i0 = this.f1021c) != null) {
            c0238i0.setListSelectionHidden(true);
            c0238i0.requestLayout();
        }
        if (this.f1042x) {
            return;
        }
        this.f1039u.post(this.f1038t);
    }
}
