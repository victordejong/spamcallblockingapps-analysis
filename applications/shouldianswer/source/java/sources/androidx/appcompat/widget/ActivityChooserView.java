package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.appcompat.C0051a;
import androidx.core.p023g.AbstractC0530b;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a */
    final C0227a f909a;

    /* renamed from: b */
    final FrameLayout f910b;

    /* renamed from: c */
    final FrameLayout f911c;

    /* renamed from: d */
    AbstractC0530b f912d;

    /* renamed from: e */
    final DataSetObserver f913e;

    /* renamed from: f */
    PopupWindow.OnDismissListener f914f;

    /* renamed from: g */
    boolean f915g;

    /* renamed from: h */
    int f916h;

    /* renamed from: i */
    private final View$OnClickListenerC0228b f917i;

    /* renamed from: j */
    private final View f918j;

    /* renamed from: k */
    private final ImageView f919k;

    /* renamed from: l */
    private final int f920l;

    /* renamed from: m */
    private final ViewTreeObserver.OnGlobalLayoutListener f921m;

    /* renamed from: n */
    private C0279af f922n;

    /* renamed from: o */
    private boolean f923o;

    /* renamed from: p */
    private int f924p;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a */
        private static final int[] f925a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0311as m7157a = C0311as.m7157a(context, attributeSet, f925a);
            setBackgroundDrawable(m7157a.m7163a(0));
            m7157a.m7164a();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public class C0227a extends BaseAdapter {

        /* renamed from: a */
        final /* synthetic */ ActivityChooserView f926a;

        /* renamed from: b */
        private C0324c f927b;

        /* renamed from: c */
        private int f928c;

        /* renamed from: d */
        private boolean f929d;

        /* renamed from: e */
        private boolean f930e;

        /* renamed from: f */
        private boolean f931f;

        /* renamed from: a */
        public int m7430a() {
            int i = this.f928c;
            this.f928c = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            int i2 = 0;
            View view = null;
            for (int i3 = 0; i3 < count; i3++) {
                view = getView(i3, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i2 = Math.max(i2, view.getMeasuredWidth());
            }
            this.f928c = i;
            return i2;
        }

        /* renamed from: a */
        public void m7429a(int i) {
            if (this.f928c != i) {
                this.f928c = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public void m7428a(C0324c c0324c) {
            C0324c m7423d = this.f926a.f909a.m7423d();
            if (m7423d != null && this.f926a.isShown()) {
                m7423d.unregisterObserver(this.f926a.f913e);
            }
            this.f927b = c0324c;
            if (c0324c != null && this.f926a.isShown()) {
                c0324c.registerObserver(this.f926a.f913e);
            }
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m7427a(boolean z) {
            if (this.f931f != z) {
                this.f931f = z;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public void m7426a(boolean z, boolean z2) {
            if (this.f929d == z && this.f930e == z2) {
                return;
            }
            this.f929d = z;
            this.f930e = z2;
            notifyDataSetChanged();
        }

        /* renamed from: b */
        public ResolveInfo m7425b() {
            return this.f927b.m7107b();
        }

        /* renamed from: c */
        public int m7424c() {
            return this.f927b.m7111a();
        }

        /* renamed from: d */
        public C0324c m7423d() {
            return this.f927b;
        }

        /* renamed from: e */
        public boolean m7422e() {
            return this.f929d;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int m7111a = this.f927b.m7111a();
            int i = m7111a;
            if (!this.f929d) {
                i = m7111a;
                if (this.f927b.m7107b() != null) {
                    i = m7111a - 1;
                }
            }
            int min = Math.min(i, this.f928c);
            int i2 = min;
            if (this.f931f) {
                i2 = min + 1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                return null;
            }
            int i2 = i;
            if (!this.f929d) {
                i2 = i;
                if (this.f927b.m7107b() != null) {
                    i2 = i + 1;
                }
            }
            return this.f927b.m7110a(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (!this.f931f || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            if (r7.getId() != androidx.appcompat.C0051a.C0057f.list_item) goto L19;
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0227a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public class View$OnClickListenerC0228b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {

        /* renamed from: a */
        final /* synthetic */ ActivityChooserView f932a;

        /* renamed from: a */
        private void m7421a() {
            if (this.f932a.f914f != null) {
                this.f932a.f914f.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != this.f932a.f911c) {
                if (view != this.f932a.f910b) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView activityChooserView = this.f932a;
                activityChooserView.f915g = false;
                activityChooserView.m7433a(activityChooserView.f916h);
                return;
            }
            this.f932a.m7432b();
            Intent m7106b = this.f932a.f909a.m7423d().m7106b(this.f932a.f909a.m7423d().m7109a(this.f932a.f909a.m7425b()));
            if (m7106b == null) {
                return;
            }
            m7106b.addFlags(524288);
            this.f932a.getContext().startActivity(m7106b);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m7421a();
            if (this.f932a.f912d != null) {
                this.f932a.f912d.m6352a(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0227a) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                this.f932a.m7433a(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                return;
            }
            this.f932a.m7432b();
            if (this.f932a.f915g) {
                if (i <= 0) {
                    return;
                }
                this.f932a.f909a.m7423d().m7104c(i);
                return;
            }
            if (!this.f932a.f909a.m7422e()) {
                i++;
            }
            Intent m7106b = this.f932a.f909a.m7423d().m7106b(i);
            if (m7106b == null) {
                return;
            }
            m7106b.addFlags(524288);
            this.f932a.getContext().startActivity(m7106b);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (view == this.f932a.f911c) {
                if (this.f932a.f909a.getCount() <= 0) {
                    return true;
                }
                ActivityChooserView activityChooserView = this.f932a;
                activityChooserView.f915g = true;
                activityChooserView.m7433a(activityChooserView.f916h);
                return true;
            }
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    void m7433a(int i) {
        if (this.f909a.m7423d() != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.f921m);
            boolean z = this.f911c.getVisibility() == 0 ? 1 : 0;
            int m7424c = this.f909a.m7424c();
            if (i == Integer.MAX_VALUE || m7424c <= i + z) {
                this.f909a.m7427a(false);
                this.f909a.m7429a(i);
            } else {
                this.f909a.m7427a(true);
                this.f909a.m7429a(i - 1);
            }
            C0279af listPopupWindow = getListPopupWindow();
            if (listPopupWindow.mo7266c()) {
                return;
            }
            if (this.f915g || !z) {
                this.f909a.m7426a(true, z);
            } else {
                this.f909a.m7426a(false, false);
            }
            listPopupWindow.m7255h(Math.min(this.f909a.m7430a(), this.f920l));
            listPopupWindow.mo7250j_();
            AbstractC0530b abstractC0530b = this.f912d;
            if (abstractC0530b != null) {
                abstractC0530b.m6352a(true);
            }
            listPopupWindow.mo7248k_().setContentDescription(getContext().getString(C0051a.C0059h.abc_activitychooserview_choose_application));
            listPopupWindow.mo7248k_().setSelector(new ColorDrawable(0));
            return;
        }
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    /* renamed from: a */
    public boolean m7434a() {
        if (m7431c() || !this.f923o) {
            return false;
        }
        this.f915g = false;
        m7433a(this.f916h);
        return true;
    }

    /* renamed from: b */
    public boolean m7432b() {
        if (m7431c()) {
            getListPopupWindow().mo7270b();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return true;
            }
            viewTreeObserver.removeGlobalOnLayoutListener(this.f921m);
            return true;
        }
        return true;
    }

    /* renamed from: c */
    public boolean m7431c() {
        return getListPopupWindow().mo7266c();
    }

    public C0324c getDataModel() {
        return this.f909a.m7423d();
    }

    C0279af getListPopupWindow() {
        if (this.f922n == null) {
            this.f922n = new C0279af(getContext());
            this.f922n.mo7273a(this.f909a);
            this.f922n.m7268b(this);
            this.f922n.m7271a(true);
            this.f922n.m7274a((AdapterView.OnItemClickListener) this.f917i);
            this.f922n.m7272a((PopupWindow.OnDismissListener) this.f917i);
        }
        return this.f922n;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0324c m7423d = this.f909a.m7423d();
        if (m7423d != null) {
            m7423d.registerObserver(this.f913e);
        }
        this.f923o = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0324c m7423d = this.f909a.m7423d();
        if (m7423d != null) {
            m7423d.unregisterObserver(this.f913e);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f921m);
        }
        if (m7431c()) {
            m7432b();
        }
        this.f923o = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f918j.layout(0, 0, i3 - i, i4 - i2);
        if (!m7431c()) {
            m7432b();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f918j;
        int i3 = i2;
        if (this.f911c.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(C0324c c0324c) {
        this.f909a.m7428a(c0324c);
        if (m7431c()) {
            m7432b();
            m7434a();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f924p = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f919k.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f919k.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f916h = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f914f = onDismissListener;
    }

    public void setProvider(AbstractC0530b abstractC0530b) {
        this.f912d = abstractC0530b;
    }
}
