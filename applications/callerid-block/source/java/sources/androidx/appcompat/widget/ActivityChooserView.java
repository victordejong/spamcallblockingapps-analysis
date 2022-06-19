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
import d.a.d;
import d.a.f;
import d.a.g;
import d.a.j;
import d.h.m.b;
import d.h.m.c0.c;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: b */
    final C0107f f360b;

    /* renamed from: c */
    private final View$OnClickListenerC0108g f361c;

    /* renamed from: d */
    private final View f362d;

    /* renamed from: e */
    private final Drawable f363e;

    /* renamed from: f */
    final FrameLayout f364f;

    /* renamed from: g */
    private final ImageView f365g;

    /* renamed from: h */
    final FrameLayout f366h;

    /* renamed from: i */
    private final ImageView f367i;

    /* renamed from: j */
    private final int f368j;

    /* renamed from: k */
    b f369k;

    /* renamed from: l */
    final DataSetObserver f370l;

    /* renamed from: m */
    private final ViewTreeObserver.OnGlobalLayoutListener f371m;

    /* renamed from: n */
    private ListPopupWindow f372n;

    /* renamed from: o */
    PopupWindow.OnDismissListener f373o;

    /* renamed from: p */
    boolean f374p;

    /* renamed from: q */
    int f375q;

    /* renamed from: r */
    private boolean f376r;

    /* renamed from: s */
    private int f377s;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: b */
        private static final int[] f378b = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0127d0 m14619u = C0127d0.m14619u(context, attributeSet, f378b);
            setBackgroundDrawable(m14619u.m14633g(0));
            m14619u.m14617w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public class C0103a extends DataSetObserver {
        C0103a() {
            ActivityChooserView.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f360b.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f360b.notifyDataSetInvalidated();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0104b implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC0104b() {
            ActivityChooserView.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.m14791b()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().e();
                b bVar = ActivityChooserView.this.f369k;
                if (bVar == null) {
                    return;
                }
                bVar.k(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$c.class */
    public class C0105c extends View.AccessibilityDelegate {
        C0105c(ActivityChooserView activityChooserView) {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            c.G0(accessibilityNodeInfo).Z(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$e.class */
    public class C0106e extends DataSetObserver {
        C0106e() {
            ActivityChooserView.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.m14788e();
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$f.class */
    public class C0107f extends BaseAdapter {

        /* renamed from: b */
        private C0125c f382b;

        /* renamed from: c */
        private int f383c = 4;

        /* renamed from: d */
        private boolean f384d;

        /* renamed from: e */
        private boolean f385e;

        /* renamed from: f */
        private boolean f386f;

        C0107f() {
            ActivityChooserView.this = r4;
        }

        /* renamed from: a */
        public int m14787a() {
            this.f382b.m14653c();
            throw null;
        }

        /* renamed from: b */
        public C0125c m14786b() {
            return this.f382b;
        }

        /* renamed from: c */
        public ResolveInfo m14785c() {
            this.f382b.m14652d();
            throw null;
        }

        /* renamed from: d */
        public boolean m14784d() {
            return this.f384d;
        }

        /* renamed from: e */
        public void m14783e(C0125c c0125c) {
            C0125c m14786b = ActivityChooserView.this.f360b.m14786b();
            if (m14786b != null && ActivityChooserView.this.isShown()) {
                m14786b.unregisterObserver(ActivityChooserView.this.f370l);
            }
            if (c0125c != null && ActivityChooserView.this.isShown()) {
                c0125c.registerObserver(ActivityChooserView.this.f370l);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            this.f382b.m14653c();
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
            } else if (!this.f384d) {
                this.f382b.m14652d();
                throw null;
            } else {
                this.f382b.m14654b(i);
                throw null;
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            if (!this.f386f) {
                return 0;
            }
            getCount();
            throw null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != d.a.f.list_item) goto L19;
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
                Method dump skipped, instructions count: 232
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0107f.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$g.class */
    public class View$OnClickListenerC0108g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        View$OnClickListenerC0108g() {
            ActivityChooserView.this = r4;
        }

        /* renamed from: a */
        private void m14782a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f373o;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f366h) {
                activityChooserView.m14792a();
                ActivityChooserView.this.f360b.m14785c();
                throw null;
            } else if (view != activityChooserView.f364f) {
                throw new IllegalArgumentException();
            } else {
                activityChooserView.f374p = false;
                activityChooserView.m14789d(activityChooserView.f375q);
                throw null;
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m14782a();
            b bVar = ActivityChooserView.this.f369k;
            if (bVar != null) {
                bVar.k(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0107f) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.m14789d(Integer.MAX_VALUE);
                throw null;
            }
            ActivityChooserView.this.m14792a();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.f374p) {
                if (i <= 0) {
                    return;
                }
                activityChooserView.f360b.m14786b().m14651e(i);
                throw null;
            }
            if (!activityChooserView.f360b.m14784d()) {
                i++;
            }
            ActivityChooserView.this.f360b.m14786b().m14655a(i);
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f366h) {
                activityChooserView.f360b.getCount();
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
        this.f370l = new C0103a();
        this.f371m = new ViewTreeObserver$OnGlobalLayoutListenerC0104b();
        this.f375q = 4;
        int[] iArr = j.ActivityChooserView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        t.l0(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        this.f375q = obtainStyledAttributes.getInt(j.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(j.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(g.abc_activity_chooser_view, (ViewGroup) this, true);
        View$OnClickListenerC0108g view$OnClickListenerC0108g = new View$OnClickListenerC0108g();
        this.f361c = view$OnClickListenerC0108g;
        View findViewById = findViewById(f.activity_chooser_view_content);
        this.f362d = findViewById;
        this.f363e = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(f.default_activity_button);
        this.f366h = frameLayout;
        frameLayout.setOnClickListener(view$OnClickListenerC0108g);
        frameLayout.setOnLongClickListener(view$OnClickListenerC0108g);
        int i2 = f.image;
        this.f367i = (ImageView) frameLayout.findViewById(i2);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(f.expand_activities_button);
        frameLayout2.setOnClickListener(view$OnClickListenerC0108g);
        frameLayout2.setAccessibilityDelegate(new C0105c(this));
        frameLayout2.setOnTouchListener(new d(this, frameLayout2));
        this.f364f = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(i2);
        this.f365g = imageView;
        imageView.setImageDrawable(drawable);
        C0107f c0107f = new C0107f();
        this.f360b = c0107f;
        c0107f.registerDataSetObserver(new C0106e());
        Resources resources = context.getResources();
        this.f368j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(d.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    public boolean m14792a() {
        if (m14791b()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return true;
            }
            viewTreeObserver.removeGlobalOnLayoutListener(this.f371m);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public boolean m14791b() {
        return getListPopupWindow().c();
    }

    /* renamed from: c */
    public boolean m14790c() {
        if (m14791b() || !this.f376r) {
            return false;
        }
        this.f374p = false;
        m14789d(this.f375q);
        throw null;
    }

    /* renamed from: d */
    void m14789d(int i) {
        if (this.f360b.m14786b() != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.f371m);
            this.f366h.getVisibility();
            this.f360b.m14787a();
            throw null;
        }
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    /* renamed from: e */
    void m14788e() {
        this.f360b.getCount();
        throw null;
    }

    public C0125c getDataModel() {
        return this.f360b.m14786b();
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f372n == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f372n = listPopupWindow;
            listPopupWindow.p(this.f360b);
            this.f372n.D(this);
            this.f372n.J(true);
            this.f372n.L(this.f361c);
            this.f372n.K(this.f361c);
        }
        return this.f372n;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0125c m14786b = this.f360b.m14786b();
        if (m14786b != null) {
            m14786b.registerObserver(this.f370l);
        }
        this.f376r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0125c m14786b = this.f360b.m14786b();
        if (m14786b != null) {
            m14786b.unregisterObserver(this.f370l);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f371m);
        }
        if (m14791b()) {
            m14792a();
        }
        this.f376r = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f362d.layout(0, 0, i3 - i, i4 - i2);
        if (!m14791b()) {
            m14792a();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f362d;
        int i3 = i2;
        if (this.f366h.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(C0125c c0125c) {
        this.f360b.m14783e(c0125c);
        if (m14791b()) {
            m14792a();
            m14790c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f377s = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f365g.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f365g.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f375q = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f373o = onDismissListener;
    }

    public void setProvider(b bVar) {
        this.f369k = bVar;
    }
}
