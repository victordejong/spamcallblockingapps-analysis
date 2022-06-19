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
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0219p;
import androidx.core.p026h.C0595u;
import androidx.core.widget.C0627h;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.ac */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac.class */
public class C0285ac implements AbstractC0219p {

    /* renamed from: a */
    private static Method f1211a;

    /* renamed from: b */
    private static Method f1212b;

    /* renamed from: h */
    private static Method f1213h;

    /* renamed from: A */
    private Drawable f1214A;

    /* renamed from: B */
    private AdapterView.OnItemClickListener f1215B;

    /* renamed from: C */
    private AdapterView.OnItemSelectedListener f1216C;

    /* renamed from: D */
    private final View$OnTouchListenerC0291d f1217D;

    /* renamed from: E */
    private final C0290c f1218E;

    /* renamed from: F */
    private final RunnableC0288a f1219F;

    /* renamed from: G */
    private Runnable f1220G;

    /* renamed from: H */
    private final Rect f1221H;

    /* renamed from: I */
    private Rect f1222I;

    /* renamed from: J */
    private boolean f1223J;

    /* renamed from: c */
    C0370z f1224c;

    /* renamed from: d */
    int f1225d;

    /* renamed from: e */
    final RunnableC0292e f1226e;

    /* renamed from: f */
    final Handler f1227f;

    /* renamed from: g */
    PopupWindow f1228g;

    /* renamed from: i */
    private Context f1229i;

    /* renamed from: j */
    private ListAdapter f1230j;

    /* renamed from: k */
    private int f1231k;

    /* renamed from: l */
    private int f1232l;

    /* renamed from: m */
    private int f1233m;

    /* renamed from: n */
    private int f1234n;

    /* renamed from: o */
    private int f1235o;

    /* renamed from: p */
    private boolean f1236p;

    /* renamed from: q */
    private boolean f1237q;

    /* renamed from: r */
    private boolean f1238r;

    /* renamed from: s */
    private boolean f1239s;

    /* renamed from: t */
    private int f1240t;

    /* renamed from: u */
    private boolean f1241u;

    /* renamed from: v */
    private boolean f1242v;

    /* renamed from: w */
    private View f1243w;

    /* renamed from: x */
    private int f1244x;

    /* renamed from: y */
    private DataSetObserver f1245y;

    /* renamed from: z */
    private View f1246z;

    /* renamed from: androidx.appcompat.widget.ac$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac$a.class */
    public class RunnableC0288a implements Runnable {
        RunnableC0288a() {
            C0285ac.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0285ac.this.m21522m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ac$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac$b.class */
    public class C0289b extends DataSetObserver {
        C0289b() {
            C0285ac.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (C0285ac.this.mo21536e()) {
                C0285ac.this.mo21545a_();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C0285ac.this.mo21538d();
        }
    }

    /* renamed from: androidx.appcompat.widget.ac$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac$c.class */
    public class C0290c implements AbsListView.OnScrollListener {
        C0290c() {
            C0285ac.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || C0285ac.this.m21521n() || C0285ac.this.f1228g.getContentView() == null) {
                return;
            }
            C0285ac.this.f1227f.removeCallbacks(C0285ac.this.f1226e);
            C0285ac.this.f1226e.run();
        }
    }

    /* renamed from: androidx.appcompat.widget.ac$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac$d.class */
    public class View$OnTouchListenerC0291d implements View.OnTouchListener {
        View$OnTouchListenerC0291d() {
            C0285ac.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && C0285ac.this.f1228g != null && C0285ac.this.f1228g.isShowing() && x >= 0 && x < C0285ac.this.f1228g.getWidth() && y >= 0 && y < C0285ac.this.f1228g.getHeight()) {
                C0285ac.this.f1227f.postDelayed(C0285ac.this.f1226e, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                C0285ac.this.f1227f.removeCallbacks(C0285ac.this.f1226e);
                return false;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ac$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac$e.class */
    public class RunnableC0292e implements Runnable {
        RunnableC0292e() {
            C0285ac.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0285ac.this.f1224c == null || !C0595u.m20370B(C0285ac.this.f1224c) || C0285ac.this.f1224c.getCount() <= C0285ac.this.f1224c.getChildCount() || C0285ac.this.f1224c.getChildCount() > C0285ac.this.f1225d) {
                return;
            }
            C0285ac.this.f1228g.setInputMethodMode(2);
            C0285ac.this.mo21545a_();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0064 -> B:7:0x002f). Please submit an issue!!! */
    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1211a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f1213h = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f1212b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public C0285ac(Context context) {
        this(context, null, C0083a.C0084a.listPopupWindowStyle);
    }

    public C0285ac(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public C0285ac(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1231k = -2;
        this.f1232l = -2;
        this.f1235o = 1002;
        this.f1237q = true;
        this.f1240t = 0;
        this.f1241u = false;
        this.f1242v = false;
        this.f1225d = Integer.MAX_VALUE;
        this.f1244x = 0;
        this.f1226e = new RunnableC0292e();
        this.f1217D = new View$OnTouchListenerC0291d();
        this.f1218E = new C0290c();
        this.f1219F = new RunnableC0288a();
        this.f1221H = new Rect();
        this.f1229i = context;
        this.f1227f = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.ListPopupWindow, i, i2);
        this.f1233m = obtainStyledAttributes.getDimensionPixelOffset(C0083a.C0093j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.f1234n = obtainStyledAttributes.getDimensionPixelOffset(C0083a.C0093j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.f1234n != 0) {
            this.f1236p = true;
        }
        obtainStyledAttributes.recycle();
        this.f1228g = new C0355m(context, attributeSet, i, i2);
        this.f1228g.setInputMethodMode(1);
    }

    /* renamed from: a */
    private int m21550a(View view, int i, boolean z) {
        int maxAvailableHeight;
        if (Build.VERSION.SDK_INT <= 23) {
            if (f1212b != null) {
                try {
                    maxAvailableHeight = ((Integer) f1212b.invoke(this.f1228g, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
                } catch (Exception e) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            maxAvailableHeight = this.f1228g.getMaxAvailableHeight(view, i);
        } else {
            maxAvailableHeight = this.f1228g.getMaxAvailableHeight(view, i, z);
        }
        return maxAvailableHeight;
    }

    /* renamed from: c */
    private void m21539c(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f1228g.setIsClippedToScreen(z);
        } else if (f1211a == null) {
        } else {
            try {
                f1211a.invoke(this.f1228g, Boolean.valueOf(z));
            } catch (Exception e) {
                Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    /* renamed from: h */
    private void m21530h() {
        if (this.f1243w != null) {
            ViewParent parent = this.f1243w.getParent();
            if (!(parent instanceof ViewGroup)) {
                return;
            }
            ((ViewGroup) parent).removeView(this.f1243w);
        }
    }

    /* renamed from: i */
    private int m21528i() {
        int i;
        int i2;
        int i3;
        int makeMeasureSpec;
        int i4;
        int i5;
        if (this.f1224c == null) {
            Context context = this.f1229i;
            this.f1220G = new Runnable() { // from class: androidx.appcompat.widget.ac.1
                @Override // java.lang.Runnable
                public void run() {
                    View m21524k = C0285ac.this.m21524k();
                    if (m21524k == null || m21524k.getWindowToken() == null) {
                        return;
                    }
                    C0285ac.this.mo21545a_();
                }
            };
            this.f1224c = mo21520a(context, !this.f1223J);
            if (this.f1214A != null) {
                this.f1224c.setSelector(this.f1214A);
            }
            this.f1224c.setAdapter(this.f1230j);
            this.f1224c.setOnItemClickListener(this.f1215B);
            this.f1224c.setFocusable(true);
            this.f1224c.setFocusableInTouchMode(true);
            this.f1224c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ac.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i6, long j) {
                    C0370z c0370z;
                    if (i6 == -1 || (c0370z = C0285ac.this.f1224c) == null) {
                        return;
                    }
                    c0370z.setListSelectionHidden(false);
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f1224c.setOnScrollListener(this.f1218E);
            if (this.f1216C != null) {
                this.f1224c.setOnItemSelectedListener(this.f1216C);
            }
            View view = this.f1224c;
            View view2 = this.f1243w;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.f1244x) {
                    case 0:
                        linearLayout.addView(view2);
                        linearLayout.addView(view, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(view, layoutParams);
                        linearLayout.addView(view2);
                        break;
                    default:
                        Log.e("ListPopupWindow", "Invalid hint position " + this.f1244x);
                        break;
                }
                if (this.f1232l >= 0) {
                    i5 = this.f1232l;
                    i4 = Integer.MIN_VALUE;
                } else {
                    i4 = 0;
                    i5 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i5, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i = layoutParams2.bottomMargin + view2.getMeasuredHeight() + layoutParams2.topMargin;
                view = linearLayout;
            } else {
                i = 0;
            }
            this.f1228g.setContentView(view);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f1228g.getContentView();
            View view3 = this.f1243w;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i = layoutParams3.bottomMargin + view3.getMeasuredHeight() + layoutParams3.topMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f1228g.getBackground();
        if (background != null) {
            background.getPadding(this.f1221H);
            i2 = this.f1221H.top + this.f1221H.bottom;
            if (!this.f1236p) {
                this.f1234n = -this.f1221H.top;
            }
        } else {
            this.f1221H.setEmpty();
            i2 = 0;
        }
        int m21550a = m21550a(m21524k(), this.f1234n, this.f1228g.getInputMethodMode() == 2);
        if (this.f1241u || this.f1231k == -1) {
            i3 = m21550a + i2;
        } else {
            switch (this.f1232l) {
                case -2:
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1229i.getResources().getDisplayMetrics().widthPixels - (this.f1221H.left + this.f1221H.right), RecyclerView.UNDEFINED_DURATION);
                    break;
                case -1:
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1229i.getResources().getDisplayMetrics().widthPixels - (this.f1221H.left + this.f1221H.right), 1073741824);
                    break;
                default:
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1232l, 1073741824);
                    break;
            }
            int mo21163a = this.f1224c.mo21163a(makeMeasureSpec, 0, -1, m21550a - i, -1);
            int i6 = i;
            if (mo21163a > 0) {
                i6 = i + this.f1224c.getPaddingTop() + this.f1224c.getPaddingBottom() + i2;
            }
            i3 = mo21163a + i6;
        }
        return i3;
    }

    /* renamed from: a */
    C0370z mo21520a(Context context, boolean z) {
        return new C0370z(context, z);
    }

    /* renamed from: a */
    public void m21553a(int i) {
        this.f1234n = i;
        this.f1236p = true;
    }

    /* renamed from: a */
    public void m21552a(Rect rect) {
        this.f1222I = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: a */
    public void m21551a(Drawable drawable) {
        this.f1228g.setBackgroundDrawable(drawable);
    }

    /* renamed from: a */
    public void m21549a(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1215B = onItemClickListener;
    }

    /* renamed from: a */
    public void mo21548a(ListAdapter listAdapter) {
        if (this.f1245y == null) {
            this.f1245y = new C0289b();
        } else if (this.f1230j != null) {
            this.f1230j.unregisterDataSetObserver(this.f1245y);
        }
        this.f1230j = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1245y);
        }
        if (this.f1224c != null) {
            this.f1224c.setAdapter(this.f1230j);
        }
    }

    /* renamed from: a */
    public void m21547a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1228g.setOnDismissListener(onDismissListener);
    }

    /* renamed from: a */
    public void m21546a(boolean z) {
        this.f1223J = z;
        this.f1228g.setFocusable(z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: a_ */
    public void mo21545a_() {
        boolean z = true;
        int m21528i = m21528i();
        boolean m21521n = m21521n();
        C0627h.m20149a(this.f1228g, this.f1235o);
        if (this.f1228g.isShowing()) {
            if (!C0595u.m20370B(m21524k())) {
                return;
            }
            int width = this.f1232l == -1 ? -1 : this.f1232l == -2 ? m21524k().getWidth() : this.f1232l;
            if (this.f1231k == -1) {
                if (!m21521n) {
                    m21528i = -1;
                }
                if (m21521n) {
                    this.f1228g.setWidth(this.f1232l == -1 ? -1 : 0);
                    this.f1228g.setHeight(0);
                } else {
                    this.f1228g.setWidth(this.f1232l == -1 ? -1 : 0);
                    this.f1228g.setHeight(-1);
                }
            } else if (this.f1231k != -2) {
                m21528i = this.f1231k;
            }
            PopupWindow popupWindow = this.f1228g;
            boolean z2 = false;
            if (!this.f1242v) {
                z2 = false;
                if (!this.f1241u) {
                    z2 = true;
                }
            }
            popupWindow.setOutsideTouchable(z2);
            PopupWindow popupWindow2 = this.f1228g;
            View m21524k = m21524k();
            int i = this.f1233m;
            int i2 = this.f1234n;
            int i3 = width;
            if (width < 0) {
                i3 = -1;
            }
            if (m21528i < 0) {
                m21528i = -1;
            }
            popupWindow2.update(m21524k, i, i2, i3, m21528i);
            return;
        }
        int width2 = this.f1232l == -1 ? -1 : this.f1232l == -2 ? m21524k().getWidth() : this.f1232l;
        if (this.f1231k == -1) {
            m21528i = -1;
        } else if (this.f1231k != -2) {
            m21528i = this.f1231k;
        }
        this.f1228g.setWidth(width2);
        this.f1228g.setHeight(m21528i);
        m21539c(true);
        PopupWindow popupWindow3 = this.f1228g;
        if (this.f1242v || this.f1241u) {
            z = false;
        }
        popupWindow3.setOutsideTouchable(z);
        this.f1228g.setTouchInterceptor(this.f1217D);
        if (this.f1239s) {
            C0627h.m20147a(this.f1228g, this.f1238r);
        }
        if (Build.VERSION.SDK_INT > 28) {
            this.f1228g.setEpicenterBounds(this.f1222I);
        } else if (f1213h != null) {
            try {
                f1213h.invoke(this.f1228g, this.f1222I);
            } catch (Exception e) {
                Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
            }
        }
        C0627h.m20148a(this.f1228g, m21524k(), this.f1233m, this.f1234n, this.f1240t);
        this.f1224c.setSelection(-1);
        if (!this.f1223J || this.f1224c.isInTouchMode()) {
            m21522m();
        }
        if (this.f1223J) {
            return;
        }
        this.f1227f.post(this.f1219F);
    }

    /* renamed from: b */
    public Drawable m21544b() {
        return this.f1228g.getBackground();
    }

    /* renamed from: b */
    public void m21543b(int i) {
        this.f1233m = i;
    }

    /* renamed from: b */
    public void m21542b(View view) {
        this.f1246z = view;
    }

    /* renamed from: b */
    public void m21541b(boolean z) {
        this.f1239s = true;
        this.f1238r = z;
    }

    /* renamed from: c */
    public int m21540c() {
        return !this.f1236p ? 0 : this.f1234n;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: d */
    public void mo21538d() {
        this.f1228g.dismiss();
        m21530h();
        this.f1228g.setContentView(null);
        this.f1224c = null;
        this.f1227f.removeCallbacks(this.f1226e);
    }

    /* renamed from: d */
    public void m21537d(int i) {
        this.f1244x = i;
    }

    /* renamed from: e */
    public void m21535e(int i) {
        this.f1228g.setAnimationStyle(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: e */
    public boolean mo21536e() {
        return this.f1228g.isShowing();
    }

    /* renamed from: f */
    public int m21534f() {
        return this.f1233m;
    }

    /* renamed from: f */
    public void m21533f(int i) {
        this.f1240t = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0219p
    /* renamed from: g */
    public ListView mo21532g() {
        return this.f1224c;
    }

    /* renamed from: g */
    public void m21531g(int i) {
        this.f1232l = i;
    }

    /* renamed from: h */
    public void m21529h(int i) {
        Drawable background = this.f1228g.getBackground();
        if (background == null) {
            m21531g(i);
            return;
        }
        background.getPadding(this.f1221H);
        this.f1232l = this.f1221H.left + this.f1221H.right + i;
    }

    /* renamed from: i */
    public void m21527i(int i) {
        this.f1228g.setInputMethodMode(i);
    }

    /* renamed from: j */
    public void m21525j(int i) {
        C0370z c0370z = this.f1224c;
        if (!mo21536e() || c0370z == null) {
            return;
        }
        c0370z.setListSelectionHidden(false);
        c0370z.setSelection(i);
        if (c0370z.getChoiceMode() == 0) {
            return;
        }
        c0370z.setItemChecked(i, true);
    }

    /* renamed from: j */
    public boolean m21526j() {
        return this.f1223J;
    }

    /* renamed from: k */
    public View m21524k() {
        return this.f1246z;
    }

    /* renamed from: l */
    public int m21523l() {
        return this.f1232l;
    }

    /* renamed from: m */
    public void m21522m() {
        C0370z c0370z = this.f1224c;
        if (c0370z != null) {
            c0370z.setListSelectionHidden(true);
            c0370z.requestLayout();
        }
    }

    /* renamed from: n */
    public boolean m21521n() {
        return this.f1228g.getInputMethodMode() == 2;
    }
}
