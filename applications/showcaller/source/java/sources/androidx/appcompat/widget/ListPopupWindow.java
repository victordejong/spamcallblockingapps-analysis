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
import androidx.appcompat.view.menu.AbstractC0198p;
import androidx.core.widget.C0648j;
import java.lang.reflect.Method;
import p020b.p021a.C1423a;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow.class */
public class ListPopupWindow implements AbstractC0198p {

    /* renamed from: d */
    private static Method f975d;

    /* renamed from: e */
    private static Method f976e;

    /* renamed from: f */
    private static Method f977f;

    /* renamed from: A */
    private AdapterView.OnItemClickListener f978A;

    /* renamed from: B */
    private AdapterView.OnItemSelectedListener f979B;

    /* renamed from: C */
    final RunnableC0245g f980C;

    /* renamed from: D */
    private final View$OnTouchListenerC0244f f981D;

    /* renamed from: E */
    private final C0243e f982E;

    /* renamed from: F */
    private final RunnableC0241c f983F;

    /* renamed from: G */
    private Runnable f984G;

    /* renamed from: H */
    final Handler f985H;

    /* renamed from: I */
    private final Rect f986I;

    /* renamed from: J */
    private Rect f987J;

    /* renamed from: K */
    private boolean f988K;

    /* renamed from: L */
    PopupWindow f989L;

    /* renamed from: g */
    private Context f990g;

    /* renamed from: h */
    private ListAdapter f991h;

    /* renamed from: i */
    C0318r f992i;

    /* renamed from: j */
    private int f993j;

    /* renamed from: k */
    private int f994k;

    /* renamed from: l */
    private int f995l;

    /* renamed from: m */
    private int f996m;

    /* renamed from: n */
    private int f997n;

    /* renamed from: o */
    private boolean f998o;

    /* renamed from: p */
    private boolean f999p;

    /* renamed from: q */
    private boolean f1000q;

    /* renamed from: r */
    private int f1001r;

    /* renamed from: s */
    private boolean f1002s;

    /* renamed from: t */
    private boolean f1003t;

    /* renamed from: u */
    int f1004u;

    /* renamed from: v */
    private View f1005v;

    /* renamed from: w */
    private int f1006w;

    /* renamed from: x */
    private DataSetObserver f1007x;

    /* renamed from: y */
    private View f1008y;

    /* renamed from: z */
    private Drawable f1009z;

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$a.class */
    public class RunnableC0239a implements Runnable {
        RunnableC0239a() {
            ListPopupWindow.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View m35126t = ListPopupWindow.this.m35126t();
            if (m35126t == null || m35126t.getWindowToken() == null) {
                return;
            }
            ListPopupWindow.this.mo35134h();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$b.class */
    public class C0240b implements AdapterView.OnItemSelectedListener {
        C0240b() {
            ListPopupWindow.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            C0318r c0318r;
            if (i == -1 || (c0318r = ListPopupWindow.this.f992i) == null) {
                return;
            }
            c0318r.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$c.class */
    public class RunnableC0241c implements Runnable {
        RunnableC0241c() {
            ListPopupWindow.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.m35127r();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$d.class */
    public class C0242d extends DataSetObserver {
        C0242d() {
            ListPopupWindow.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.mo35138a()) {
                ListPopupWindow.this.mo35134h();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$e.class */
    public class C0243e implements AbsListView.OnScrollListener {
        C0243e() {
            ListPopupWindow.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || ListPopupWindow.this.m35155A() || ListPopupWindow.this.f989L.getContentView() == null) {
                return;
            }
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            listPopupWindow.f985H.removeCallbacks(listPopupWindow.f980C);
            ListPopupWindow.this.f980C.run();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$f.class */
    public class View$OnTouchListenerC0244f implements View.OnTouchListener {
        View$OnTouchListenerC0244f() {
            ListPopupWindow.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.f989L) != null && popupWindow.isShowing() && x >= 0 && x < ListPopupWindow.this.f989L.getWidth() && y >= 0 && y < ListPopupWindow.this.f989L.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.f985H.postDelayed(listPopupWindow.f980C, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
                listPopupWindow2.f985H.removeCallbacks(listPopupWindow2.f980C);
                return false;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$g.class */
    public class RunnableC0245g implements Runnable {
        RunnableC0245g() {
            ListPopupWindow.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0318r c0318r = ListPopupWindow.this.f992i;
            if (c0318r == null || !C1679w.m29314U(c0318r) || ListPopupWindow.this.f992i.getCount() <= ListPopupWindow.this.f992i.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.f992i.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount > listPopupWindow.f1004u) {
                return;
            }
            listPopupWindow.f989L.setInputMethodMode(2);
            ListPopupWindow.this.mo35134h();
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f975d = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f977f = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f976e = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, C1423a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f993j = -2;
        this.f994k = -2;
        this.f997n = 1002;
        this.f1001r = 0;
        this.f1002s = false;
        this.f1003t = false;
        this.f1004u = Integer.MAX_VALUE;
        this.f1006w = 0;
        this.f980C = new RunnableC0245g();
        this.f981D = new View$OnTouchListenerC0244f();
        this.f982E = new C0243e();
        this.f983F = new RunnableC0241c();
        this.f986I = new Rect();
        this.f990g = context;
        this.f985H = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1432j.ListPopupWindow, i, i2);
        this.f995l = obtainStyledAttributes.getDimensionPixelOffset(C1432j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C1432j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f996m = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f998o = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.f989L = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    /* renamed from: C */
    private void m35153C() {
        View view = this.f1005v;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return;
            }
            ((ViewGroup) parent).removeView(this.f1005v);
        }
    }

    /* renamed from: N */
    private void m35142N(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f989L.setIsClippedToScreen(z);
            return;
        }
        Method method = f975d;
        if (method == null) {
            return;
        }
        try {
            method.invoke(this.f989L, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }

    /* renamed from: q */
    private int m35128q() {
        int i;
        int i2;
        int i3;
        LinearLayout linearLayout;
        int i4;
        boolean z = true;
        if (this.f992i == null) {
            Context context = this.f990g;
            this.f984G = new RunnableC0239a();
            C0318r mo35115s = mo35115s(context, !this.f988K);
            this.f992i = mo35115s;
            Drawable drawable = this.f1009z;
            if (drawable != null) {
                mo35115s.setSelector(drawable);
            }
            this.f992i.setAdapter(this.f991h);
            this.f992i.setOnItemClickListener(this.f978A);
            this.f992i.setFocusable(true);
            this.f992i.setFocusableInTouchMode(true);
            this.f992i.setOnItemSelectedListener(new C0240b());
            this.f992i.setOnScrollListener(this.f982E);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f979B;
            if (onItemSelectedListener != null) {
                this.f992i.setOnItemSelectedListener(onItemSelectedListener);
            }
            C0318r c0318r = this.f992i;
            View view = this.f1005v;
            if (view != null) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i5 = this.f1006w;
                if (i5 == 0) {
                    linearLayout2.addView(view);
                    linearLayout2.addView(c0318r, layoutParams);
                } else if (i5 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f1006w);
                } else {
                    linearLayout2.addView(c0318r, layoutParams);
                    linearLayout2.addView(view);
                }
                int i6 = this.f994k;
                if (i6 >= 0) {
                    i4 = Integer.MIN_VALUE;
                } else {
                    i6 = 0;
                    i4 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i6, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                linearLayout = linearLayout2;
            } else {
                i = 0;
                linearLayout = c0318r;
            }
            this.f989L.setContentView(linearLayout);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f989L.getContentView();
            View view2 = this.f1005v;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f989L.getBackground();
        if (background != null) {
            background.getPadding(this.f986I);
            Rect rect = this.f986I;
            int i7 = rect.top;
            int i8 = rect.bottom + i7;
            i2 = i8;
            if (!this.f998o) {
                this.f996m = -i7;
                i2 = i8;
            }
        } else {
            this.f986I.setEmpty();
            i2 = 0;
        }
        if (this.f989L.getInputMethodMode() != 2) {
            z = false;
        }
        int m35125u = m35125u(m35126t(), this.f996m, z);
        if (this.f1002s || this.f993j == -1) {
            return m35125u + i2;
        }
        int i9 = this.f994k;
        if (i9 == -2) {
            int i10 = this.f990g.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.f986I;
            i3 = View.MeasureSpec.makeMeasureSpec(i10 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i9 != -1) {
            i3 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
        } else {
            int i11 = this.f990g.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.f986I;
            i3 = View.MeasureSpec.makeMeasureSpec(i11 - (rect3.left + rect3.right), 1073741824);
        }
        int mo34769d = this.f992i.mo34769d(i3, 0, -1, m35125u - i, -1);
        int i12 = i;
        if (mo34769d > 0) {
            i12 = i + i2 + this.f992i.getPaddingTop() + this.f992i.getPaddingBottom();
        }
        return mo34769d + i12;
    }

    /* renamed from: u */
    private int m35125u(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f976e;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(this.f989L, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
                } catch (Exception e) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            return this.f989L.getMaxAvailableHeight(view, i);
        }
        return this.f989L.getMaxAvailableHeight(view, i, z);
    }

    /* renamed from: A */
    public boolean m35155A() {
        return this.f989L.getInputMethodMode() == 2;
    }

    /* renamed from: B */
    public boolean m35154B() {
        return this.f988K;
    }

    /* renamed from: D */
    public void m35152D(View view) {
        this.f1008y = view;
    }

    /* renamed from: E */
    public void m35151E(int i) {
        this.f989L.setAnimationStyle(i);
    }

    /* renamed from: F */
    public void m35150F(int i) {
        Drawable background = this.f989L.getBackground();
        if (background == null) {
            m35139Q(i);
            return;
        }
        background.getPadding(this.f986I);
        Rect rect = this.f986I;
        this.f994k = rect.left + rect.right + i;
    }

    /* renamed from: G */
    public void m35149G(int i) {
        this.f1001r = i;
    }

    /* renamed from: H */
    public void m35148H(Rect rect) {
        this.f987J = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: I */
    public void m35147I(int i) {
        this.f989L.setInputMethodMode(i);
    }

    /* renamed from: J */
    public void m35146J(boolean z) {
        this.f988K = z;
        this.f989L.setFocusable(z);
    }

    /* renamed from: K */
    public void m35145K(PopupWindow.OnDismissListener onDismissListener) {
        this.f989L.setOnDismissListener(onDismissListener);
    }

    /* renamed from: L */
    public void m35144L(AdapterView.OnItemClickListener onItemClickListener) {
        this.f978A = onItemClickListener;
    }

    /* renamed from: M */
    public void m35143M(boolean z) {
        this.f1000q = true;
        this.f999p = z;
    }

    /* renamed from: O */
    public void m35141O(int i) {
        this.f1006w = i;
    }

    /* renamed from: P */
    public void m35140P(int i) {
        C0318r c0318r = this.f992i;
        if (!mo35138a() || c0318r == null) {
            return;
        }
        c0318r.setListSelectionHidden(false);
        c0318r.setSelection(i);
        if (c0318r.getChoiceMode() == 0) {
            return;
        }
        c0318r.setItemChecked(i, true);
    }

    /* renamed from: Q */
    public void m35139Q(int i) {
        this.f994k = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: a */
    public boolean mo35138a() {
        return this.f989L.isShowing();
    }

    /* renamed from: b */
    public void m35137b(Drawable drawable) {
        this.f989L.setBackgroundDrawable(drawable);
    }

    /* renamed from: c */
    public int m35136c() {
        return this.f995l;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    public void dismiss() {
        this.f989L.dismiss();
        m35153C();
        this.f989L.setContentView(null);
        this.f992i = null;
        this.f985H.removeCallbacks(this.f980C);
    }

    /* renamed from: e */
    public void m35135e(int i) {
        this.f995l = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: h */
    public void mo35134h() {
        int i;
        int i2;
        int m35128q = m35128q();
        boolean m35155A = m35155A();
        C0648j.m33092b(this.f989L, this.f997n);
        boolean z = true;
        if (this.f989L.isShowing()) {
            if (!C1679w.m29314U(m35126t())) {
                return;
            }
            int i3 = this.f994k;
            if (i3 == -1) {
                i2 = -1;
            } else {
                i2 = i3;
                if (i3 == -2) {
                    i2 = m35126t().getWidth();
                }
            }
            int i4 = this.f993j;
            if (i4 == -1) {
                if (!m35155A) {
                    m35128q = -1;
                }
                if (m35155A) {
                    this.f989L.setWidth(this.f994k == -1 ? -1 : 0);
                    this.f989L.setHeight(0);
                } else {
                    this.f989L.setWidth(this.f994k == -1 ? -1 : 0);
                    this.f989L.setHeight(-1);
                }
            } else if (i4 != -2) {
                m35128q = i4;
            }
            PopupWindow popupWindow = this.f989L;
            if (this.f1003t || this.f1002s) {
                z = false;
            }
            popupWindow.setOutsideTouchable(z);
            PopupWindow popupWindow2 = this.f989L;
            View m35126t = m35126t();
            int i5 = this.f995l;
            int i6 = this.f996m;
            if (i2 < 0) {
                i2 = -1;
            }
            if (m35128q < 0) {
                m35128q = -1;
            }
            popupWindow2.update(m35126t, i5, i6, i2, m35128q);
            return;
        }
        int i7 = this.f994k;
        if (i7 == -1) {
            i = -1;
        } else {
            i = i7;
            if (i7 == -2) {
                i = m35126t().getWidth();
            }
        }
        int i8 = this.f993j;
        if (i8 == -1) {
            m35128q = -1;
        } else if (i8 != -2) {
            m35128q = i8;
        }
        this.f989L.setWidth(i);
        this.f989L.setHeight(m35128q);
        m35142N(true);
        this.f989L.setOutsideTouchable(!this.f1003t && !this.f1002s);
        this.f989L.setTouchInterceptor(this.f981D);
        if (this.f1000q) {
            C0648j.m33093a(this.f989L, this.f999p);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f977f;
            if (method != null) {
                try {
                    method.invoke(this.f989L, this.f987J);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            this.f989L.setEpicenterBounds(this.f987J);
        }
        C0648j.m33091c(this.f989L, m35126t(), this.f995l, this.f996m, this.f1001r);
        this.f992i.setSelection(-1);
        if (!this.f988K || this.f992i.isInTouchMode()) {
            m35127r();
        }
        if (this.f988K) {
            return;
        }
        this.f985H.post(this.f983F);
    }

    /* renamed from: i */
    public Drawable m35133i() {
        return this.f989L.getBackground();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0198p
    /* renamed from: k */
    public ListView mo35132k() {
        return this.f992i;
    }

    /* renamed from: l */
    public void m35131l(int i) {
        this.f996m = i;
        this.f998o = true;
    }

    /* renamed from: o */
    public int m35130o() {
        if (!this.f998o) {
            return 0;
        }
        return this.f996m;
    }

    /* renamed from: p */
    public void mo35129p(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1007x;
        if (dataSetObserver == null) {
            this.f1007x = new C0242d();
        } else {
            ListAdapter listAdapter2 = this.f991h;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f991h = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1007x);
        }
        C0318r c0318r = this.f992i;
        if (c0318r != null) {
            c0318r.setAdapter(this.f991h);
        }
    }

    /* renamed from: r */
    public void m35127r() {
        C0318r c0318r = this.f992i;
        if (c0318r != null) {
            c0318r.setListSelectionHidden(true);
            c0318r.requestLayout();
        }
    }

    /* renamed from: s */
    C0318r mo35115s(Context context, boolean z) {
        return new C0318r(context, z);
    }

    /* renamed from: t */
    public View m35126t() {
        return this.f1008y;
    }

    /* renamed from: v */
    public Object m35124v() {
        if (!mo35138a()) {
            return null;
        }
        return this.f992i.getSelectedItem();
    }

    /* renamed from: w */
    public long m35123w() {
        if (!mo35138a()) {
            return Long.MIN_VALUE;
        }
        return this.f992i.getSelectedItemId();
    }

    /* renamed from: x */
    public int m35122x() {
        if (!mo35138a()) {
            return -1;
        }
        return this.f992i.getSelectedItemPosition();
    }

    /* renamed from: y */
    public View m35121y() {
        if (!mo35138a()) {
            return null;
        }
        return this.f992i.getSelectedView();
    }

    /* renamed from: z */
    public int m35120z() {
        return this.f994k;
    }
}
