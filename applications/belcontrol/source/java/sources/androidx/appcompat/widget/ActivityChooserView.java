package androidx.appcompat.widget;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a */
    public final C0081f f503a;

    /* renamed from: b */
    public final View$OnClickListenerC0082g f504b;

    /* renamed from: c */
    public final View f505c;

    /* renamed from: d */
    public final Drawable f506d;

    /* renamed from: f */
    public final FrameLayout f507f;

    /* renamed from: g */
    public final ImageView f508g;

    /* renamed from: h */
    public final FrameLayout f509h;

    /* renamed from: j */
    public final ImageView f510j;

    /* renamed from: k */
    public final int f511k;

    /* renamed from: l */
    public ra f512l;

    /* renamed from: m */
    public final DataSetObserver f513m;

    /* renamed from: n */
    public final ViewTreeObserver.OnGlobalLayoutListener f514n;

    /* renamed from: o */
    public ListPopupWindow f515o;

    /* renamed from: p */
    public PopupWindow.OnDismissListener f516p;

    /* renamed from: q */
    public boolean f517q;

    /* renamed from: r */
    public int f518r;

    /* renamed from: s */
    public boolean f519s;

    /* renamed from: t */
    public int f520t;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a */
        public static final int[] f521a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            n2 u = n2.u(context, attributeSet, f521a);
            setBackgroundDrawable(u.g(0));
            u.w();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public class C0077a extends DataSetObserver {
        public C0077a() {
            ActivityChooserView.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f503a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f503a.notifyDataSetInvalidated();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0078b implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0078b() {
            ActivityChooserView.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.m6984b()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().show();
                ra raVar = ActivityChooserView.this.f512l;
                if (raVar == null) {
                    return;
                }
                raVar.m(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$c.class */
    public class C0079c extends View.AccessibilityDelegate {
        public C0079c(ActivityChooserView activityChooserView) {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            ub.H0(accessibilityNodeInfo).Z(true);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$e.class */
    public class C0080e extends DataSetObserver {
        public C0080e() {
            ActivityChooserView.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.m6981e();
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$f.class */
    public class C0081f extends BaseAdapter {

        /* renamed from: a */
        public m1 f525a;

        /* renamed from: b */
        public int f526b = 4;

        /* renamed from: c */
        public boolean f527c;

        /* renamed from: d */
        public boolean f528d;

        /* renamed from: f */
        public boolean f529f;

        public C0081f() {
            ActivityChooserView.this = r4;
        }

        /* renamed from: a */
        public int m6980a() {
            this.f525a.c();
            throw null;
        }

        /* renamed from: b */
        public m1 m6979b() {
            return this.f525a;
        }

        /* renamed from: c */
        public ResolveInfo m6978c() {
            this.f525a.d();
            throw null;
        }

        /* renamed from: d */
        public boolean m6977d() {
            return this.f527c;
        }

        /* renamed from: e */
        public void m6976e(m1 m1Var) {
            m1 m6979b = ActivityChooserView.this.f503a.m6979b();
            if (m6979b != null && ActivityChooserView.this.isShown()) {
                m6979b.unregisterObserver(ActivityChooserView.this.f513m);
            }
            if (m1Var != null && ActivityChooserView.this.isShown()) {
                m1Var.registerObserver(ActivityChooserView.this.f513m);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            this.f525a.c();
            throw null;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                return null;
            } else if (!this.f527c) {
                this.f525a.d();
                throw null;
            } else {
                this.f525a.b(i);
                throw null;
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            if (!this.f529f) {
                return 0;
            }
            getCount();
            throw null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != k.list_item) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            if (r7.getId() != 1) goto L10;
         */
        @Override // android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0081f.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$g.class */
    public class View$OnClickListenerC0082g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        public View$OnClickListenerC0082g() {
            ActivityChooserView.this = r4;
        }

        /* renamed from: a */
        public final void m6975a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f516p;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f509h) {
                activityChooserView.m6985a();
                ActivityChooserView.this.f503a.m6978c();
                throw null;
            } else if (view != activityChooserView.f507f) {
                throw new IllegalArgumentException();
            } else {
                activityChooserView.f517q = false;
                activityChooserView.m6982d(activityChooserView.f518r);
                throw null;
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m6975a();
            ra raVar = ActivityChooserView.this.f512l;
            if (raVar != null) {
                raVar.m(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0081f) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.m6982d(Integer.MAX_VALUE);
                throw null;
            }
            ActivityChooserView.this.m6985a();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.f517q) {
                if (i <= 0) {
                    return;
                }
                activityChooserView.f503a.m6979b().e(i);
                throw null;
            }
            if (!activityChooserView.f503a.m6977d()) {
                i++;
            }
            ActivityChooserView.this.f503a.m6979b().a(i);
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f509h) {
                activityChooserView.f503a.getCount();
                throw null;
            }
            throw new IllegalArgumentException();
        }
    }

    public ActivityChooserView(Context context) {
        this(context, null);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f513m = new C0077a();
        this.f514n = new ViewTreeObserver$OnGlobalLayoutListenerC0078b();
        this.f518r = 4;
        int[] iArr = o.ActivityChooserView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        jb.l0(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        this.f518r = obtainStyledAttributes.getInt(o.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(o.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(l.abc_activity_chooser_view, (ViewGroup) this, true);
        View$OnClickListenerC0082g view$OnClickListenerC0082g = new View$OnClickListenerC0082g();
        this.f504b = view$OnClickListenerC0082g;
        View findViewById = findViewById(k.activity_chooser_view_content);
        this.f505c = findViewById;
        this.f506d = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(k.default_activity_button);
        this.f509h = frameLayout;
        frameLayout.setOnClickListener(view$OnClickListenerC0082g);
        frameLayout.setOnLongClickListener(view$OnClickListenerC0082g);
        int i2 = k.image;
        this.f510j = (ImageView) frameLayout.findViewById(i2);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(k.expand_activities_button);
        frameLayout2.setOnClickListener(view$OnClickListenerC0082g);
        frameLayout2.setAccessibilityDelegate(new C0079c(this));
        frameLayout2.setOnTouchListener(new d(this, frameLayout2));
        this.f507f = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(i2);
        this.f508g = imageView;
        imageView.setImageDrawable(drawable);
        C0081f c0081f = new C0081f();
        this.f503a = c0081f;
        c0081f.registerDataSetObserver(new C0080e());
        Resources resources = context.getResources();
        this.f511k = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(i.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    public boolean m6985a() {
        if (m6984b()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return true;
            }
            viewTreeObserver.removeGlobalOnLayoutListener(this.f514n);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public boolean m6984b() {
        return getListPopupWindow().a();
    }

    /* renamed from: c */
    public boolean m6983c() {
        if (m6984b() || !this.f519s) {
            return false;
        }
        this.f517q = false;
        m6982d(this.f518r);
        throw null;
    }

    /* renamed from: d */
    public void m6982d(int i) {
        if (this.f503a.m6979b() != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.f514n);
            this.f509h.getVisibility();
            this.f503a.m6980a();
            throw null;
        }
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    /* renamed from: e */
    public void m6981e() {
        this.f503a.getCount();
        throw null;
    }

    public m1 getDataModel() {
        return this.f503a.m6979b();
    }

    public ListPopupWindow getListPopupWindow() {
        if (this.f515o == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f515o = listPopupWindow;
            listPopupWindow.l(this.f503a);
            this.f515o.B(this);
            this.f515o.H(true);
            this.f515o.J(this.f504b);
            this.f515o.I(this.f504b);
        }
        return this.f515o;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1 m6979b = this.f503a.m6979b();
        if (m6979b != null) {
            m6979b.registerObserver(this.f513m);
        }
        this.f519s = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1 m6979b = this.f503a.m6979b();
        if (m6979b != null) {
            m6979b.unregisterObserver(this.f513m);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f514n);
        }
        if (m6984b()) {
            m6985a();
        }
        this.f519s = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f505c.layout(0, 0, i3 - i, i4 - i2);
        if (!m6984b()) {
            m6985a();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        View view = this.f505c;
        int i3 = i2;
        if (this.f509h.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(m1 m1Var) {
        this.f503a.m6976e(m1Var);
        if (m6984b()) {
            m6985a();
            m6983c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f520t = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f508g.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f508g.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f518r = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f516p = onDismissListener;
    }

    public void setProvider(ra raVar) {
        this.f512l = raVar;
    }
}
