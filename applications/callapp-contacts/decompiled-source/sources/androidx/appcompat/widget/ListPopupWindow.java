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
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.p;
import androidx.core.view.v;
import androidx.core.widget.g;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.facebook.ads.AdError;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow.class */
public class ListPopupWindow implements p {

    /* renamed from: a  reason: collision with root package name */
    private static Method f962a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f963b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f964c;
    private DataSetObserver A;
    private Drawable B;
    private AdapterView.OnItemSelectedListener C;
    private final d D;
    private final c E;
    private final a F;
    private Runnable G;
    private final Rect H;
    private Rect I;

    /* renamed from: d  reason: collision with root package name */
    private Context f965d;
    public DropDownListView e;
    public int f;
    public int g;
    int h;
    public View i;
    public AdapterView.OnItemClickListener j;
    final e k;
    final Handler l;
    public boolean m;
    public PopupWindow n;
    private ListAdapter o;
    private int p;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private View y;
    private int z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$a.class */
    public final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListPopupWindow.this.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$b.class */
    public final class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            if (ListPopupWindow.this.n.isShowing()) {
                ListPopupWindow.this.e_();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$c.class */
    public final class c implements AbsListView.OnScrollListener {
        c() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.n() && ListPopupWindow.this.n.getContentView() != null) {
                ListPopupWindow.this.l.removeCallbacks(ListPopupWindow.this.k);
                ListPopupWindow.this.k.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$d.class */
    public final class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.n != null && ListPopupWindow.this.n.isShowing() && x >= 0 && x < ListPopupWindow.this.n.getWidth() && y >= 0 && y < ListPopupWindow.this.n.getHeight()) {
                ListPopupWindow.this.l.postDelayed(ListPopupWindow.this.k, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow.this.l.removeCallbacks(ListPopupWindow.this.k);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$e.class */
    public final class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ListPopupWindow.this.e != null && v.E(ListPopupWindow.this.e) && ListPopupWindow.this.e.getCount() > ListPopupWindow.this.e.getChildCount() && ListPopupWindow.this.e.getChildCount() <= ListPopupWindow.this.h) {
                ListPopupWindow.this.n.setInputMethodMode(2);
                ListPopupWindow.this.e_();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f962a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e2) {
            }
            try {
                f964c = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e3) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f963b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e4) {
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, a.C0018a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = -2;
        this.q = -2;
        this.s = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        this.g = 0;
        this.w = false;
        this.x = false;
        this.h = Integer.MAX_VALUE;
        this.z = 0;
        this.k = new e();
        this.D = new d();
        this.E = new c();
        this.F = new a();
        this.H = new Rect();
        this.f965d = context;
        this.l = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ListPopupWindow, i, i2);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(a.j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(a.j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.r = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.t = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.n = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    private int a(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.n.getMaxAvailableHeight(view, i, z);
        }
        Method method = f963b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.n, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception e2) {
            }
        }
        return this.n.getMaxAvailableHeight(view, i);
    }

    private void a() {
        View view = this.y;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.y);
            }
        }
    }

    DropDownListView a(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    public final void a(int i) {
        this.r = i;
        this.t = true;
    }

    public final void a(Rect rect) {
        this.I = rect != null ? new Rect(rect) : null;
    }

    public final void a(Drawable drawable) {
        this.n.setBackgroundDrawable(drawable);
    }

    public void a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.A;
        if (dataSetObserver == null) {
            this.A = new b();
        } else {
            ListAdapter listAdapter2 = this.o;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.o = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.A);
        }
        DropDownListView dropDownListView = this.e;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.o);
        }
    }

    public final void a(PopupWindow.OnDismissListener onDismissListener) {
        this.n.setOnDismissListener(onDismissListener);
    }

    public final Drawable b() {
        return this.n.getBackground();
    }

    public final void b(int i) {
        this.f = i;
    }

    public final int c() {
        if (!this.t) {
            return 0;
        }
        return this.r;
    }

    @Override // androidx.appcompat.view.menu.p
    public final void d() {
        this.n.dismiss();
        a();
        this.n.setContentView(null);
        this.e = null;
        this.l.removeCallbacks(this.k);
    }

    public final void d(int i) {
        Drawable background = this.n.getBackground();
        if (background != null) {
            background.getPadding(this.H);
            this.q = this.H.left + this.H.right + i;
            return;
        }
        this.q = i;
    }

    @Override // androidx.appcompat.view.menu.p
    public final boolean e() {
        return this.n.isShowing();
    }

    @Override // androidx.appcompat.view.menu.p
    public final void e_() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View view;
        int i6;
        boolean z = true;
        if (this.e == null) {
            Context context = this.f965d;
            this.G = new Runnable() { // from class: androidx.appcompat.widget.ListPopupWindow.1
                @Override // java.lang.Runnable
                public final void run() {
                    View view2 = ListPopupWindow.this.i;
                    if (view2 != null && view2.getWindowToken() != null) {
                        ListPopupWindow.this.e_();
                    }
                }
            };
            DropDownListView a2 = a(context, !this.m);
            this.e = a2;
            Drawable drawable = this.B;
            if (drawable != null) {
                a2.setSelector(drawable);
            }
            this.e.setAdapter(this.o);
            this.e.setOnItemClickListener(this.j);
            this.e.setFocusable(true);
            this.e.setFocusableInTouchMode(true);
            this.e.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onItemSelected(AdapterView<?> adapterView, View view2, int i7, long j) {
                    DropDownListView dropDownListView;
                    if (i7 != -1 && (dropDownListView = ListPopupWindow.this.e) != null) {
                        dropDownListView.f950a = false;
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.e.setOnScrollListener(this.E);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.C;
            if (onItemSelectedListener != null) {
                this.e.setOnItemSelectedListener(onItemSelectedListener);
            }
            View view2 = this.e;
            View view3 = this.y;
            if (view3 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i7 = this.z;
                if (i7 == 0) {
                    linearLayout.addView(view3);
                    linearLayout.addView(view2, layoutParams);
                } else if (i7 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.z);
                } else {
                    linearLayout.addView(view2, layoutParams);
                    linearLayout.addView(view3);
                }
                int i8 = this.q;
                if (i8 >= 0) {
                    i6 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                } else {
                    i8 = 0;
                    i6 = 0;
                }
                view3.measure(View.MeasureSpec.makeMeasureSpec(i8, i6), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i = view3.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                i = 0;
                view = view2;
            }
            this.n.setContentView(view);
        } else {
            this.n.getContentView();
            View view4 = this.y;
            if (view4 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view4.getLayoutParams();
                i = view4.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.n.getBackground();
        if (background != null) {
            background.getPadding(this.H);
            int i9 = this.H.top + this.H.bottom;
            i2 = i9;
            if (!this.t) {
                this.r = -this.H.top;
                i2 = i9;
            }
        } else {
            this.H.setEmpty();
            i2 = 0;
        }
        int a3 = a(this.i, this.r, this.n.getInputMethodMode() == 2);
        if (this.w || this.p == -1) {
            i3 = a3 + i2;
        } else {
            int i10 = this.q;
            int a4 = this.e.a(i10 != -2 ? i10 != -1 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f965d.getResources().getDisplayMetrics().widthPixels - (this.H.left + this.H.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f965d.getResources().getDisplayMetrics().widthPixels - (this.H.left + this.H.right), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), 0, -1, a3 - i, -1);
            int i11 = i;
            if (a4 > 0) {
                i11 = i + i2 + this.e.getPaddingTop() + this.e.getPaddingBottom();
            }
            i3 = a4 + i11;
        }
        boolean n = n();
        g.a(this.n, this.s);
        if (!this.n.isShowing()) {
            int i12 = this.q;
            if (i12 == -1) {
                i4 = -1;
            } else {
                i4 = i12;
                if (i12 == -2) {
                    i4 = this.i.getWidth();
                }
            }
            int i13 = this.p;
            if (i13 == -1) {
                i3 = -1;
            } else if (i13 != -2) {
                i3 = i13;
            }
            this.n.setWidth(i4);
            this.n.setHeight(i3);
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = f962a;
                if (method != null) {
                    try {
                        method.invoke(this.n, Boolean.TRUE);
                    } catch (Exception e2) {
                    }
                }
            } else {
                this.n.setIsClippedToScreen(true);
            }
            this.n.setOutsideTouchable(!this.x && !this.w);
            this.n.setTouchInterceptor(this.D);
            if (this.v) {
                g.a(this.n, this.u);
            }
            if (Build.VERSION.SDK_INT <= 28) {
                Method method2 = f964c;
                if (method2 != null) {
                    try {
                        method2.invoke(this.n, this.I);
                    } catch (Exception e3) {
                        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e3);
                    }
                }
            } else {
                this.n.setEpicenterBounds(this.I);
            }
            PopupWindow popupWindow = this.n;
            View view5 = this.i;
            int i14 = this.f;
            int i15 = this.r;
            int i16 = this.g;
            if (Build.VERSION.SDK_INT >= 19) {
                popupWindow.showAsDropDown(view5, i14, i15, i16);
            } else {
                int i17 = i14;
                if ((androidx.core.view.e.a(i16, v.f(view5)) & 7) == 5) {
                    i17 = i14 - (popupWindow.getWidth() - view5.getWidth());
                }
                popupWindow.showAsDropDown(view5, i17, i15);
            }
            this.e.setSelection(-1);
            if (!this.m || this.e.isInTouchMode()) {
                m();
            }
            if (!this.m) {
                this.l.post(this.F);
            }
        } else if (v.E(this.i)) {
            int i18 = this.q;
            if (i18 == -1) {
                i5 = -1;
            } else {
                i5 = i18;
                if (i18 == -2) {
                    i5 = this.i.getWidth();
                }
            }
            int i19 = this.p;
            if (i19 == -1) {
                if (!n) {
                    i3 = -1;
                }
                if (n) {
                    this.n.setWidth(this.q == -1 ? -1 : 0);
                    this.n.setHeight(0);
                } else {
                    this.n.setWidth(this.q == -1 ? -1 : 0);
                    this.n.setHeight(-1);
                }
            } else if (i19 != -2) {
                i3 = i19;
            }
            PopupWindow popupWindow2 = this.n;
            if (this.x || this.w) {
                z = false;
            }
            popupWindow2.setOutsideTouchable(z);
            PopupWindow popupWindow3 = this.n;
            View view6 = this.i;
            int i20 = this.f;
            int i21 = this.r;
            if (i5 < 0) {
                i5 = -1;
            }
            if (i3 < 0) {
                i3 = -1;
            }
            popupWindow3.update(view6, i20, i21, i5, i3);
        }
    }

    public final int f() {
        return this.f;
    }

    @Override // androidx.appcompat.view.menu.p
    public final ListView g() {
        return this.e;
    }

    public final void i() {
        this.z = 0;
    }

    public final void j() {
        this.m = true;
        this.n.setFocusable(true);
    }

    public final int k() {
        return this.q;
    }

    public final void l() {
        this.n.setInputMethodMode(2);
    }

    public final void m() {
        DropDownListView dropDownListView = this.e;
        if (dropDownListView != null) {
            dropDownListView.f950a = true;
            dropDownListView.requestLayout();
        }
    }

    public final boolean n() {
        return this.n.getInputMethodMode() == 2;
    }

    public final int o() {
        if (!this.n.isShowing()) {
            return -1;
        }
        return this.e.getSelectedItemPosition();
    }

    public final void p() {
        this.v = true;
        this.u = true;
    }
}
