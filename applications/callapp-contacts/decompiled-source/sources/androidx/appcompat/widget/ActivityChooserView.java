package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
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
import androidx.appcompat.a;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.c;
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    final a f875a;

    /* renamed from: b  reason: collision with root package name */
    final View f876b;

    /* renamed from: c  reason: collision with root package name */
    final Drawable f877c;

    /* renamed from: d  reason: collision with root package name */
    final FrameLayout f878d;
    final FrameLayout e;
    final ImageView f;
    androidx.core.view.b g;
    final DataSetObserver h;
    PopupWindow.OnDismissListener i;
    boolean j;
    int k;
    int l;
    private final b m;
    private final ImageView n;
    private final int o;
    private final ViewTreeObserver.OnGlobalLayoutListener p;
    private ListPopupWindow q;
    private boolean r;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        private static final int[] f884a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            ab a2 = ab.a(context, attributeSet, f884a);
            setBackgroundDrawable(a2.a(0));
            a2.f1044a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public final class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        c f885a;

        /* renamed from: b  reason: collision with root package name */
        boolean f886b;

        /* renamed from: d  reason: collision with root package name */
        private int f888d = 4;
        private boolean e;
        private boolean f;

        a() {
        }

        public final int a() {
            int i = this.f888d;
            this.f888d = Integer.MAX_VALUE;
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
            this.f888d = i;
            return i2;
        }

        public final void a(int i) {
            if (this.f888d != i) {
                this.f888d = i;
                notifyDataSetChanged();
            }
        }

        public final void a(boolean z) {
            if (this.f != z) {
                this.f = z;
                notifyDataSetChanged();
            }
        }

        public final void a(boolean z, boolean z2) {
            if (this.f886b != z || this.e != z2) {
                this.f886b = z;
                this.e = z2;
                notifyDataSetChanged();
            }
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            int a2 = this.f885a.a();
            int i = a2;
            if (!this.f886b) {
                i = a2;
                if (this.f885a.b() != null) {
                    i = a2 - 1;
                }
            }
            int min = Math.min(i, this.f888d);
            int i2 = min;
            if (this.f) {
                i2 = min + 1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                int i2 = i;
                if (!this.f886b) {
                    i2 = i;
                    if (this.f885a.b() != null) {
                        i2 = i + 1;
                    }
                }
                return this.f885a.a(i2);
            } else if (itemViewType == 1) {
                return null;
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return (!this.f || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != androidx.appcompat.a.f.list_item) goto L_0x0072;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            if (r7.getId() != 1) goto L_0x0021;
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public final class b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (view == ActivityChooserView.this.e) {
                ActivityChooserView.this.b();
                Intent b2 = ActivityChooserView.this.f875a.f885a.b(ActivityChooserView.this.f875a.f885a.a(ActivityChooserView.this.f875a.f885a.b()));
                if (b2 != null) {
                    b2.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(b2);
                }
            } else if (view == ActivityChooserView.this.f878d) {
                ActivityChooserView.this.j = false;
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                activityChooserView.a(activityChooserView.k);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            if (ActivityChooserView.this.i != null) {
                ActivityChooserView.this.i.onDismiss();
            }
            if (ActivityChooserView.this.g != null) {
                ActivityChooserView.this.g.a(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((a) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType == 0) {
                ActivityChooserView.this.b();
                if (!ActivityChooserView.this.j) {
                    if (!ActivityChooserView.this.f875a.f886b) {
                        i++;
                    }
                    Intent b2 = ActivityChooserView.this.f875a.f885a.b(i);
                    if (b2 != null) {
                        b2.addFlags(524288);
                        ActivityChooserView.this.getContext().startActivity(b2);
                    }
                } else if (i > 0) {
                    c cVar = ActivityChooserView.this.f875a.f885a;
                    synchronized (cVar.f1071b) {
                        cVar.d();
                        c.a aVar = cVar.f1072c.get(i);
                        c.a aVar2 = cVar.f1072c.get(0);
                        cVar.a(new c.d(new ComponentName(aVar.f1074a.activityInfo.packageName, aVar.f1074a.activityInfo.name), System.currentTimeMillis(), aVar2 != null ? (aVar2.f1075b - aVar.f1075b) + 5.0f : 1.0f));
                    }
                }
            } else if (itemViewType == 1) {
                ActivityChooserView.this.a(Integer.MAX_VALUE);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            if (view != ActivityChooserView.this.e) {
                throw new IllegalArgumentException();
            } else if (ActivityChooserView.this.f875a.getCount() <= 0) {
                return true;
            } else {
                ActivityChooserView.this.j = true;
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                activityChooserView.a(activityChooserView.k);
                return true;
            }
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
        this.h = new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView.this.f875a.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public final void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.f875a.notifyDataSetInvalidated();
            }
        };
        this.p = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                if (!ActivityChooserView.this.c()) {
                    return;
                }
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.d().d();
                    return;
                }
                ActivityChooserView.this.d().e_();
                if (ActivityChooserView.this.g != null) {
                    ActivityChooserView.this.g.a(true);
                }
            }
        };
        this.k = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ActivityChooserView, i, 0);
        v.a(this, context, a.j.ActivityChooserView, attributeSet, obtainStyledAttributes, i);
        this.k = obtainStyledAttributes.getInt(a.j.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(a.j.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(a.g.abc_activity_chooser_view, (ViewGroup) this, true);
        b bVar = new b();
        this.m = bVar;
        View findViewById = findViewById(a.f.activity_chooser_view_content);
        this.f876b = findViewById;
        this.f877c = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(a.f.default_activity_button);
        this.e = frameLayout;
        frameLayout.setOnClickListener(bVar);
        frameLayout.setOnLongClickListener(bVar);
        this.f = (ImageView) frameLayout.findViewById(a.f.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(a.f.expand_activities_button);
        frameLayout2.setOnClickListener(bVar);
        frameLayout2.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: androidx.appcompat.widget.ActivityChooserView.3
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                androidx.core.view.a.c a2 = androidx.core.view.a.c.a(accessibilityNodeInfo);
                if (Build.VERSION.SDK_INT >= 19) {
                    a2.f1959a.setCanOpenPopup(true);
                }
            }
        });
        frameLayout2.setOnTouchListener(new r(frameLayout2) { // from class: androidx.appcompat.widget.ActivityChooserView.4
            @Override // androidx.appcompat.widget.r
            public final p a() {
                return ActivityChooserView.this.d();
            }

            @Override // androidx.appcompat.widget.r
            protected final boolean b() {
                ActivityChooserView.this.a();
                return true;
            }

            @Override // androidx.appcompat.widget.r
            protected final boolean c() {
                ActivityChooserView.this.b();
                return true;
            }
        });
        this.f878d = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(a.f.image);
        this.n = imageView;
        imageView.setImageDrawable(drawable);
        a aVar = new a();
        this.f875a = aVar;
        aVar.registerDataSetObserver(new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.5
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                if (activityChooserView.f875a.getCount() > 0) {
                    activityChooserView.f878d.setEnabled(true);
                } else {
                    activityChooserView.f878d.setEnabled(false);
                }
                int a2 = activityChooserView.f875a.f885a.a();
                int c2 = activityChooserView.f875a.f885a.c();
                if (a2 == 1 || (a2 > 1 && c2 > 0)) {
                    activityChooserView.e.setVisibility(0);
                    ResolveInfo b2 = activityChooserView.f875a.f885a.b();
                    PackageManager packageManager = activityChooserView.getContext().getPackageManager();
                    activityChooserView.f.setImageDrawable(b2.loadIcon(packageManager));
                    if (activityChooserView.l != 0) {
                        activityChooserView.e.setContentDescription(activityChooserView.getContext().getString(activityChooserView.l, b2.loadLabel(packageManager)));
                    }
                } else {
                    activityChooserView.e.setVisibility(8);
                }
                if (activityChooserView.e.getVisibility() == 0) {
                    activityChooserView.f876b.setBackgroundDrawable(activityChooserView.f877c);
                } else {
                    activityChooserView.f876b.setBackgroundDrawable(null);
                }
            }
        });
        Resources resources = context.getResources();
        this.o = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void a(int r6) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.a(int):void");
    }

    public final boolean a() {
        if (d().n.isShowing() || !this.r) {
            return false;
        }
        this.j = false;
        a(this.k);
        return true;
    }

    public final boolean b() {
        if (!d().n.isShowing()) {
            return true;
        }
        d().d();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.p);
        return true;
    }

    public final boolean c() {
        return d().n.isShowing();
    }

    final ListPopupWindow d() {
        if (this.q == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.q = listPopupWindow;
            listPopupWindow.a(this.f875a);
            this.q.i = this;
            this.q.j();
            this.q.j = this.m;
            this.q.a(this.m);
        }
        return this.q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        c cVar = this.f875a.f885a;
        if (cVar != null) {
            cVar.registerObserver(this.h);
        }
        this.r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f875a.f885a;
        if (cVar != null) {
            cVar.unregisterObserver(this.h);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.p);
        }
        if (c()) {
            b();
        }
        this.r = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f876b.layout(0, 0, i3 - i, i4 - i2);
        if (!c()) {
            b();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f876b;
        int i3 = i2;
        if (this.e.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(c cVar) {
        a aVar = this.f875a;
        c cVar2 = ActivityChooserView.this.f875a.f885a;
        if (cVar2 != null && ActivityChooserView.this.isShown()) {
            cVar2.unregisterObserver(ActivityChooserView.this.h);
        }
        aVar.f885a = cVar;
        if (cVar != null && ActivityChooserView.this.isShown()) {
            cVar.registerObserver(ActivityChooserView.this.h);
        }
        aVar.notifyDataSetChanged();
        if (d().n.isShowing()) {
            b();
            a();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.l = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.n.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.n.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.k = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.i = onDismissListener;
    }

    public void setProvider(androidx.core.view.b bVar) {
        this.g = bVar;
    }
}
