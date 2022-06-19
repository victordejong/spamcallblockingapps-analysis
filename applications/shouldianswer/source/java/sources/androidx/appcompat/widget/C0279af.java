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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0202p;
import androidx.core.p023g.C0552u;
import androidx.core.widget.C0604h;
import androidx.customview.p026a.AbstractC0610a;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.af */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af.class */
public class C0279af implements AbstractC0202p {

    /* renamed from: a */
    private static Method f1154a;

    /* renamed from: b */
    private static Method f1155b;

    /* renamed from: h */
    private static Method f1156h;

    /* renamed from: A */
    private Drawable f1157A;

    /* renamed from: B */
    private AdapterView.OnItemClickListener f1158B;

    /* renamed from: C */
    private AdapterView.OnItemSelectedListener f1159C;

    /* renamed from: D */
    private final View$OnTouchListenerC0285d f1160D;

    /* renamed from: E */
    private final C0284c f1161E;

    /* renamed from: F */
    private final RunnableC0282a f1162F;

    /* renamed from: G */
    private Runnable f1163G;

    /* renamed from: H */
    private final Rect f1164H;

    /* renamed from: I */
    private Rect f1165I;

    /* renamed from: J */
    private boolean f1166J;

    /* renamed from: c */
    C0269ab f1167c;

    /* renamed from: d */
    int f1168d;

    /* renamed from: e */
    final RunnableC0286e f1169e;

    /* renamed from: f */
    final Handler f1170f;

    /* renamed from: g */
    PopupWindow f1171g;

    /* renamed from: i */
    private Context f1172i;

    /* renamed from: j */
    private ListAdapter f1173j;

    /* renamed from: k */
    private int f1174k;

    /* renamed from: l */
    private int f1175l;

    /* renamed from: m */
    private int f1176m;

    /* renamed from: n */
    private int f1177n;

    /* renamed from: o */
    private int f1178o;

    /* renamed from: p */
    private boolean f1179p;

    /* renamed from: q */
    private boolean f1180q;

    /* renamed from: r */
    private boolean f1181r;

    /* renamed from: s */
    private boolean f1182s;

    /* renamed from: t */
    private int f1183t;

    /* renamed from: u */
    private boolean f1184u;

    /* renamed from: v */
    private boolean f1185v;

    /* renamed from: w */
    private View f1186w;

    /* renamed from: x */
    private int f1187x;

    /* renamed from: y */
    private DataSetObserver f1188y;

    /* renamed from: z */
    private View f1189z;

    /* renamed from: androidx.appcompat.widget.af$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$a.class */
    public class RunnableC0282a implements Runnable {
        RunnableC0282a() {
            C0279af.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0279af.this.m7247l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.af$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$b.class */
    public class C0283b extends DataSetObserver {
        C0283b() {
            C0279af.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (C0279af.this.mo7266c()) {
                C0279af.this.mo7250j_();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C0279af.this.mo7270b();
        }
    }

    /* renamed from: androidx.appcompat.widget.af$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$c.class */
    public class C0284c implements AbsListView.OnScrollListener {
        C0284c() {
            C0279af.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || C0279af.this.m7246m() || C0279af.this.f1171g.getContentView() == null) {
                return;
            }
            C0279af.this.f1170f.removeCallbacks(C0279af.this.f1169e);
            C0279af.this.f1169e.run();
        }
    }

    /* renamed from: androidx.appcompat.widget.af$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$d.class */
    public class View$OnTouchListenerC0285d implements View.OnTouchListener {
        View$OnTouchListenerC0285d() {
            C0279af.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && C0279af.this.f1171g != null && C0279af.this.f1171g.isShowing() && x >= 0 && x < C0279af.this.f1171g.getWidth() && y >= 0 && y < C0279af.this.f1171g.getHeight()) {
                C0279af.this.f1170f.postDelayed(C0279af.this.f1169e, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                C0279af.this.f1170f.removeCallbacks(C0279af.this.f1169e);
                return false;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.af$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af$e.class */
    public class RunnableC0286e implements Runnable {
        RunnableC0286e() {
            C0279af.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0279af.this.f1167c == null || !C0552u.m6292D(C0279af.this.f1167c) || C0279af.this.f1167c.getCount() <= C0279af.this.f1167c.getChildCount() || C0279af.this.f1167c.getChildCount() > C0279af.this.f1168d) {
                return;
            }
            C0279af.this.f1171g.setInputMethodMode(2);
            C0279af.this.mo7250j_();
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1154a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f1156h = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f1155b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public C0279af(Context context) {
        this(context, null, C0051a.C0052a.listPopupWindowStyle);
    }

    public C0279af(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public C0279af(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1174k = -2;
        this.f1175l = -2;
        this.f1178o = 1002;
        this.f1180q = true;
        this.f1183t = 0;
        this.f1184u = false;
        this.f1185v = false;
        this.f1168d = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f1187x = 0;
        this.f1169e = new RunnableC0286e();
        this.f1160D = new View$OnTouchListenerC0285d();
        this.f1161E = new C0284c();
        this.f1162F = new RunnableC0282a();
        this.f1164H = new Rect();
        this.f1172i = context;
        this.f1170f = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0051a.C0061j.ListPopupWindow, i, i2);
        this.f1176m = obtainStyledAttributes.getDimensionPixelOffset(C0051a.C0061j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.f1177n = obtainStyledAttributes.getDimensionPixelOffset(C0051a.C0061j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.f1177n != 0) {
            this.f1179p = true;
        }
        obtainStyledAttributes.recycle();
        this.f1171g = new C0342o(context, attributeSet, i, i2);
        this.f1171g.setInputMethodMode(1);
    }

    /* renamed from: a */
    private int m7275a(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f1155b;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(this.f1171g, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
                } catch (Exception e) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            return this.f1171g.getMaxAvailableHeight(view, i);
        }
        return this.f1171g.getMaxAvailableHeight(view, i, z);
    }

    /* renamed from: c */
    private void m7265c(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f1171g.setIsClippedToScreen(z);
            return;
        }
        Method method = f1154a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(this.f1171g, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }

    /* renamed from: g */
    private void m7258g() {
        View view = this.f1186w;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return;
            }
            ((ViewGroup) parent).removeView(this.f1186w);
        }
    }

    /* renamed from: h */
    private int m7256h() {
        int i;
        int i2;
        LinearLayout linearLayout;
        int i3;
        boolean z = true;
        if (this.f1167c == null) {
            Context context = this.f1172i;
            this.f1163G = new Runnable() { // from class: androidx.appcompat.widget.af.1
                @Override // java.lang.Runnable
                public void run() {
                    View m7252j = C0279af.this.m7252j();
                    if (m7252j == null || m7252j.getWindowToken() == null) {
                        return;
                    }
                    C0279af.this.mo7250j_();
                }
            };
            this.f1167c = mo7245a(context, !this.f1166J);
            Drawable drawable = this.f1157A;
            if (drawable != null) {
                this.f1167c.setSelector(drawable);
            }
            this.f1167c.setAdapter(this.f1173j);
            this.f1167c.setOnItemClickListener(this.f1158B);
            this.f1167c.setFocusable(true);
            this.f1167c.setFocusableInTouchMode(true);
            this.f1167c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.af.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                    C0269ab c0269ab;
                    if (i4 == -1 || (c0269ab = C0279af.this.f1167c) == null) {
                        return;
                    }
                    c0269ab.setListSelectionHidden(false);
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f1167c.setOnScrollListener(this.f1161E);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1159C;
            if (onItemSelectedListener != null) {
                this.f1167c.setOnItemSelectedListener(onItemSelectedListener);
            }
            C0269ab c0269ab = this.f1167c;
            View view = this.f1186w;
            if (view != null) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i4 = this.f1187x;
                if (i4 == 0) {
                    linearLayout2.addView(view);
                    linearLayout2.addView(c0269ab, layoutParams);
                } else if (i4 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f1187x);
                } else {
                    linearLayout2.addView(c0269ab, layoutParams);
                    linearLayout2.addView(view);
                }
                int i5 = this.f1175l;
                if (i5 >= 0) {
                    i3 = Integer.MIN_VALUE;
                } else {
                    i5 = 0;
                    i3 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i5, i3), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                linearLayout = linearLayout2;
            } else {
                i = 0;
                linearLayout = c0269ab;
            }
            this.f1171g.setContentView(linearLayout);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f1171g.getContentView();
            View view2 = this.f1186w;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f1171g.getBackground();
        if (background != null) {
            background.getPadding(this.f1164H);
            int i6 = this.f1164H.top + this.f1164H.bottom;
            i2 = i6;
            if (!this.f1179p) {
                this.f1177n = -this.f1164H.top;
                i2 = i6;
            }
        } else {
            this.f1164H.setEmpty();
            i2 = 0;
        }
        if (this.f1171g.getInputMethodMode() != 2) {
            z = false;
        }
        int m7275a = m7275a(m7252j(), this.f1177n, z);
        if (this.f1184u || this.f1174k == -1) {
            return m7275a + i2;
        }
        int i7 = this.f1175l;
        int mo7238a = this.f1167c.mo7238a(i7 != -2 ? i7 != -1 ? View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f1172i.getResources().getDisplayMetrics().widthPixels - (this.f1164H.left + this.f1164H.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f1172i.getResources().getDisplayMetrics().widthPixels - (this.f1164H.left + this.f1164H.right), AbstractC0610a.INVALID_ID), 0, -1, m7275a - i, -1);
        int i8 = i;
        if (mo7238a > 0) {
            i8 = i + i2 + this.f1167c.getPaddingTop() + this.f1167c.getPaddingBottom();
        }
        return mo7238a + i8;
    }

    /* renamed from: a */
    C0269ab mo7245a(Context context, boolean z) {
        return new C0269ab(context, z);
    }

    /* renamed from: a */
    public void m7278a(int i) {
        this.f1177n = i;
        this.f1179p = true;
    }

    /* renamed from: a */
    public void m7277a(Rect rect) {
        this.f1165I = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: a */
    public void m7276a(Drawable drawable) {
        this.f1171g.setBackgroundDrawable(drawable);
    }

    /* renamed from: a */
    public void m7274a(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1158B = onItemClickListener;
    }

    /* renamed from: a */
    public void mo7273a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1188y;
        if (dataSetObserver == null) {
            this.f1188y = new C0283b();
        } else {
            ListAdapter listAdapter2 = this.f1173j;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1173j = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1188y);
        }
        C0269ab c0269ab = this.f1167c;
        if (c0269ab != null) {
            c0269ab.setAdapter(this.f1173j);
        }
    }

    /* renamed from: a */
    public void m7272a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1171g.setOnDismissListener(onDismissListener);
    }

    /* renamed from: a */
    public void m7271a(boolean z) {
        this.f1166J = z;
        this.f1171g.setFocusable(z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: b */
    public void mo7270b() {
        this.f1171g.dismiss();
        m7258g();
        this.f1171g.setContentView(null);
        this.f1167c = null;
        this.f1170f.removeCallbacks(this.f1169e);
    }

    /* renamed from: b */
    public void m7269b(int i) {
        this.f1176m = i;
    }

    /* renamed from: b */
    public void m7268b(View view) {
        this.f1189z = view;
    }

    /* renamed from: b */
    public void m7267b(boolean z) {
        this.f1182s = true;
        this.f1181r = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: c */
    public boolean mo7266c() {
        return this.f1171g.isShowing();
    }

    /* renamed from: d */
    public Drawable m7264d() {
        return this.f1171g.getBackground();
    }

    /* renamed from: d */
    public void m7263d(int i) {
        this.f1187x = i;
    }

    /* renamed from: e */
    public int m7262e() {
        if (!this.f1179p) {
            return 0;
        }
        return this.f1177n;
    }

    /* renamed from: e */
    public void m7261e(int i) {
        this.f1171g.setAnimationStyle(i);
    }

    /* renamed from: f */
    public int m7260f() {
        return this.f1176m;
    }

    /* renamed from: f */
    public void m7259f(int i) {
        this.f1183t = i;
    }

    /* renamed from: g */
    public void m7257g(int i) {
        this.f1175l = i;
    }

    /* renamed from: h */
    public void m7255h(int i) {
        Drawable background = this.f1171g.getBackground();
        if (background == null) {
            m7257g(i);
            return;
        }
        background.getPadding(this.f1164H);
        this.f1175l = this.f1164H.left + this.f1164H.right + i;
    }

    /* renamed from: i */
    public void m7253i(int i) {
        this.f1171g.setInputMethodMode(i);
    }

    /* renamed from: i */
    public boolean m7254i() {
        return this.f1166J;
    }

    /* renamed from: j */
    public View m7252j() {
        return this.f1189z;
    }

    /* renamed from: j */
    public void m7251j(int i) {
        C0269ab c0269ab = this.f1167c;
        if (!mo7266c() || c0269ab == null) {
            return;
        }
        c0269ab.setListSelectionHidden(false);
        c0269ab.setSelection(i);
        if (c0269ab.getChoiceMode() == 0) {
            return;
        }
        c0269ab.setItemChecked(i, true);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: j_ */
    public void mo7250j_() {
        int i;
        int i2;
        int m7256h = m7256h();
        boolean m7246m = m7246m();
        C0604h.m5984a(this.f1171g, this.f1178o);
        boolean z = true;
        if (this.f1171g.isShowing()) {
            if (!C0552u.m6292D(m7252j())) {
                return;
            }
            int i3 = this.f1175l;
            if (i3 == -1) {
                i2 = -1;
            } else {
                i2 = i3;
                if (i3 == -2) {
                    i2 = m7252j().getWidth();
                }
            }
            int i4 = this.f1174k;
            if (i4 == -1) {
                if (!m7246m) {
                    m7256h = -1;
                }
                if (m7246m) {
                    this.f1171g.setWidth(this.f1175l == -1 ? -1 : 0);
                    this.f1171g.setHeight(0);
                } else {
                    this.f1171g.setWidth(this.f1175l == -1 ? -1 : 0);
                    this.f1171g.setHeight(-1);
                }
            } else if (i4 != -2) {
                m7256h = i4;
            }
            PopupWindow popupWindow = this.f1171g;
            if (this.f1185v || this.f1184u) {
                z = false;
            }
            popupWindow.setOutsideTouchable(z);
            PopupWindow popupWindow2 = this.f1171g;
            View m7252j = m7252j();
            int i5 = this.f1176m;
            int i6 = this.f1177n;
            if (i2 < 0) {
                i2 = -1;
            }
            if (m7256h < 0) {
                m7256h = -1;
            }
            popupWindow2.update(m7252j, i5, i6, i2, m7256h);
            return;
        }
        int i7 = this.f1175l;
        if (i7 == -1) {
            i = -1;
        } else {
            i = i7;
            if (i7 == -2) {
                i = m7252j().getWidth();
            }
        }
        int i8 = this.f1174k;
        if (i8 == -1) {
            m7256h = -1;
        } else if (i8 != -2) {
            m7256h = i8;
        }
        this.f1171g.setWidth(i);
        this.f1171g.setHeight(m7256h);
        m7265c(true);
        this.f1171g.setOutsideTouchable(!this.f1185v && !this.f1184u);
        this.f1171g.setTouchInterceptor(this.f1160D);
        if (this.f1182s) {
            C0604h.m5982a(this.f1171g, this.f1181r);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1156h;
            if (method != null) {
                try {
                    method.invoke(this.f1171g, this.f1165I);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            this.f1171g.setEpicenterBounds(this.f1165I);
        }
        C0604h.m5983a(this.f1171g, m7252j(), this.f1176m, this.f1177n, this.f1183t);
        this.f1167c.setSelection(-1);
        if (!this.f1166J || this.f1167c.isInTouchMode()) {
            m7247l();
        }
        if (this.f1166J) {
            return;
        }
        this.f1170f.post(this.f1162F);
    }

    /* renamed from: k */
    public int m7249k() {
        return this.f1175l;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0202p
    /* renamed from: k_ */
    public ListView mo7248k_() {
        return this.f1167c;
    }

    /* renamed from: l */
    public void m7247l() {
        C0269ab c0269ab = this.f1167c;
        if (c0269ab != null) {
            c0269ab.setListSelectionHidden(true);
            c0269ab.requestLayout();
        }
    }

    /* renamed from: m */
    public boolean m7246m() {
        return this.f1171g.getInputMethodMode() == 2;
    }
}
