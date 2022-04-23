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
import com.mopub.nativeads.MoPubNativeAdPositioning;
import p012b.p016b.C0577d;
import p012b.p016b.C0579f;
import p012b.p016b.C0580g;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.p025j.AbstractC0667p;
import p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s;
import p012b.p016b.p026q.C0678c;
import p012b.p016b.p026q.C0691f0;
import p012b.p042i.p054p.AbstractC0952b;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.p055d0.C0970c;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a */
    public final C0131f f508a;

    /* renamed from: b */
    public final View$OnClickListenerC0132g f509b;

    /* renamed from: c */
    public final View f510c;

    /* renamed from: d */
    public final Drawable f511d;

    /* renamed from: e */
    public final FrameLayout f512e;

    /* renamed from: f */
    public final ImageView f513f;

    /* renamed from: g */
    public final FrameLayout f514g;

    /* renamed from: h */
    public final ImageView f515h;

    /* renamed from: i */
    public final int f516i;

    /* renamed from: j */
    public AbstractC0952b f517j;

    /* renamed from: k */
    public final DataSetObserver f518k;

    /* renamed from: l */
    public final ViewTreeObserver.OnGlobalLayoutListener f519l;

    /* renamed from: m */
    public ListPopupWindow f520m;

    /* renamed from: n */
    public PopupWindow.OnDismissListener f521n;

    /* renamed from: o */
    public boolean f522o;

    /* renamed from: p */
    public int f523p;

    /* renamed from: q */
    public boolean f524q;

    /* renamed from: r */
    public int f525r;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a */
        public static final int[] f526a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0691f0 a = C0691f0.m36415a(context, attributeSet, f526a);
            setBackgroundDrawable(a.m36412b(0));
            a.m36413b();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public class C0126a extends DataSetObserver {
        public C0126a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f508a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f508a.notifyDataSetInvalidated();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0127b implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0127b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!ActivityChooserView.this.m39029b()) {
                return;
            }
            if (!ActivityChooserView.this.isShown()) {
                ActivityChooserView.this.getListPopupWindow().dismiss();
                return;
            }
            ActivityChooserView.this.getListPopupWindow().show();
            AbstractC0952b bVar = ActivityChooserView.this.f517j;
            if (bVar != null) {
                bVar.m35427a(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$c.class */
    public class C0128c extends View.AccessibilityDelegate {
        public C0128c() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            C0970c.m35376a(accessibilityNodeInfo).m35361b(true);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$d.class */
    public class C0129d extends AbstractView$OnTouchListenerC0722s {
        public C0129d(View view) {
            super(view);
        }

        @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
        /* renamed from: b */
        public AbstractC0667p mo36228b() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
        /* renamed from: c */
        public boolean mo36225c() {
            ActivityChooserView.this.m39028c();
            return true;
        }

        @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
        /* renamed from: d */
        public boolean mo36224d() {
            ActivityChooserView.this.m39031a();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$e.class */
    public class C0130e extends DataSetObserver {
        public C0130e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.m39027d();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$f.class */
    public class C0131f extends BaseAdapter {

        /* renamed from: a */
        public C0678c f532a;

        /* renamed from: b */
        public int f533b = 4;

        /* renamed from: c */
        public boolean f534c;

        /* renamed from: d */
        public boolean f535d;

        /* renamed from: e */
        public boolean f536e;

        public C0131f() {
        }

        /* renamed from: a */
        public int m39026a() {
            return this.f532a.m36474b();
        }

        /* renamed from: a */
        public void m39025a(int i) {
            if (this.f533b != i) {
                this.f533b = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public void m39024a(C0678c cVar) {
            C0678c b = ActivityChooserView.this.f508a.m39021b();
            if (b != null && ActivityChooserView.this.isShown()) {
                b.unregisterObserver(ActivityChooserView.this.f518k);
            }
            this.f532a = cVar;
            if (cVar != null && ActivityChooserView.this.isShown()) {
                cVar.registerObserver(ActivityChooserView.this.f518k);
            }
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m39023a(boolean z) {
            if (this.f536e != z) {
                this.f536e = z;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public void m39022a(boolean z, boolean z2) {
            if (this.f534c != z || this.f535d != z2) {
                this.f534c = z;
                this.f535d = z2;
                notifyDataSetChanged();
            }
        }

        /* renamed from: b */
        public C0678c m39021b() {
            return this.f532a;
        }

        /* renamed from: c */
        public ResolveInfo m39020c() {
            return this.f532a.m36472c();
        }

        /* renamed from: d */
        public int m39019d() {
            return this.f532a.m36470d();
        }

        /* renamed from: e */
        public boolean m39018e() {
            return this.f534c;
        }

        /* renamed from: f */
        public int m39017f() {
            int i = this.f533b;
            this.f533b = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
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
            this.f533b = i;
            return i2;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int b = this.f532a.m36474b();
            int i = b;
            if (!this.f534c) {
                i = b;
                if (this.f532a.m36472c() != null) {
                    i = b - 1;
                }
            }
            int min = Math.min(i, this.f533b);
            int i2 = min;
            if (this.f536e) {
                i2 = min + 1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                int i2 = i;
                if (!this.f534c) {
                    i2 = i;
                    if (this.f532a.m36472c() != null) {
                        i2 = i + 1;
                    }
                }
                return this.f532a.m36473b(i2);
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
            return (!this.f536e || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != p012b.p016b.C0579f.list_item) goto L_0x0072;
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
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0131f.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$g.class */
    public class View$OnClickListenerC0132g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        public View$OnClickListenerC0132g() {
        }

        /* renamed from: a */
        public final void m39016a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f521n;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f514g) {
                activityChooserView.m39031a();
                Intent a = ActivityChooserView.this.f508a.m39021b().m36477a(ActivityChooserView.this.f508a.m39021b().m36476a(ActivityChooserView.this.f508a.m39020c()));
                if (a != null) {
                    a.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(a);
                }
            } else if (view == activityChooserView.f512e) {
                activityChooserView.f522o = false;
                activityChooserView.m39030a(activityChooserView.f523p);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m39016a();
            AbstractC0952b bVar = ActivityChooserView.this.f517j;
            if (bVar != null) {
                bVar.m35427a(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0131f) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType == 0) {
                ActivityChooserView.this.m39031a();
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                if (!activityChooserView.f522o) {
                    if (!activityChooserView.f508a.m39018e()) {
                        i++;
                    }
                    Intent a = ActivityChooserView.this.f508a.m39021b().m36477a(i);
                    if (a != null) {
                        a.addFlags(524288);
                        ActivityChooserView.this.getContext().startActivity(a);
                    }
                } else if (i > 0) {
                    activityChooserView.f508a.m39021b().m36471c(i);
                }
            } else if (itemViewType == 1) {
                ActivityChooserView.this.m39030a(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f514g) {
                throw new IllegalArgumentException();
            } else if (activityChooserView.f508a.getCount() <= 0) {
                return true;
            } else {
                ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                activityChooserView2.f522o = true;
                activityChooserView2.m39030a(activityChooserView2.f523p);
                return true;
            }
        }
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f518k = new C0126a();
        this.f519l = new ViewTreeObserver$OnGlobalLayoutListenerC0127b();
        this.f523p = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.ActivityChooserView, i, 0);
        C1002u.m35244a(this, context, C0583j.ActivityChooserView, attributeSet, obtainStyledAttributes, i, 0);
        this.f523p = obtainStyledAttributes.getInt(C0583j.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(C0583j.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(C0580g.abc_activity_chooser_view, (ViewGroup) this, true);
        this.f509b = new View$OnClickListenerC0132g();
        View findViewById = findViewById(C0579f.activity_chooser_view_content);
        this.f510c = findViewById;
        this.f511d = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(C0579f.default_activity_button);
        this.f514g = frameLayout;
        frameLayout.setOnClickListener(this.f509b);
        this.f514g.setOnLongClickListener(this.f509b);
        this.f515h = (ImageView) this.f514g.findViewById(C0579f.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(C0579f.expand_activities_button);
        frameLayout2.setOnClickListener(this.f509b);
        frameLayout2.setAccessibilityDelegate(new C0128c());
        frameLayout2.setOnTouchListener(new C0129d(frameLayout2));
        this.f512e = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(C0579f.image);
        this.f513f = imageView;
        imageView.setImageDrawable(drawable);
        C0131f fVar = new C0131f();
        this.f508a = fVar;
        fVar.registerDataSetObserver(new C0130e());
        Resources resources = context.getResources();
        this.f516i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0577d.abc_config_prefDialogWidth));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m39030a(int r6) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.m39030a(int):void");
    }

    /* renamed from: a */
    public boolean m39031a() {
        if (!m39029b()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f519l);
        return true;
    }

    /* renamed from: b */
    public boolean m39029b() {
        return getListPopupWindow().mo36517a();
    }

    /* renamed from: c */
    public boolean m39028c() {
        if (m39029b() || !this.f524q) {
            return false;
        }
        this.f522o = false;
        m39030a(this.f523p);
        return true;
    }

    /* renamed from: d */
    public void m39027d() {
        if (this.f508a.getCount() > 0) {
            this.f512e.setEnabled(true);
        } else {
            this.f512e.setEnabled(false);
        }
        int a = this.f508a.m39026a();
        int d = this.f508a.m39019d();
        if (a == 1 || (a > 1 && d > 0)) {
            this.f514g.setVisibility(0);
            ResolveInfo c = this.f508a.m39020c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f515h.setImageDrawable(c.loadIcon(packageManager));
            if (this.f525r != 0) {
                this.f514g.setContentDescription(getContext().getString(this.f525r, c.loadLabel(packageManager)));
            }
        } else {
            this.f514g.setVisibility(8);
        }
        if (this.f514g.getVisibility() == 0) {
            this.f510c.setBackgroundDrawable(this.f511d);
        } else {
            this.f510c.setBackgroundDrawable(null);
        }
    }

    public C0678c getDataModel() {
        return this.f508a.m39021b();
    }

    public ListPopupWindow getListPopupWindow() {
        if (this.f520m == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f520m = listPopupWindow;
            listPopupWindow.mo38962a(this.f508a);
            this.f520m.m38965a(this);
            this.f520m.m38960a(true);
            this.f520m.m38963a((AdapterView.OnItemClickListener) this.f509b);
            this.f520m.m38961a((PopupWindow.OnDismissListener) this.f509b);
        }
        return this.f520m;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0678c b = this.f508a.m39021b();
        if (b != null) {
            b.registerObserver(this.f518k);
        }
        this.f524q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0678c b = this.f508a.m39021b();
        if (b != null) {
            b.unregisterObserver(this.f518k);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f519l);
        }
        if (m39029b()) {
            m39031a();
        }
        this.f524q = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f510c.layout(0, 0, i3 - i, i4 - i2);
        if (!m39029b()) {
            m39031a();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        View view = this.f510c;
        int i3 = i2;
        if (this.f514g.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(C0678c cVar) {
        this.f508a.m39024a(cVar);
        if (m39029b()) {
            m39031a();
            m39028c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f525r = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f513f.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f513f.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f523p = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f521n = onDismissListener;
    }

    public void setProvider(AbstractC0952b bVar) {
        this.f517j = bVar;
    }
}
