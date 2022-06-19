package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0288p;
import androidx.appcompat.widget.C0383c;
import androidx.core.view.AbstractC0899b;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a */
    final C0316a f1102a;

    /* renamed from: b */
    final View f1103b;

    /* renamed from: c */
    final Drawable f1104c;

    /* renamed from: d */
    final FrameLayout f1105d;

    /* renamed from: e */
    final FrameLayout f1106e;

    /* renamed from: f */
    final ImageView f1107f;

    /* renamed from: g */
    AbstractC0899b f1108g;

    /* renamed from: h */
    final DataSetObserver f1109h;

    /* renamed from: i */
    PopupWindow.OnDismissListener f1110i;

    /* renamed from: j */
    boolean f1111j;

    /* renamed from: k */
    int f1112k;

    /* renamed from: l */
    int f1113l;

    /* renamed from: m */
    private final View$OnClickListenerC0317b f1114m;

    /* renamed from: n */
    private final ImageView f1115n;

    /* renamed from: o */
    private final int f1116o;

    /* renamed from: p */
    private final ViewTreeObserver.OnGlobalLayoutListener f1117p;

    /* renamed from: q */
    private ListPopupWindow f1118q;

    /* renamed from: r */
    private boolean f1119r;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a */
        private static final int[] f1125a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0370ab m45805a = C0370ab.m45805a(context, attributeSet, f1125a);
            setBackgroundDrawable(m45805a.m45810a(0));
            m45805a.f1491a.recycle();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public final class C0316a extends BaseAdapter {

        /* renamed from: a */
        C0383c f1126a;

        /* renamed from: b */
        boolean f1127b;

        /* renamed from: d */
        private int f1129d = 4;

        /* renamed from: e */
        private boolean f1130e;

        /* renamed from: f */
        private boolean f1131f;

        C0316a() {
            ActivityChooserView.this = r4;
        }

        /* renamed from: a */
        public final int m45984a() {
            int i = this.f1129d;
            this.f1129d = Integer.MAX_VALUE;
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
            this.f1129d = i;
            return i2;
        }

        /* renamed from: a */
        public final void m45983a(int i) {
            if (this.f1129d != i) {
                this.f1129d = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public final void m45982a(boolean z) {
            if (this.f1131f != z) {
                this.f1131f = z;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public final void m45981a(boolean z, boolean z2) {
            if (this.f1127b == z && this.f1130e == z2) {
                return;
            }
            this.f1127b = z;
            this.f1130e = z2;
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            int m45766a = this.f1126a.m45766a();
            int i = m45766a;
            if (!this.f1127b) {
                i = m45766a;
                if (this.f1126a.m45762b() != null) {
                    i = m45766a - 1;
                }
            }
            int min = Math.min(i, this.f1129d);
            int i2 = min;
            if (this.f1131f) {
                i2 = min + 1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                return null;
            }
            int i2 = i;
            if (!this.f1127b) {
                i2 = i;
                if (this.f1126a.m45762b() != null) {
                    i2 = i + 1;
                }
            }
            return this.f1126a.m45765a(i2);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return (!this.f1131f || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != androidx.appcompat.C0142a.C0148f.list_item) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            if (r7.getId() != 1) goto L10;
         */
        @Override // android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0316a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 3;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public final class View$OnClickListenerC0317b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
        View$OnClickListenerC0317b() {
            ActivityChooserView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (view != ActivityChooserView.this.f1106e) {
                if (view != ActivityChooserView.this.f1105d) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.f1111j = false;
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                activityChooserView.m45988a(activityChooserView.f1112k);
                return;
            }
            ActivityChooserView.this.m45987b();
            Intent m45761b = ActivityChooserView.this.f1102a.f1126a.m45761b(ActivityChooserView.this.f1102a.f1126a.m45764a(ActivityChooserView.this.f1102a.f1126a.m45762b()));
            if (m45761b == null) {
                return;
            }
            m45761b.addFlags(524288);
            ActivityChooserView.this.getContext().startActivity(m45761b);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            if (ActivityChooserView.this.f1110i != null) {
                ActivityChooserView.this.f1110i.onDismiss();
            }
            if (ActivityChooserView.this.f1108g != null) {
                ActivityChooserView.this.f1108g.m44203a(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0316a) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.m45988a(Integer.MAX_VALUE);
                return;
            }
            ActivityChooserView.this.m45987b();
            if (!ActivityChooserView.this.f1111j) {
                if (!ActivityChooserView.this.f1102a.f1127b) {
                    i++;
                }
                Intent m45761b = ActivityChooserView.this.f1102a.f1126a.m45761b(i);
                if (m45761b == null) {
                    return;
                }
                m45761b.addFlags(524288);
                ActivityChooserView.this.getContext().startActivity(m45761b);
            } else if (i <= 0) {
            } else {
                C0383c c0383c = ActivityChooserView.this.f1102a.f1126a;
                synchronized (c0383c.f1543b) {
                    c0383c.m45759d();
                    C0383c.C0384a c0384a = c0383c.f1544c.get(i);
                    C0383c.C0384a c0384a2 = c0383c.f1544c.get(0);
                    c0383c.m45763a(new C0383c.C0387d(new ComponentName(c0384a.f1556a.activityInfo.packageName, c0384a.f1556a.activityInfo.name), System.currentTimeMillis(), c0384a2 != null ? (c0384a2.f1557b - c0384a.f1557b) + 5.0f : 1.0f));
                }
            }
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            if (view == ActivityChooserView.this.f1106e) {
                if (ActivityChooserView.this.f1102a.getCount() <= 0) {
                    return true;
                }
                ActivityChooserView.this.f1111j = true;
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                activityChooserView.m45988a(activityChooserView.f1112k);
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
        this.f1109h = new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView.this.f1102a.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public final void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.f1102a.notifyDataSetInvalidated();
            }
        };
        this.f1117p = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                if (ActivityChooserView.this.m45986c()) {
                    if (!ActivityChooserView.this.isShown()) {
                        ActivityChooserView.this.m45985d().mo45925d();
                        return;
                    }
                    ActivityChooserView.this.m45985d().mo45922e_();
                    if (ActivityChooserView.this.f1108g == null) {
                        return;
                    }
                    ActivityChooserView.this.f1108g.m44203a(true);
                }
            }
        };
        this.f1112k = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.ActivityChooserView, i, 0);
        C0926v.m44133a(this, context, C0142a.C0152j.ActivityChooserView, attributeSet, obtainStyledAttributes, i);
        this.f1112k = obtainStyledAttributes.getInt(C0142a.C0152j.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(C0142a.C0152j.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(C0142a.C0149g.abc_activity_chooser_view, (ViewGroup) this, true);
        View$OnClickListenerC0317b view$OnClickListenerC0317b = new View$OnClickListenerC0317b();
        this.f1114m = view$OnClickListenerC0317b;
        View findViewById = findViewById(C0142a.C0148f.activity_chooser_view_content);
        this.f1103b = findViewById;
        this.f1104c = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(C0142a.C0148f.default_activity_button);
        this.f1106e = frameLayout;
        frameLayout.setOnClickListener(view$OnClickListenerC0317b);
        frameLayout.setOnLongClickListener(view$OnClickListenerC0317b);
        this.f1107f = (ImageView) frameLayout.findViewById(C0142a.C0148f.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(C0142a.C0148f.expand_activities_button);
        frameLayout2.setOnClickListener(view$OnClickListenerC0317b);
        frameLayout2.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: androidx.appcompat.widget.ActivityChooserView.3
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                C0869c m44278a = C0869c.m44278a(accessibilityNodeInfo);
                if (Build.VERSION.SDK_INT >= 19) {
                    m44278a.f3644a.setCanOpenPopup(true);
                }
            }
        });
        frameLayout2.setOnTouchListener(new AbstractView$OnAttachStateChangeListenerC0410r(frameLayout2) { // from class: androidx.appcompat.widget.ActivityChooserView.4
            @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
            /* renamed from: a */
            public final AbstractC0288p mo45617a() {
                return ActivityChooserView.this.m45985d();
            }

            @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
            /* renamed from: b */
            protected final boolean mo45616b() {
                ActivityChooserView.this.m45989a();
                return true;
            }

            @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
            /* renamed from: c */
            protected final boolean mo45615c() {
                ActivityChooserView.this.m45987b();
                return true;
            }
        });
        this.f1105d = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(C0142a.C0148f.image);
        this.f1115n = imageView;
        imageView.setImageDrawable(drawable);
        C0316a c0316a = new C0316a();
        this.f1102a = c0316a;
        c0316a.registerDataSetObserver(new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.5
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                if (activityChooserView.f1102a.getCount() > 0) {
                    activityChooserView.f1105d.setEnabled(true);
                } else {
                    activityChooserView.f1105d.setEnabled(false);
                }
                int m45766a = activityChooserView.f1102a.f1126a.m45766a();
                int m45760c = activityChooserView.f1102a.f1126a.m45760c();
                if (m45766a == 1 || (m45766a > 1 && m45760c > 0)) {
                    activityChooserView.f1106e.setVisibility(0);
                    ResolveInfo m45762b = activityChooserView.f1102a.f1126a.m45762b();
                    PackageManager packageManager = activityChooserView.getContext().getPackageManager();
                    activityChooserView.f1107f.setImageDrawable(m45762b.loadIcon(packageManager));
                    if (activityChooserView.f1113l != 0) {
                        activityChooserView.f1106e.setContentDescription(activityChooserView.getContext().getString(activityChooserView.f1113l, m45762b.loadLabel(packageManager)));
                    }
                } else {
                    activityChooserView.f1106e.setVisibility(8);
                }
                if (activityChooserView.f1106e.getVisibility() == 0) {
                    activityChooserView.f1103b.setBackgroundDrawable(activityChooserView.f1104c);
                } else {
                    activityChooserView.f1103b.setBackgroundDrawable(null);
                }
            }
        });
        Resources resources = context.getResources();
        this.f1116o = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0142a.C0146d.abc_config_prefDialogWidth));
    }

    /* renamed from: a */
    final void m45988a(int i) {
        if (this.f1102a.f1126a != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.f1117p);
            boolean z = this.f1106e.getVisibility() == 0 ? 1 : 0;
            int m45766a = this.f1102a.f1126a.m45766a();
            if (i == Integer.MAX_VALUE || m45766a <= i + z) {
                this.f1102a.m45982a(false);
                this.f1102a.m45983a(i);
            } else {
                this.f1102a.m45982a(true);
                this.f1102a.m45983a(i - 1);
            }
            ListPopupWindow m45985d = m45985d();
            if (m45985d.f1261n.isShowing()) {
                return;
            }
            if (this.f1111j || !z) {
                this.f1102a.m45981a(true, z);
            } else {
                this.f1102a.m45981a(false, false);
            }
            m45985d.m45924d(Math.min(this.f1102a.m45984a(), this.f1116o));
            m45985d.mo45922e_();
            AbstractC0899b abstractC0899b = this.f1108g;
            if (abstractC0899b != null) {
                abstractC0899b.m44203a(true);
            }
            m45985d.f1252e.setContentDescription(getContext().getString(C0142a.C0150h.abc_activitychooserview_choose_application));
            m45985d.f1252e.setSelector(new ColorDrawable(0));
            return;
        }
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    /* renamed from: a */
    public final boolean m45989a() {
        if (m45985d().f1261n.isShowing() || !this.f1119r) {
            return false;
        }
        this.f1111j = false;
        m45988a(this.f1112k);
        return true;
    }

    /* renamed from: b */
    public final boolean m45987b() {
        if (m45985d().f1261n.isShowing()) {
            m45985d().mo45925d();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return true;
            }
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1117p);
            return true;
        }
        return true;
    }

    /* renamed from: c */
    public final boolean m45986c() {
        return m45985d().f1261n.isShowing();
    }

    /* renamed from: d */
    final ListPopupWindow m45985d() {
        if (this.f1118q == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f1118q = listPopupWindow;
            listPopupWindow.mo45930a(this.f1102a);
            this.f1118q.f1256i = this;
            this.f1118q.m45918j();
            this.f1118q.f1257j = this.f1114m;
            this.f1118q.m45929a(this.f1114m);
        }
        return this.f1118q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0383c c0383c = this.f1102a.f1126a;
        if (c0383c != null) {
            c0383c.registerObserver(this.f1109h);
        }
        this.f1119r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0383c c0383c = this.f1102a.f1126a;
        if (c0383c != null) {
            c0383c.unregisterObserver(this.f1109h);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1117p);
        }
        if (m45986c()) {
            m45987b();
        }
        this.f1119r = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1103b.layout(0, 0, i3 - i, i4 - i2);
        if (!m45986c()) {
            m45987b();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f1103b;
        int i3 = i2;
        if (this.f1106e.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(C0383c c0383c) {
        C0316a c0316a = this.f1102a;
        C0383c c0383c2 = ActivityChooserView.this.f1102a.f1126a;
        if (c0383c2 != null && ActivityChooserView.this.isShown()) {
            c0383c2.unregisterObserver(ActivityChooserView.this.f1109h);
        }
        c0316a.f1126a = c0383c;
        if (c0383c != null && ActivityChooserView.this.isShown()) {
            c0383c.registerObserver(ActivityChooserView.this.f1109h);
        }
        c0316a.notifyDataSetChanged();
        if (m45985d().f1261n.isShowing()) {
            m45987b();
            m45989a();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f1113l = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f1115n.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f1115n.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f1112k = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f1110i = onDismissListener;
    }

    public void setProvider(AbstractC0899b abstractC0899b) {
        this.f1108g = abstractC0899b;
    }
}
