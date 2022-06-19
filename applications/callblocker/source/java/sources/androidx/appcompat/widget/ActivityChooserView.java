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
import androidx.appcompat.C0083a;
import androidx.core.p026h.AbstractC0573b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView.class */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a */
    final C0236a f959a;

    /* renamed from: b */
    final FrameLayout f960b;

    /* renamed from: c */
    final FrameLayout f961c;

    /* renamed from: d */
    AbstractC0573b f962d;

    /* renamed from: e */
    final DataSetObserver f963e;

    /* renamed from: f */
    PopupWindow.OnDismissListener f964f;

    /* renamed from: g */
    boolean f965g;

    /* renamed from: h */
    int f966h;

    /* renamed from: i */
    private final View$OnClickListenerC0237b f967i;

    /* renamed from: j */
    private final View f968j;

    /* renamed from: k */
    private final ImageView f969k;

    /* renamed from: l */
    private final int f970l;

    /* renamed from: m */
    private final ViewTreeObserver.OnGlobalLayoutListener f971m;

    /* renamed from: n */
    private C0285ac f972n;

    /* renamed from: o */
    private boolean f973o;

    /* renamed from: p */
    private int f974p;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$InnerLayout.class */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a */
        private static final int[] f975a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0317ap m21434a = C0317ap.m21434a(context, attributeSet, f975a);
            setBackgroundDrawable(m21434a.m21440a(0));
            m21434a.m21441a();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$a.class */
    public class C0236a extends BaseAdapter {

        /* renamed from: a */
        final /* synthetic */ ActivityChooserView f976a;

        /* renamed from: b */
        private C0340d f977b;

        /* renamed from: c */
        private int f978c;

        /* renamed from: d */
        private boolean f979d;

        /* renamed from: e */
        private boolean f980e;

        /* renamed from: f */
        private boolean f981f;

        /* renamed from: a */
        public int m21733a() {
            int i = this.f978c;
            this.f978c = Integer.MAX_VALUE;
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
            this.f978c = i;
            return i2;
        }

        /* renamed from: a */
        public void m21732a(int i) {
            if (this.f978c != i) {
                this.f978c = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public void m21731a(C0340d c0340d) {
            C0340d m21726d = this.f976a.f959a.m21726d();
            if (m21726d != null && this.f976a.isShown()) {
                m21726d.unregisterObserver(this.f976a.f963e);
            }
            this.f977b = c0340d;
            if (c0340d != null && this.f976a.isShown()) {
                c0340d.registerObserver(this.f976a.f963e);
            }
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m21730a(boolean z) {
            if (this.f981f != z) {
                this.f981f = z;
                notifyDataSetChanged();
            }
        }

        /* renamed from: a */
        public void m21729a(boolean z, boolean z2) {
            if (this.f979d == z && this.f980e == z2) {
                return;
            }
            this.f979d = z;
            this.f980e = z2;
            notifyDataSetChanged();
        }

        /* renamed from: b */
        public ResolveInfo m21728b() {
            return this.f977b.m21346b();
        }

        /* renamed from: c */
        public int m21727c() {
            return this.f977b.m21350a();
        }

        /* renamed from: d */
        public C0340d m21726d() {
            return this.f977b;
        }

        /* renamed from: e */
        public boolean m21725e() {
            return this.f979d;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int m21350a = this.f977b.m21350a();
            int i = m21350a;
            if (!this.f979d) {
                i = m21350a;
                if (this.f977b.m21346b() != null) {
                    i = m21350a - 1;
                }
            }
            int min = Math.min(i, this.f978c);
            int i2 = min;
            if (this.f981f) {
                i2 = min + 1;
            }
            return i2;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            ResolveInfo m21349a;
            switch (getItemViewType(i)) {
                case 0:
                    int i2 = i;
                    if (!this.f979d) {
                        i2 = i;
                        if (this.f977b.m21346b() != null) {
                            i2 = i + 1;
                        }
                    }
                    m21349a = this.f977b.m21349a(i2);
                    break;
                case 1:
                    m21349a = null;
                    break;
                default:
                    throw new IllegalArgumentException();
            }
            return m21349a;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (!this.f981f || i != getCount() - 1) ? 0 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0079, code lost:
            if (r7.getId() != androidx.appcompat.C0083a.C0089f.list_item) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
            if (r7.getId() != 1) goto L10;
         */
        @Override // android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserView.C0236a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActivityChooserView$b.class */
    public class View$OnClickListenerC0237b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {

        /* renamed from: a */
        final /* synthetic */ ActivityChooserView f982a;

        /* renamed from: a */
        private void m21724a() {
            if (this.f982a.f964f != null) {
                this.f982a.f964f.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != this.f982a.f961c) {
                if (view != this.f982a.f960b) {
                    throw new IllegalArgumentException();
                }
                this.f982a.f965g = false;
                this.f982a.m21736a(this.f982a.f966h);
                return;
            }
            this.f982a.m21735b();
            Intent m21345b = this.f982a.f959a.m21726d().m21345b(this.f982a.f959a.m21726d().m21348a(this.f982a.f959a.m21728b()));
            if (m21345b == null) {
                return;
            }
            m21345b.addFlags(524288);
            this.f982a.getContext().startActivity(m21345b);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m21724a();
            if (this.f982a.f962d != null) {
                this.f982a.f962d.m20429a(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (((C0236a) adapterView.getAdapter()).getItemViewType(i)) {
                case 0:
                    this.f982a.m21735b();
                    if (this.f982a.f965g) {
                        if (i <= 0) {
                            return;
                        }
                        this.f982a.f959a.m21726d().m21343c(i);
                        return;
                    }
                    if (!this.f982a.f959a.m21725e()) {
                        i++;
                    }
                    Intent m21345b = this.f982a.f959a.m21726d().m21345b(i);
                    if (m21345b == null) {
                        return;
                    }
                    m21345b.addFlags(524288);
                    this.f982a.getContext().startActivity(m21345b);
                    return;
                case 1:
                    this.f982a.m21736a(Integer.MAX_VALUE);
                    return;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (view == this.f982a.f961c) {
                if (this.f982a.f959a.getCount() <= 0) {
                    return true;
                }
                this.f982a.f965g = true;
                this.f982a.m21736a(this.f982a.f966h);
                return true;
            }
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    void m21736a(int i) {
        if (this.f959a.m21726d() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.f971m);
        boolean z = this.f961c.getVisibility() == 0;
        int m21727c = this.f959a.m21727c();
        int i2 = z ? 1 : 0;
        if (i == Integer.MAX_VALUE || m21727c <= i2 + i) {
            this.f959a.m21730a(false);
            this.f959a.m21732a(i);
        } else {
            this.f959a.m21730a(true);
            this.f959a.m21732a(i - 1);
        }
        C0285ac listPopupWindow = getListPopupWindow();
        if (listPopupWindow.mo21536e()) {
            return;
        }
        if (this.f965g || !z) {
            this.f959a.m21729a(true, z);
        } else {
            this.f959a.m21729a(false, false);
        }
        listPopupWindow.m21529h(Math.min(this.f959a.m21733a(), this.f970l));
        listPopupWindow.mo21545a_();
        if (this.f962d != null) {
            this.f962d.m20429a(true);
        }
        listPopupWindow.mo21532g().setContentDescription(getContext().getString(C0083a.C0091h.abc_activitychooserview_choose_application));
        listPopupWindow.mo21532g().setSelector(new ColorDrawable(0));
    }

    /* renamed from: a */
    public boolean m21737a() {
        boolean z = false;
        if (!m21734c()) {
            if (!this.f973o) {
                z = false;
            } else {
                this.f965g = false;
                m21736a(this.f966h);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m21735b() {
        if (m21734c()) {
            getListPopupWindow().mo21538d();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return true;
            }
            viewTreeObserver.removeGlobalOnLayoutListener(this.f971m);
            return true;
        }
        return true;
    }

    /* renamed from: c */
    public boolean m21734c() {
        return getListPopupWindow().mo21536e();
    }

    public C0340d getDataModel() {
        return this.f959a.m21726d();
    }

    C0285ac getListPopupWindow() {
        if (this.f972n == null) {
            this.f972n = new C0285ac(getContext());
            this.f972n.mo21548a(this.f959a);
            this.f972n.m21542b(this);
            this.f972n.m21546a(true);
            this.f972n.m21549a((AdapterView.OnItemClickListener) this.f967i);
            this.f972n.m21547a((PopupWindow.OnDismissListener) this.f967i);
        }
        return this.f972n;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0340d m21726d = this.f959a.m21726d();
        if (m21726d != null) {
            m21726d.registerObserver(this.f963e);
        }
        this.f973o = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0340d m21726d = this.f959a.m21726d();
        if (m21726d != null) {
            m21726d.unregisterObserver(this.f963e);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f971m);
        }
        if (m21734c()) {
            m21735b();
        }
        this.f973o = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f968j.layout(0, 0, i3 - i, i4 - i2);
        if (!m21734c()) {
            m21735b();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f968j;
        int i3 = i2;
        if (this.f961c.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(C0340d c0340d) {
        this.f959a.m21731a(c0340d);
        if (m21734c()) {
            m21735b();
            m21737a();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f974p = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f969k.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f969k.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f966h = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f964f = onDismissListener;
    }

    public void setProvider(AbstractC0573b abstractC0573b) {
        this.f962d = abstractC0573b;
    }
}
