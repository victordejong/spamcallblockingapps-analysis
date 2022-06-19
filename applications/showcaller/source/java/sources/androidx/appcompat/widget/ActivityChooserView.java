package androidx.appcompat.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
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
import androidx.appcompat.view.menu.AbstractC0198p;
import p020b.p021a.C1426d;
import p020b.p021a.C1428f;
import p020b.p021a.C1429g;
import p020b.p021a.C1430h;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.AbstractC1605b;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: d */
    final C0226f f852d;

    /* renamed from: e */
    private final View$OnClickListenerC0227g f853e;

    /* renamed from: f */
    private final View f854f;

    /* renamed from: g */
    private final Drawable f855g;

    /* renamed from: h */
    final FrameLayout f856h;

    /* renamed from: i */
    private final ImageView f857i;

    /* renamed from: j */
    final FrameLayout f858j;

    /* renamed from: k */
    private final ImageView f859k;

    /* renamed from: l */
    private final int f860l;

    /* renamed from: m */
    AbstractC1605b f861m;

    /* renamed from: n */
    final DataSetObserver f862n;

    /* renamed from: o */
    private final ViewTreeObserver.OnGlobalLayoutListener f863o;

    /* renamed from: p */
    private ListPopupWindow f864p;

    /* renamed from: q */
    PopupWindow.OnDismissListener f865q;

    /* renamed from: r */
    boolean f866r;

    /* renamed from: s */
    int f867s;

    /* renamed from: t */
    private boolean f868t;

    /* renamed from: u */
    private int f869u;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: d */
        private static final int[] f870d = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0286e0 m34947u = C0286e0.m34947u(context, attributeSet, f870d);
            setBackgroundDrawable(m34947u.m34961g(0));
            m34947u.m34945w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public class C0221a extends DataSetObserver {
        C0221a() {
            ActivityChooserView.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f852d.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f852d.notifyDataSetInvalidated();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0222b implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC0222b() {
            ActivityChooserView.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.m35221b()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().mo35134h();
                AbstractC1605b abstractC1605b = ActivityChooserView.this.f861m;
                if (abstractC1605b == null) {
                    return;
                }
                abstractC1605b.m29621k(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$c.class */
    public class C0223c extends View.AccessibilityDelegate {
        C0223c() {
            ActivityChooserView.this = r4;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            C1634c.m29513H0(accessibilityNodeInfo).m29495Z(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$d.class */
    public class C0224d extends AbstractView$OnTouchListenerC0323t {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0224d(View view) {
            super(view);
            ActivityChooserView.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
        /* renamed from: b */
        public AbstractC0198p mo34756b() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
        /* renamed from: c */
        protected boolean mo34755c() {
            ActivityChooserView.this.m35220c();
            return true;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
        /* renamed from: d */
        protected boolean mo34754d() {
            ActivityChooserView.this.m35222a();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ActivityChooserView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$e.class */
    public class C0225e extends DataSetObserver {
        C0225e() {
            ActivityChooserView.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.m35218e();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$f.class */
    public class C0226f extends BaseAdapter {

        /* renamed from: d */
        private C0281c f876d;

        /* renamed from: e */
        private int f877e = 4;

        /* renamed from: f */
        private boolean f878f;

        /* renamed from: g */
        private boolean f879g;

        /* renamed from: h */
        private boolean f880h;

        C0226f() {
            ActivityChooserView.this = r4;
        }

        /* renamed from: a */
        public int m35217a() {
            throw null;
        }

        /* renamed from: b */
        public C0281c m35216b() {
            return this.f876d;
        }

        /* renamed from: c */
        public ResolveInfo m35215c() {
            throw null;
        }

        /* renamed from: d */
        public int m35214d() {
            throw null;
        }

        /* renamed from: e */
        public boolean m35213e() {
            return this.f878f;
        }

        /* renamed from: f */
        public int m35212f() {
            int i = this.f877e;
            this.f877e = Integer.MAX_VALUE;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int i2 = 0;
            for (int i3 = 0; i3 < count; i3++) {
                view = getView(i3, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i2 = Math.max(i2, view.getMeasuredWidth());
            }
            this.f877e = i;
            return i2;
        }

        /* renamed from: g */
        public void m35211g(C0281c c0281c) {
            if (ActivityChooserView.this.f852d.m35216b() != null && ActivityChooserView.this.isShown()) {
                DataSetObserver dataSetObserver = ActivityChooserView.this.f862n;
                throw null;
            } else if (c0281c == null || !ActivityChooserView.this.isShown()) {
                notifyDataSetChanged();
            } else {
                DataSetObserver dataSetObserver2 = ActivityChooserView.this.f862n;
                throw null;
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
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
            } else if (this.f878f) {
                throw null;
            } else {
                throw null;
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (!this.f880h || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != p020b.p021a.C1428f.list_item) goto L19;
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0226f.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        /* renamed from: h */
        public void m35210h(int i) {
            if (this.f877e != i) {
                this.f877e = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: i */
        public void m35209i(boolean z, boolean z2) {
            if (this.f878f == z && this.f879g == z2) {
                return;
            }
            this.f878f = z;
            this.f879g = z2;
            notifyDataSetChanged();
        }

        /* renamed from: j */
        public void m35208j(boolean z) {
            if (this.f880h != z) {
                this.f880h = z;
                notifyDataSetChanged();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$g.class */
    public class View$OnClickListenerC0227g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        View$OnClickListenerC0227g() {
            ActivityChooserView.this = r4;
        }

        /* renamed from: a */
        private void m35207a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f865q;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f858j) {
                activityChooserView.m35222a();
                ActivityChooserView.this.f852d.m35215c();
                ActivityChooserView.this.f852d.m35216b();
                throw null;
            } else if (view != activityChooserView.f856h) {
                throw new IllegalArgumentException();
            } else {
                activityChooserView.f866r = false;
                activityChooserView.m35219d(activityChooserView.f867s);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m35207a();
            AbstractC1605b abstractC1605b = ActivityChooserView.this.f861m;
            if (abstractC1605b != null) {
                abstractC1605b.m29621k(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0226f) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.m35219d(Integer.MAX_VALUE);
                return;
            }
            ActivityChooserView.this.m35222a();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (!activityChooserView.f866r) {
                activityChooserView.f852d.m35213e();
                ActivityChooserView.this.f852d.m35216b();
                throw null;
            } else if (i <= 0) {
            } else {
                activityChooserView.f852d.m35216b();
                throw null;
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f858j) {
                if (activityChooserView.f852d.getCount() <= 0) {
                    return true;
                }
                ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                activityChooserView2.f866r = true;
                activityChooserView2.m35219d(activityChooserView2.f867s);
                return true;
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
        this.f862n = new C0221a();
        this.f863o = new ViewTreeObserver$OnGlobalLayoutListenerC0222b();
        this.f867s = 4;
        int[] iArr = C1432j.ActivityChooserView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C1679w.m29277p0(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        this.f867s = obtainStyledAttributes.getInt(C1432j.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(C1432j.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(C1429g.abc_activity_chooser_view, (ViewGroup) this, true);
        View$OnClickListenerC0227g view$OnClickListenerC0227g = new View$OnClickListenerC0227g();
        this.f853e = view$OnClickListenerC0227g;
        View findViewById = findViewById(C1428f.activity_chooser_view_content);
        this.f854f = findViewById;
        this.f855g = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(C1428f.default_activity_button);
        this.f858j = frameLayout;
        frameLayout.setOnClickListener(view$OnClickListenerC0227g);
        frameLayout.setOnLongClickListener(view$OnClickListenerC0227g);
        int i2 = C1428f.image;
        this.f859k = (ImageView) frameLayout.findViewById(i2);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(C1428f.expand_activities_button);
        frameLayout2.setOnClickListener(view$OnClickListenerC0227g);
        frameLayout2.setAccessibilityDelegate(new C0223c());
        frameLayout2.setOnTouchListener(new C0224d(frameLayout2));
        this.f856h = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(i2);
        this.f857i = imageView;
        imageView.setImageDrawable(drawable);
        C0226f c0226f = new C0226f();
        this.f852d = c0226f;
        c0226f.registerDataSetObserver(new C0225e());
        Resources resources = context.getResources();
        this.f860l = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C1426d.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    public boolean m35222a() {
        if (m35221b()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return true;
            }
            viewTreeObserver.removeGlobalOnLayoutListener(this.f863o);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public boolean m35221b() {
        return getListPopupWindow().mo35138a();
    }

    /* renamed from: c */
    public boolean m35220c() {
        if (m35221b() || !this.f868t) {
            return false;
        }
        this.f866r = false;
        m35219d(this.f867s);
        return true;
    }

    /* renamed from: d */
    void m35219d(int i) {
        if (this.f852d.m35216b() != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.f863o);
            boolean z = this.f858j.getVisibility() == 0 ? 1 : 0;
            int m35217a = this.f852d.m35217a();
            if (i == Integer.MAX_VALUE || m35217a <= i + z) {
                this.f852d.m35208j(false);
                this.f852d.m35210h(i);
            } else {
                this.f852d.m35208j(true);
                this.f852d.m35210h(i - 1);
            }
            ListPopupWindow listPopupWindow = getListPopupWindow();
            if (listPopupWindow.mo35138a()) {
                return;
            }
            if (this.f866r || !z) {
                this.f852d.m35209i(true, z);
            } else {
                this.f852d.m35209i(false, false);
            }
            listPopupWindow.m35150F(Math.min(this.f852d.m35212f(), this.f860l));
            listPopupWindow.mo35134h();
            AbstractC1605b abstractC1605b = this.f861m;
            if (abstractC1605b != null) {
                abstractC1605b.m29621k(true);
            }
            listPopupWindow.mo35132k().setContentDescription(getContext().getString(C1430h.abc_activitychooserview_choose_application));
            listPopupWindow.mo35132k().setSelector(new ColorDrawable(0));
            return;
        }
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    /* renamed from: e */
    void m35218e() {
        if (this.f852d.getCount() > 0) {
            this.f856h.setEnabled(true);
        } else {
            this.f856h.setEnabled(false);
        }
        int m35217a = this.f852d.m35217a();
        int m35214d = this.f852d.m35214d();
        if (m35217a == 1 || (m35217a > 1 && m35214d > 0)) {
            this.f858j.setVisibility(0);
            ResolveInfo m35215c = this.f852d.m35215c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f859k.setImageDrawable(m35215c.loadIcon(packageManager));
            if (this.f869u != 0) {
                this.f858j.setContentDescription(getContext().getString(this.f869u, m35215c.loadLabel(packageManager)));
            }
        } else {
            this.f858j.setVisibility(8);
        }
        if (this.f858j.getVisibility() == 0) {
            this.f854f.setBackgroundDrawable(this.f855g);
        } else {
            this.f854f.setBackgroundDrawable(null);
        }
    }

    public C0281c getDataModel() {
        return this.f852d.m35216b();
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f864p == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f864p = listPopupWindow;
            listPopupWindow.mo35129p(this.f852d);
            this.f864p.m35152D(this);
            this.f864p.m35146J(true);
            this.f864p.m35144L(this.f853e);
            this.f864p.m35145K(this.f853e);
        }
        return this.f864p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f852d.m35216b() == null) {
            this.f868t = true;
            return;
        }
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f852d.m35216b() == null) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.f863o);
            }
            if (m35221b()) {
                m35222a();
            }
            this.f868t = false;
            return;
        }
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f854f.layout(0, 0, i3 - i, i4 - i2);
        if (!m35221b()) {
            m35222a();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f854f;
        int i3 = i2;
        if (this.f858j.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(C0281c c0281c) {
        this.f852d.m35211g(c0281c);
        if (m35221b()) {
            m35222a();
            m35220c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f869u = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f857i.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f857i.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f867s = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f865q = onDismissListener;
    }

    public void setProvider(AbstractC1605b abstractC1605b) {
        this.f861m = abstractC1605b;
    }
}
