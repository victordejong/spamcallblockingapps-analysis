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
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.view.ViewCompat;
import androidx.core.widget.PopupWindowCompat;
import com.facebook.stetho.websocket.CloseCodes;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow.class */
public class ListPopupWindow implements ShowableListMenu {

    /* renamed from: K */
    private static Method f1101K;

    /* renamed from: L */
    private static Method f1102L;

    /* renamed from: M */
    private static Method f1103M;

    /* renamed from: A */
    private AdapterView.OnItemSelectedListener f1104A;

    /* renamed from: B */
    final ResizePopupRunnable f1105B;

    /* renamed from: C */
    private final PopupTouchInterceptor f1106C;

    /* renamed from: D */
    private final PopupScrollListener f1107D;

    /* renamed from: E */
    private final ListSelectorHider f1108E;

    /* renamed from: F */
    final Handler f1109F;

    /* renamed from: G */
    private final Rect f1110G;

    /* renamed from: H */
    private Rect f1111H;

    /* renamed from: I */
    private boolean f1112I;

    /* renamed from: J */
    PopupWindow f1113J;

    /* renamed from: f */
    private Context f1114f;

    /* renamed from: g */
    private ListAdapter f1115g;

    /* renamed from: h */
    DropDownListView f1116h;

    /* renamed from: i */
    private int f1117i;

    /* renamed from: j */
    private int f1118j;

    /* renamed from: k */
    private int f1119k;

    /* renamed from: l */
    private int f1120l;

    /* renamed from: m */
    private int f1121m;

    /* renamed from: n */
    private boolean f1122n;

    /* renamed from: o */
    private boolean f1123o;

    /* renamed from: p */
    private boolean f1124p;

    /* renamed from: q */
    private int f1125q;

    /* renamed from: r */
    private boolean f1126r;

    /* renamed from: s */
    private boolean f1127s;

    /* renamed from: t */
    int f1128t;

    /* renamed from: u */
    private View f1129u;

    /* renamed from: v */
    private int f1130v;

    /* renamed from: w */
    private DataSetObserver f1131w;

    /* renamed from: x */
    private View f1132x;

    /* renamed from: y */
    private Drawable f1133y;

    /* renamed from: z */
    private AdapterView.OnItemClickListener f1134z;

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$1 */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$1.class */
    class C01091 extends ForwardingListener {

        /* renamed from: o */
        final /* synthetic */ ListPopupWindow f1135o;

        /* renamed from: k */
        public ListPopupWindow mo21411b() {
            return this.f1135o;
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$2 */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$2.class */
    class RunnableC01102 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ ListPopupWindow f1136f;

        @Override // java.lang.Runnable
        public void run() {
            View t = this.f1136f.m21428t();
            if (t != null && t.getWindowToken() != null) {
                this.f1136f.mo21439b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$ListSelectorHider.class */
    public class ListSelectorHider implements Runnable {
        ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.m21429r();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver.class */
    private class PopupDataSetObserver extends DataSetObserver {
        PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.mo21440a()) {
                ListPopupWindow.this.mo21439b();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$PopupScrollListener.class */
    public class PopupScrollListener implements AbsListView.OnScrollListener {
        PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.m21457A() && ListPopupWindow.this.f1113J.getContentView() != null) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.f1109F.removeCallbacks(listPopupWindow.f1105B);
                ListPopupWindow.this.f1105B.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor.class */
    public class PopupTouchInterceptor implements View.OnTouchListener {
        PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.f1113J) != null && popupWindow.isShowing() && x >= 0 && x < ListPopupWindow.this.f1113J.getWidth() && y >= 0 && y < ListPopupWindow.this.f1113J.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.f1109F.postDelayed(listPopupWindow.f1105B, 250L);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
                listPopupWindow2.f1109F.removeCallbacks(listPopupWindow2.f1105B);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable.class */
    public class ResizePopupRunnable implements Runnable {
        ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.f1116h;
            if (dropDownListView != null && ViewCompat.m19219R(dropDownListView) && ListPopupWindow.this.f1116h.getCount() > ListPopupWindow.this.f1116h.getChildCount()) {
                int childCount = ListPopupWindow.this.f1116h.getChildCount();
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                if (childCount <= listPopupWindow.f1128t) {
                    listPopupWindow.f1113J.setInputMethodMode(2);
                    ListPopupWindow.this.mo21439b();
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1101K = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f1103M = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f1102L = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(@NonNull Context context) {
        this(context, null, C0042R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this.f1117i = -2;
        this.f1118j = -2;
        this.f1121m = CloseCodes.PROTOCOL_ERROR;
        this.f1125q = 0;
        this.f1126r = false;
        this.f1127s = false;
        this.f1128t = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f1130v = 0;
        this.f1105B = new ResizePopupRunnable();
        this.f1106C = new PopupTouchInterceptor();
        this.f1107D = new PopupScrollListener();
        this.f1108E = new ListSelectorHider();
        this.f1110G = new Rect();
        this.f1114f = context;
        this.f1109F = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.ListPopupWindow, i, i2);
        this.f1119k = obtainStyledAttributes.getDimensionPixelOffset(C0042R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C0042R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1120l = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1122n = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.f1113J = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    /* renamed from: C */
    private void m21455C() {
        View view = this.f1129u;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1129u);
            }
        }
    }

    /* renamed from: N */
    private void m21444N(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1101K;
            if (method != null) {
                try {
                    method.invoke(this.f1113J, Boolean.valueOf(z));
                } catch (Exception e) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.f1113J.setIsClippedToScreen(z);
        }
    }

    /* renamed from: q */
    private int m21430q() {
        int i;
        int i2;
        int i3;
        View view;
        int i4;
        boolean z = true;
        if (this.f1116h == null) {
            Context context = this.f1114f;
            DropDownListView s = mo21414s(context, !this.f1112I);
            this.f1116h = s;
            Drawable drawable = this.f1133y;
            if (drawable != null) {
                s.setSelector(drawable);
            }
            this.f1116h.setAdapter(this.f1115g);
            this.f1116h.setOnItemClickListener(this.f1134z);
            this.f1116h.setFocusable(true);
            this.f1116h.setFocusableInTouchMode(true);
            this.f1116h.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view2, int i5, long j) {
                    DropDownListView dropDownListView;
                    if (i5 != -1 && (dropDownListView = ListPopupWindow.this.f1116h) != null) {
                        dropDownListView.setListSelectionHidden(false);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f1116h.setOnScrollListener(this.f1107D);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1104A;
            if (onItemSelectedListener != null) {
                this.f1116h.setOnItemSelectedListener(onItemSelectedListener);
            }
            View view2 = this.f1116h;
            View view3 = this.f1129u;
            if (view3 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i5 = this.f1130v;
                if (i5 == 0) {
                    linearLayout.addView(view3);
                    linearLayout.addView(view2, layoutParams);
                } else if (i5 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f1130v);
                } else {
                    linearLayout.addView(view2, layoutParams);
                    linearLayout.addView(view3);
                }
                int i6 = this.f1118j;
                if (i6 >= 0) {
                    i4 = Integer.MIN_VALUE;
                } else {
                    i6 = 0;
                    i4 = 0;
                }
                view3.measure(View.MeasureSpec.makeMeasureSpec(i6, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i = view3.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                i = 0;
                view = view2;
            }
            this.f1113J.setContentView(view);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f1113J.getContentView();
            View view4 = this.f1129u;
            if (view4 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view4.getLayoutParams();
                i = view4.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f1113J.getBackground();
        if (background != null) {
            background.getPadding(this.f1110G);
            Rect rect = this.f1110G;
            int i7 = rect.top;
            int i8 = rect.bottom + i7;
            i2 = i8;
            if (!this.f1122n) {
                this.f1120l = -i7;
                i2 = i8;
            }
        } else {
            this.f1110G.setEmpty();
            i2 = 0;
        }
        if (this.f1113J.getInputMethodMode() != 2) {
            z = false;
        }
        int u = m21427u(m21428t(), this.f1120l, z);
        if (this.f1126r || this.f1117i == -1) {
            return u + i2;
        }
        int i9 = this.f1118j;
        if (i9 == -2) {
            int i10 = this.f1114f.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.f1110G;
            i3 = View.MeasureSpec.makeMeasureSpec(i10 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i9 != -1) {
            i3 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
        } else {
            int i11 = this.f1114f.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.f1110G;
            i3 = View.MeasureSpec.makeMeasureSpec(i11 - (rect3.left + rect3.right), 1073741824);
        }
        int d = this.f1116h.m21497d(i3, 0, -1, u - i, -1);
        int i12 = i;
        if (d > 0) {
            i12 = i + i2 + this.f1116h.getPaddingTop() + this.f1116h.getPaddingBottom();
        }
        return d + i12;
    }

    /* renamed from: u */
    private int m21427u(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.f1113J.getMaxAvailableHeight(view, i, z);
        }
        Method method = f1102L;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f1113J, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception e) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.f1113J.getMaxAvailableHeight(view, i);
    }

    /* renamed from: A */
    public boolean m21457A() {
        return this.f1113J.getInputMethodMode() == 2;
    }

    /* renamed from: B */
    public boolean m21456B() {
        return this.f1112I;
    }

    /* renamed from: D */
    public void m21454D(@Nullable View view) {
        this.f1132x = view;
    }

    /* renamed from: E */
    public void m21453E(@StyleRes int i) {
        this.f1113J.setAnimationStyle(i);
    }

    /* renamed from: F */
    public void m21452F(int i) {
        Drawable background = this.f1113J.getBackground();
        if (background != null) {
            background.getPadding(this.f1110G);
            Rect rect = this.f1110G;
            this.f1118j = rect.left + rect.right + i;
            return;
        }
        m21441Q(i);
    }

    /* renamed from: G */
    public void m21451G(int i) {
        this.f1125q = i;
    }

    /* renamed from: H */
    public void m21450H(@Nullable Rect rect) {
        this.f1111H = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: I */
    public void m21449I(int i) {
        this.f1113J.setInputMethodMode(i);
    }

    /* renamed from: J */
    public void m21448J(boolean z) {
        this.f1112I = z;
        this.f1113J.setFocusable(z);
    }

    /* renamed from: K */
    public void m21447K(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f1113J.setOnDismissListener(onDismissListener);
    }

    /* renamed from: L */
    public void m21446L(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.f1134z = onItemClickListener;
    }

    @RestrictTo
    /* renamed from: M */
    public void m21445M(boolean z) {
        this.f1124p = true;
        this.f1123o = z;
    }

    /* renamed from: O */
    public void m21443O(int i) {
        this.f1130v = i;
    }

    /* renamed from: P */
    public void m21442P(int i) {
        DropDownListView dropDownListView = this.f1116h;
        if (mo21440a() && dropDownListView != null) {
            dropDownListView.setListSelectionHidden(false);
            dropDownListView.setSelection(i);
            if (dropDownListView.getChoiceMode() != 0) {
                dropDownListView.setItemChecked(i, true);
            }
        }
    }

    /* renamed from: Q */
    public void m21441Q(int i) {
        this.f1118j = i;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: a */
    public boolean mo21440a() {
        return this.f1113J.isShowing();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /* renamed from: b */
    public void mo21439b() {
        int i;
        int i2;
        int q = m21430q();
        boolean A = m21457A();
        PopupWindowCompat.m18846b(this.f1113J, this.f1121m);
        boolean z = true;
        if (!this.f1113J.isShowing()) {
            int i3 = this.f1118j;
            if (i3 == -1) {
                i = -1;
            } else {
                i = i3;
                if (i3 == -2) {
                    i = m21428t().getWidth();
                }
            }
            int i4 = this.f1117i;
            if (i4 == -1) {
                q = -1;
            } else if (i4 != -2) {
                q = i4;
            }
            this.f1113J.setWidth(i);
            this.f1113J.setHeight(q);
            m21444N(true);
            this.f1113J.setOutsideTouchable(!this.f1127s && !this.f1126r);
            this.f1113J.setTouchInterceptor(this.f1106C);
            if (this.f1124p) {
                PopupWindowCompat.m18847a(this.f1113J, this.f1123o);
            }
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = f1103M;
                if (method != null) {
                    try {
                        method.invoke(this.f1113J, this.f1111H);
                    } catch (Exception e) {
                        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                    }
                }
            } else {
                this.f1113J.setEpicenterBounds(this.f1111H);
            }
            PopupWindowCompat.m18845c(this.f1113J, m21428t(), this.f1119k, this.f1120l, this.f1125q);
            this.f1116h.setSelection(-1);
            if (!this.f1112I || this.f1116h.isInTouchMode()) {
                m21429r();
            }
            if (!this.f1112I) {
                this.f1109F.post(this.f1108E);
            }
        } else if (ViewCompat.m19219R(m21428t())) {
            int i5 = this.f1118j;
            if (i5 == -1) {
                i2 = -1;
            } else {
                i2 = i5;
                if (i5 == -2) {
                    i2 = m21428t().getWidth();
                }
            }
            int i6 = this.f1117i;
            if (i6 == -1) {
                if (!A) {
                    q = -1;
                }
                if (A) {
                    this.f1113J.setWidth(this.f1118j == -1 ? -1 : 0);
                    this.f1113J.setHeight(0);
                } else {
                    this.f1113J.setWidth(this.f1118j == -1 ? -1 : 0);
                    this.f1113J.setHeight(-1);
                }
            } else if (i6 != -2) {
                q = i6;
            }
            PopupWindow popupWindow = this.f1113J;
            if (this.f1127s || this.f1126r) {
                z = false;
            }
            popupWindow.setOutsideTouchable(z);
            PopupWindow popupWindow2 = this.f1113J;
            View t = m21428t();
            int i7 = this.f1119k;
            int i8 = this.f1120l;
            if (i2 < 0) {
                i2 = -1;
            }
            if (q < 0) {
                q = -1;
            }
            popupWindow2.update(t, i7, i8, i2, q);
        }
    }

    /* renamed from: c */
    public void m21438c(@Nullable Drawable drawable) {
        this.f1113J.setBackgroundDrawable(drawable);
    }

    /* renamed from: d */
    public int m21437d() {
        return this.f1119k;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        this.f1113J.dismiss();
        m21455C();
        this.f1113J.setContentView(null);
        this.f1116h = null;
        this.f1109F.removeCallbacks(this.f1105B);
    }

    /* renamed from: f */
    public void m21436f(int i) {
        this.f1119k = i;
    }

    @Nullable
    /* renamed from: i */
    public Drawable m21435i() {
        return this.f1113J.getBackground();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    @Nullable
    /* renamed from: k */
    public ListView mo21434k() {
        return this.f1116h;
    }

    /* renamed from: l */
    public void m21433l(int i) {
        this.f1120l = i;
        this.f1122n = true;
    }

    /* renamed from: o */
    public int m21432o() {
        if (!this.f1122n) {
            return 0;
        }
        return this.f1120l;
    }

    /* renamed from: p */
    public void mo21431p(@Nullable ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1131w;
        if (dataSetObserver == null) {
            this.f1131w = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter2 = this.f1115g;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1115g = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1131w);
        }
        DropDownListView dropDownListView = this.f1116h;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.f1115g);
        }
    }

    /* renamed from: r */
    public void m21429r() {
        DropDownListView dropDownListView = this.f1116h;
        if (dropDownListView != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
    }

    @NonNull
    /* renamed from: s */
    DropDownListView mo21414s(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    @Nullable
    /* renamed from: t */
    public View m21428t() {
        return this.f1132x;
    }

    @Nullable
    /* renamed from: v */
    public Object m21426v() {
        if (!mo21440a()) {
            return null;
        }
        return this.f1116h.getSelectedItem();
    }

    /* renamed from: w */
    public long m21425w() {
        if (!mo21440a()) {
            return Long.MIN_VALUE;
        }
        return this.f1116h.getSelectedItemId();
    }

    /* renamed from: x */
    public int m21424x() {
        if (!mo21440a()) {
            return -1;
        }
        return this.f1116h.getSelectedItemPosition();
    }

    @Nullable
    /* renamed from: y */
    public View m21423y() {
        if (!mo21440a()) {
            return null;
        }
        return this.f1116h.getSelectedView();
    }

    /* renamed from: z */
    public int m21422z() {
        return this.f1118j;
    }
}
