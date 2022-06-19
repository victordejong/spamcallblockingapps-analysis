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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0288p;
import androidx.core.view.C0908e;
import androidx.core.view.C0926v;
import androidx.core.widget.C0958g;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.facebook.ads.AdError;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow.class */
public class ListPopupWindow implements AbstractC0288p {

    /* renamed from: a */
    private static Method f1239a;

    /* renamed from: b */
    private static Method f1240b;

    /* renamed from: c */
    private static Method f1241c;

    /* renamed from: A */
    private DataSetObserver f1242A;

    /* renamed from: B */
    private Drawable f1243B;

    /* renamed from: C */
    private AdapterView.OnItemSelectedListener f1244C;

    /* renamed from: D */
    private final View$OnTouchListenerC0336d f1245D;

    /* renamed from: E */
    private final C0335c f1246E;

    /* renamed from: F */
    private final RunnableC0333a f1247F;

    /* renamed from: G */
    private Runnable f1248G;

    /* renamed from: H */
    private final Rect f1249H;

    /* renamed from: I */
    private Rect f1250I;

    /* renamed from: d */
    private Context f1251d;

    /* renamed from: e */
    public DropDownListView f1252e;

    /* renamed from: f */
    public int f1253f;

    /* renamed from: g */
    public int f1254g;

    /* renamed from: h */
    int f1255h;

    /* renamed from: i */
    public View f1256i;

    /* renamed from: j */
    public AdapterView.OnItemClickListener f1257j;

    /* renamed from: k */
    final RunnableC0337e f1258k;

    /* renamed from: l */
    final Handler f1259l;

    /* renamed from: m */
    public boolean f1260m;

    /* renamed from: n */
    public PopupWindow f1261n;

    /* renamed from: o */
    private ListAdapter f1262o;

    /* renamed from: p */
    private int f1263p;

    /* renamed from: q */
    private int f1264q;

    /* renamed from: r */
    private int f1265r;

    /* renamed from: s */
    private int f1266s;

    /* renamed from: t */
    private boolean f1267t;

    /* renamed from: u */
    private boolean f1268u;

    /* renamed from: v */
    private boolean f1269v;

    /* renamed from: w */
    private boolean f1270w;

    /* renamed from: x */
    private boolean f1271x;

    /* renamed from: y */
    private View f1272y;

    /* renamed from: z */
    private int f1273z;

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$a.class */
    public final class RunnableC0333a implements Runnable {
        RunnableC0333a() {
            ListPopupWindow.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListPopupWindow.this.m45915m();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$b.class */
    public final class C0334b extends DataSetObserver {
        C0334b() {
            ListPopupWindow.this = r4;
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            if (ListPopupWindow.this.f1261n.isShowing()) {
                ListPopupWindow.this.mo45922e_();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.mo45925d();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$c.class */
    public final class C0335c implements AbsListView.OnScrollListener {
        C0335c() {
            ListPopupWindow.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || ListPopupWindow.this.m45914n() || ListPopupWindow.this.f1261n.getContentView() == null) {
                return;
            }
            ListPopupWindow.this.f1259l.removeCallbacks(ListPopupWindow.this.f1258k);
            ListPopupWindow.this.f1258k.run();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$d.class */
    public final class View$OnTouchListenerC0336d implements View.OnTouchListener {
        View$OnTouchListenerC0336d() {
            ListPopupWindow.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.f1261n != null && ListPopupWindow.this.f1261n.isShowing() && x >= 0 && x < ListPopupWindow.this.f1261n.getWidth() && y >= 0 && y < ListPopupWindow.this.f1261n.getHeight()) {
                ListPopupWindow.this.f1259l.postDelayed(ListPopupWindow.this.f1258k, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow.this.f1259l.removeCallbacks(ListPopupWindow.this.f1258k);
                return false;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$e.class */
    public final class RunnableC0337e implements Runnable {
        RunnableC0337e() {
            ListPopupWindow.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ListPopupWindow.this.f1252e == null || !C0926v.m44154E(ListPopupWindow.this.f1252e) || ListPopupWindow.this.f1252e.getCount() <= ListPopupWindow.this.f1252e.getChildCount() || ListPopupWindow.this.f1252e.getChildCount() > ListPopupWindow.this.f1255h) {
                return;
            }
            ListPopupWindow.this.f1261n.setInputMethodMode(2);
            ListPopupWindow.this.mo45922e_();
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1239a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
            }
            try {
                f1241c = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f1240b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, C0142a.C0143a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1263p = -2;
        this.f1264q = -2;
        this.f1266s = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        this.f1254g = 0;
        this.f1270w = false;
        this.f1271x = false;
        this.f1255h = Integer.MAX_VALUE;
        this.f1273z = 0;
        this.f1258k = new RunnableC0337e();
        this.f1245D = new View$OnTouchListenerC0336d();
        this.f1246E = new C0335c();
        this.f1247F = new RunnableC0333a();
        this.f1249H = new Rect();
        this.f1251d = context;
        this.f1259l = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.ListPopupWindow, i, i2);
        this.f1253f = obtainStyledAttributes.getDimensionPixelOffset(C0142a.C0152j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C0142a.C0152j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1265r = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1267t = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.f1261n = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    /* renamed from: a */
    private int m45931a(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f1240b;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(this.f1261n, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
                } catch (Exception e) {
                }
            }
            return this.f1261n.getMaxAvailableHeight(view, i);
        }
        return this.f1261n.getMaxAvailableHeight(view, i, z);
    }

    /* renamed from: a */
    private void m45935a() {
        View view = this.f1272y;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return;
            }
            ((ViewGroup) parent).removeView(this.f1272y);
        }
    }

    /* renamed from: a */
    DropDownListView mo45910a(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    /* renamed from: a */
    public final void m45934a(int i) {
        this.f1265r = i;
        this.f1267t = true;
    }

    /* renamed from: a */
    public final void m45933a(Rect rect) {
        this.f1250I = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: a */
    public final void m45932a(Drawable drawable) {
        this.f1261n.setBackgroundDrawable(drawable);
    }

    /* renamed from: a */
    public void mo45930a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1242A;
        if (dataSetObserver == null) {
            this.f1242A = new C0334b();
        } else {
            ListAdapter listAdapter2 = this.f1262o;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1262o = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1242A);
        }
        DropDownListView dropDownListView = this.f1252e;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.f1262o);
        }
    }

    /* renamed from: a */
    public final void m45929a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1261n.setOnDismissListener(onDismissListener);
    }

    /* renamed from: b */
    public final Drawable m45928b() {
        return this.f1261n.getBackground();
    }

    /* renamed from: b */
    public final void m45927b(int i) {
        this.f1253f = i;
    }

    /* renamed from: c */
    public final int m45926c() {
        if (!this.f1267t) {
            return 0;
        }
        return this.f1265r;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: d */
    public final void mo45925d() {
        this.f1261n.dismiss();
        m45935a();
        this.f1261n.setContentView(null);
        this.f1252e = null;
        this.f1259l.removeCallbacks(this.f1258k);
    }

    /* renamed from: d */
    public final void m45924d(int i) {
        Drawable background = this.f1261n.getBackground();
        if (background == null) {
            this.f1264q = i;
            return;
        }
        background.getPadding(this.f1249H);
        this.f1264q = this.f1249H.left + this.f1249H.right + i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: e */
    public final boolean mo45923e() {
        return this.f1261n.isShowing();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: e_ */
    public final void mo45922e_() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        LinearLayout linearLayout;
        int i6;
        if (this.f1252e == null) {
            Context context = this.f1251d;
            this.f1248G = new Runnable() { // from class: androidx.appcompat.widget.ListPopupWindow.1
                @Override // java.lang.Runnable
                public final void run() {
                    View view = ListPopupWindow.this.f1256i;
                    if (view == null || view.getWindowToken() == null) {
                        return;
                    }
                    ListPopupWindow.this.mo45922e_();
                }
            };
            DropDownListView mo45910a = mo45910a(context, !this.f1260m);
            this.f1252e = mo45910a;
            Drawable drawable = this.f1243B;
            if (drawable != null) {
                mo45910a.setSelector(drawable);
            }
            this.f1252e.setAdapter(this.f1262o);
            this.f1252e.setOnItemClickListener(this.f1257j);
            this.f1252e.setFocusable(true);
            this.f1252e.setFocusableInTouchMode(true);
            this.f1252e.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onItemSelected(AdapterView<?> adapterView, View view, int i7, long j) {
                    DropDownListView dropDownListView;
                    if (i7 == -1 || (dropDownListView = ListPopupWindow.this.f1252e) == null) {
                        return;
                    }
                    dropDownListView.f1204a = false;
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f1252e.setOnScrollListener(this.f1246E);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1244C;
            if (onItemSelectedListener != null) {
                this.f1252e.setOnItemSelectedListener(onItemSelectedListener);
            }
            DropDownListView dropDownListView = this.f1252e;
            View view = this.f1272y;
            if (view != null) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i7 = this.f1273z;
                if (i7 == 0) {
                    linearLayout2.addView(view);
                    linearLayout2.addView(dropDownListView, layoutParams);
                } else if (i7 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f1273z);
                } else {
                    linearLayout2.addView(dropDownListView, layoutParams);
                    linearLayout2.addView(view);
                }
                int i8 = this.f1264q;
                if (i8 >= 0) {
                    i6 = Integer.MIN_VALUE;
                } else {
                    i8 = 0;
                    i6 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i8, i6), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                linearLayout = linearLayout2;
            } else {
                i = 0;
                linearLayout = dropDownListView;
            }
            this.f1261n.setContentView(linearLayout);
        } else {
            this.f1261n.getContentView();
            View view2 = this.f1272y;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f1261n.getBackground();
        if (background != null) {
            background.getPadding(this.f1249H);
            int i9 = this.f1249H.top + this.f1249H.bottom;
            i2 = i9;
            if (!this.f1267t) {
                this.f1265r = -this.f1249H.top;
                i2 = i9;
            }
        } else {
            this.f1249H.setEmpty();
            i2 = 0;
        }
        int m45931a = m45931a(this.f1256i, this.f1265r, this.f1261n.getInputMethodMode() == 2);
        if (this.f1270w || this.f1263p == -1) {
            i3 = m45931a + i2;
        } else {
            int i10 = this.f1264q;
            int mo45908a = this.f1252e.mo45908a(i10 != -2 ? i10 != -1 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f1251d.getResources().getDisplayMetrics().widthPixels - (this.f1249H.left + this.f1249H.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f1251d.getResources().getDisplayMetrics().widthPixels - (this.f1249H.left + this.f1249H.right), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), 0, -1, m45931a - i, -1);
            int i11 = i;
            if (mo45908a > 0) {
                i11 = i + i2 + this.f1252e.getPaddingTop() + this.f1252e.getPaddingBottom();
            }
            i3 = mo45908a + i11;
        }
        boolean m45914n = m45914n();
        C0958g.m43968a(this.f1261n, this.f1266s);
        if (this.f1261n.isShowing()) {
            if (!C0926v.m44154E(this.f1256i)) {
                return;
            }
            int i12 = this.f1264q;
            if (i12 == -1) {
                i5 = -1;
            } else {
                i5 = i12;
                if (i12 == -2) {
                    i5 = this.f1256i.getWidth();
                }
            }
            int i13 = this.f1263p;
            if (i13 == -1) {
                if (!m45914n) {
                    i3 = -1;
                }
                if (m45914n) {
                    this.f1261n.setWidth(this.f1264q == -1 ? -1 : 0);
                    this.f1261n.setHeight(0);
                } else {
                    this.f1261n.setWidth(this.f1264q == -1 ? -1 : 0);
                    this.f1261n.setHeight(-1);
                }
            } else if (i13 != -2) {
                i3 = i13;
            }
            this.f1261n.setOutsideTouchable(!this.f1271x && !this.f1270w);
            PopupWindow popupWindow = this.f1261n;
            View view3 = this.f1256i;
            int i14 = this.f1253f;
            int i15 = this.f1265r;
            if (i5 < 0) {
                i5 = -1;
            }
            if (i3 < 0) {
                i3 = -1;
            }
            popupWindow.update(view3, i14, i15, i5, i3);
            return;
        }
        int i16 = this.f1264q;
        if (i16 == -1) {
            i4 = -1;
        } else {
            i4 = i16;
            if (i16 == -2) {
                i4 = this.f1256i.getWidth();
            }
        }
        int i17 = this.f1263p;
        if (i17 == -1) {
            i3 = -1;
        } else if (i17 != -2) {
            i3 = i17;
        }
        this.f1261n.setWidth(i4);
        this.f1261n.setHeight(i3);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1239a;
            if (method != null) {
                try {
                    method.invoke(this.f1261n, Boolean.TRUE);
                } catch (Exception e) {
                }
            }
        } else {
            this.f1261n.setIsClippedToScreen(true);
        }
        this.f1261n.setOutsideTouchable(!this.f1271x && !this.f1270w);
        this.f1261n.setTouchInterceptor(this.f1245D);
        if (this.f1269v) {
            C0958g.m43967a(this.f1261n, this.f1268u);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f1241c;
            if (method2 != null) {
                try {
                    method2.invoke(this.f1261n, this.f1250I);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            this.f1261n.setEpicenterBounds(this.f1250I);
        }
        PopupWindow popupWindow2 = this.f1261n;
        View view4 = this.f1256i;
        int i18 = this.f1253f;
        int i19 = this.f1265r;
        int i20 = this.f1254g;
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow2.showAsDropDown(view4, i18, i19, i20);
        } else {
            int i21 = i18;
            if ((C0908e.m44195a(i20, C0926v.m44097f(view4)) & 7) == 5) {
                i21 = i18 - (popupWindow2.getWidth() - view4.getWidth());
            }
            popupWindow2.showAsDropDown(view4, i21, i19);
        }
        this.f1252e.setSelection(-1);
        if (!this.f1260m || this.f1252e.isInTouchMode()) {
            m45915m();
        }
        if (this.f1260m) {
            return;
        }
        this.f1259l.post(this.f1247F);
    }

    /* renamed from: f */
    public final int m45921f() {
        return this.f1253f;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0288p
    /* renamed from: g */
    public final ListView mo45920g() {
        return this.f1252e;
    }

    /* renamed from: i */
    public final void m45919i() {
        this.f1273z = 0;
    }

    /* renamed from: j */
    public final void m45918j() {
        this.f1260m = true;
        this.f1261n.setFocusable(true);
    }

    /* renamed from: k */
    public final int m45917k() {
        return this.f1264q;
    }

    /* renamed from: l */
    public final void m45916l() {
        this.f1261n.setInputMethodMode(2);
    }

    /* renamed from: m */
    public final void m45915m() {
        DropDownListView dropDownListView = this.f1252e;
        if (dropDownListView != null) {
            dropDownListView.f1204a = true;
            dropDownListView.requestLayout();
        }
    }

    /* renamed from: n */
    public final boolean m45914n() {
        return this.f1261n.getInputMethodMode() == 2;
    }

    /* renamed from: o */
    public final int m45913o() {
        if (!this.f1261n.isShowing()) {
            return -1;
        }
        return this.f1252e.getSelectedItemPosition();
    }

    /* renamed from: p */
    public final void m45912p() {
        this.f1269v = true;
        this.f1268u = true;
    }
}
