package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.common.api.Api;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup implements ActivityChooserModel.ActivityChooserModelClient {

    /* renamed from: f */
    final ActivityChooserViewAdapter f885f;

    /* renamed from: g */
    private final Callbacks f886g;

    /* renamed from: h */
    private final View f887h;

    /* renamed from: i */
    private final Drawable f888i;

    /* renamed from: j */
    final FrameLayout f889j;

    /* renamed from: k */
    private final ImageView f890k;

    /* renamed from: l */
    final FrameLayout f891l;

    /* renamed from: m */
    private final ImageView f892m;

    /* renamed from: n */
    private final int f893n;

    /* renamed from: o */
    ActionProvider f894o;

    /* renamed from: p */
    final DataSetObserver f895p;

    /* renamed from: q */
    private final ViewTreeObserver.OnGlobalLayoutListener f896q;

    /* renamed from: r */
    private ListPopupWindow f897r;

    /* renamed from: s */
    PopupWindow.OnDismissListener f898s;

    /* renamed from: t */
    boolean f899t;

    /* renamed from: u */
    int f900u;

    /* renamed from: v */
    private boolean f901v;

    /* renamed from: w */
    private int f902w;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter.class */
    public class ActivityChooserViewAdapter extends BaseAdapter {

        /* renamed from: f */
        private ActivityChooserModel f907f;

        /* renamed from: g */
        private int f908g = 4;

        /* renamed from: h */
        private boolean f909h;

        /* renamed from: i */
        private boolean f910i;

        /* renamed from: j */
        private boolean f911j;

        ActivityChooserViewAdapter() {
        }

        /* renamed from: a */
        public int m21672a() {
            return this.f907f.m21691f();
        }

        /* renamed from: b */
        public ActivityChooserModel m21671b() {
            return this.f907f;
        }

        /* renamed from: c */
        public ResolveInfo m21670c() {
            return this.f907f.m21689h();
        }

        /* renamed from: d */
        public int m21669d() {
            return this.f907f.m21688i();
        }

        /* renamed from: e */
        public boolean m21668e() {
            return this.f909h;
        }

        /* renamed from: f */
        public int m21667f() {
            int i = this.f908g;
            this.f908g = Api.BaseClientBuilder.API_PRIORITY_OTHER;
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
            this.f908g = i;
            return i2;
        }

        /* renamed from: g */
        public void m21666g(ActivityChooserModel activityChooserModel) {
            ActivityChooserModel b = ActivityChooserView.this.f885f.m21671b();
            if (b != null && ActivityChooserView.this.isShown()) {
                b.unregisterObserver(ActivityChooserView.this.f895p);
            }
            this.f907f = activityChooserModel;
            if (activityChooserModel != null && ActivityChooserView.this.isShown()) {
                activityChooserModel.registerObserver(ActivityChooserView.this.f895p);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int f = this.f907f.m21691f();
            int i = f;
            if (!this.f909h) {
                i = f;
                if (this.f907f.m21689h() != null) {
                    i = f - 1;
                }
            }
            int min = Math.min(i, this.f908g);
            int i2 = min;
            if (this.f911j) {
                i2 = min + 1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                int i2 = i;
                if (!this.f909h) {
                    i2 = i;
                    if (this.f907f.m21689h() != null) {
                        i2 = i + 1;
                    }
                }
                return this.f907f.m21692e(i2);
            } else if (itemViewType == 1) {
                return null;
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (!this.f911j || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != androidx.appcompat.C0042R.C0045id.list_item) goto L_0x0072;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            if (r7.getId() != 1) goto L_0x0021;
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.ActivityChooserViewAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        /* renamed from: h */
        public void m21665h(int i) {
            if (this.f908g != i) {
                this.f908g = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: i */
        public void m21664i(boolean z, boolean z2) {
            if (this.f909h != z || this.f910i != z2) {
                this.f909h = z;
                this.f910i = z2;
                notifyDataSetChanged();
            }
        }

        /* renamed from: j */
        public void m21663j(boolean z) {
            if (this.f911j != z) {
                this.f911j = z;
                notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$Callbacks.class */
    public class Callbacks implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        Callbacks() {
        }

        /* renamed from: a */
        private void m21662a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f898s;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f891l) {
                activityChooserView.m21677a();
                Intent b = ActivityChooserView.this.f885f.m21671b().m21695b(ActivityChooserView.this.f885f.m21671b().m21690g(ActivityChooserView.this.f885f.m21670c()));
                if (b != null) {
                    b.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(b);
                }
            } else if (view == activityChooserView.f889j) {
                activityChooserView.f899t = false;
                activityChooserView.m21674d(activityChooserView.f900u);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m21662a();
            ActionProvider actionProvider = ActivityChooserView.this.f894o;
            if (actionProvider != null) {
                actionProvider.m19319k(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((ActivityChooserViewAdapter) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType == 0) {
                ActivityChooserView.this.m21677a();
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                if (!activityChooserView.f899t) {
                    if (!activityChooserView.f885f.m21668e()) {
                        i++;
                    }
                    Intent b = ActivityChooserView.this.f885f.m21671b().m21695b(i);
                    if (b != null) {
                        b.addFlags(524288);
                        ActivityChooserView.this.getContext().startActivity(b);
                    }
                } else if (i > 0) {
                    activityChooserView.f885f.m21671b().m21682o(i);
                }
            } else if (itemViewType == 1) {
                ActivityChooserView.this.m21674d(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f891l) {
                throw new IllegalArgumentException();
            } else if (activityChooserView.f885f.getCount() <= 0) {
                return true;
            } else {
                ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                activityChooserView2.f899t = true;
                activityChooserView2.m21674d(activityChooserView2.f900u);
                return true;
            }
        }
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: f */
        private static final int[] f914f = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TintTypedArray u = TintTypedArray.m21245u(context, attributeSet, f914f);
            setBackgroundDrawable(u.m21259g(0));
            u.m21243w();
        }
    }

    public ActivityChooserView(@NonNull Context context) {
        this(context, null);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f895p = new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.f885f.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.f885f.notifyDataSetInvalidated();
            }
        };
        this.f896q = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!ActivityChooserView.this.m21676b()) {
                    return;
                }
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().mo21439b();
                ActionProvider actionProvider = ActivityChooserView.this.f894o;
                if (actionProvider != null) {
                    actionProvider.m19319k(true);
                }
            }
        };
        this.f900u = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.ActivityChooserView, i, 0);
        ViewCompat.m19187l0(this, context, C0042R.styleable.ActivityChooserView, attributeSet, obtainStyledAttributes, i, 0);
        this.f900u = obtainStyledAttributes.getInt(C0042R.styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(C0042R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(C0042R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        this.f886g = new Callbacks();
        View findViewById = findViewById(C0042R.C0045id.activity_chooser_view_content);
        this.f887h = findViewById;
        this.f888i = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(C0042R.C0045id.default_activity_button);
        this.f891l = frameLayout;
        frameLayout.setOnClickListener(this.f886g);
        this.f891l.setOnLongClickListener(this.f886g);
        this.f892m = (ImageView) this.f891l.findViewById(C0042R.C0045id.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(C0042R.C0045id.expand_activities_button);
        frameLayout2.setOnClickListener(this.f886g);
        frameLayout2.setAccessibilityDelegate(new View.AccessibilityDelegate(this) { // from class: androidx.appcompat.widget.ActivityChooserView.3
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19032Z(true);
            }
        });
        frameLayout2.setOnTouchListener(new ForwardingListener(frameLayout2) { // from class: androidx.appcompat.widget.ActivityChooserView.4
            @Override // androidx.appcompat.widget.ForwardingListener
            /* renamed from: b */
            public ShowableListMenu mo21411b() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            /* renamed from: c */
            protected boolean mo21410c() {
                ActivityChooserView.this.m21675c();
                return true;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            /* renamed from: d */
            protected boolean mo21409d() {
                ActivityChooserView.this.m21677a();
                return true;
            }
        });
        this.f889j = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(C0042R.C0045id.image);
        this.f890k = imageView;
        imageView.setImageDrawable(drawable);
        ActivityChooserViewAdapter activityChooserViewAdapter = new ActivityChooserViewAdapter();
        this.f885f = activityChooserViewAdapter;
        activityChooserViewAdapter.registerDataSetObserver(new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.5
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.m21673e();
            }
        });
        Resources resources = context.getResources();
        this.f893n = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0042R.dimen.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    public boolean m21677a() {
        if (!m21676b()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f896q);
        return true;
    }

    /* renamed from: b */
    public boolean m21676b() {
        return getListPopupWindow().mo21440a();
    }

    /* renamed from: c */
    public boolean m21675c() {
        if (m21676b() || !this.f901v) {
            return false;
        }
        this.f899t = false;
        m21674d(this.f900u);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m21674d(int r6) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.m21674d(int):void");
    }

    /* renamed from: e */
    void m21673e() {
        if (this.f885f.getCount() > 0) {
            this.f889j.setEnabled(true);
        } else {
            this.f889j.setEnabled(false);
        }
        int a = this.f885f.m21672a();
        int d = this.f885f.m21669d();
        if (a == 1 || (a > 1 && d > 0)) {
            this.f891l.setVisibility(0);
            ResolveInfo c = this.f885f.m21670c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f892m.setImageDrawable(c.loadIcon(packageManager));
            if (this.f902w != 0) {
                this.f891l.setContentDescription(getContext().getString(this.f902w, c.loadLabel(packageManager)));
            }
        } else {
            this.f891l.setVisibility(8);
        }
        if (this.f891l.getVisibility() == 0) {
            this.f887h.setBackgroundDrawable(this.f888i);
        } else {
            this.f887h.setBackgroundDrawable(null);
        }
    }

    public ActivityChooserModel getDataModel() {
        return this.f885f.m21671b();
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f897r == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f897r = listPopupWindow;
            listPopupWindow.mo21431p(this.f885f);
            this.f897r.m21454D(this);
            this.f897r.m21448J(true);
            this.f897r.m21446L(this.f886g);
            this.f897r.m21447K(this.f886g);
        }
        return this.f897r;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ActivityChooserModel b = this.f885f.m21671b();
        if (b != null) {
            b.registerObserver(this.f895p);
        }
        this.f901v = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActivityChooserModel b = this.f885f.m21671b();
        if (b != null) {
            b.unregisterObserver(this.f895p);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f896q);
        }
        if (m21676b()) {
            m21677a();
        }
        this.f901v = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f887h.layout(0, 0, i3 - i, i4 - i2);
        if (!m21676b()) {
            m21677a();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f887h;
        int i3 = i2;
        if (this.f891l.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        this.f885f.m21666g(activityChooserModel);
        if (m21676b()) {
            m21677a();
            m21675c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f902w = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f890k.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f890k.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f900u = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f898s = onDismissListener;
    }

    @RestrictTo
    public void setProvider(ActionProvider actionProvider) {
        this.f894o = actionProvider;
    }
}
