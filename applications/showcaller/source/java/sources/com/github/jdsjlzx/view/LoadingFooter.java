package com.github.jdsjlzx.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.github.jdsjlzx.progressindicator.AVLoadingIndicatorView;
import p078c.p081b.p082a.C1818a;
import p078c.p081b.p082a.C1819b;
import p078c.p081b.p082a.C1820c;
import p078c.p081b.p082a.C1821d;
import p078c.p081b.p082a.p083g.AbstractC1824a;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/LoadingFooter.class */
public class LoadingFooter extends RelativeLayout implements AbstractC1824a {

    /* renamed from: e */
    private View f13944e;

    /* renamed from: f */
    private View f13945f;

    /* renamed from: g */
    private View f13946g;

    /* renamed from: h */
    private SimpleViewSwitcher f13947h;

    /* renamed from: i */
    private TextView f13948i;

    /* renamed from: j */
    private TextView f13949j;

    /* renamed from: k */
    private TextView f13950k;

    /* renamed from: l */
    private String f13951l;

    /* renamed from: m */
    private String f13952m;

    /* renamed from: n */
    private String f13953n;

    /* renamed from: o */
    private int f13954o;

    /* renamed from: p */
    private int f13955p;

    /* renamed from: d */
    protected State f13943d = State.Normal;

    /* renamed from: q */
    private int f13956q = C1818a.colorAccent;

    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/LoadingFooter$State.class */
    public enum State {
        Normal,
        NoMore,
        Loading,
        NetWorkError
    }

    /* renamed from: com.github.jdsjlzx.view.LoadingFooter$a */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/LoadingFooter$a.class */
    public static /* synthetic */ class C4583a {

        /* renamed from: a */
        static final /* synthetic */ int[] f13962a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f13962a = iArr;
            try {
                iArr[State.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13962a[State.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13962a[State.NoMore.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13962a[State.NetWorkError.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public LoadingFooter(Context context) {
        super(context);
        m22191e(context);
    }

    public LoadingFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m22191e(context);
    }

    public LoadingFooter(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m22191e(context);
    }

    /* renamed from: f */
    private View m22190f(int i) {
        if (i == -1) {
            return new ProgressBar(getContext(), null, 16842871);
        }
        AVLoadingIndicatorView aVLoadingIndicatorView = (AVLoadingIndicatorView) LayoutInflater.from(getContext()).inflate(C1820c.layout_indicator_view, (ViewGroup) null);
        aVLoadingIndicatorView.setIndicatorId(i);
        aVLoadingIndicatorView.setIndicatorColor(this.f13955p);
        return aVLoadingIndicatorView;
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1824a
    /* renamed from: a */
    public void mo22195a() {
        setState(State.Normal);
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1824a
    /* renamed from: b */
    public void mo22194b() {
        setState(State.NoMore);
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1824a
    /* renamed from: c */
    public void mo22193c() {
        setState(State.Loading);
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1824a
    /* renamed from: d */
    public void mo22192d() {
        mo22195a();
    }

    /* renamed from: e */
    public void m22191e(Context context) {
        RelativeLayout.inflate(context, C1820c.layout_recyclerview_list_footer, this);
        setOnClickListener(null);
        mo22192d();
        this.f13955p = C0586a.m33350d(getContext(), C1818a.colorAccent);
        this.f13954o = 0;
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1824a
    public View getFootView() {
        return this;
    }

    public State getState() {
        return this.f13943d;
    }

    public void setHintTextColor(int i) {
        this.f13956q = i;
    }

    public void setIndicatorColor(int i) {
        this.f13955p = i;
    }

    public void setLoadingHint(String str) {
        this.f13951l = str;
    }

    public void setNoMoreHint(String str) {
        this.f13952m = str;
    }

    public void setNoNetWorkHint(String str) {
        this.f13953n = str;
    }

    public void setProgressStyle(int i) {
        this.f13954o = i;
    }

    public void setState(State state) {
        setState(state, true);
    }

    public void setState(State state, boolean z) {
        if (this.f13943d == state) {
            return;
        }
        this.f13943d = state;
        int i = C4583a.f13962a[state.ordinal()];
        int i2 = 8;
        if (i == 1) {
            setOnClickListener(null);
            View view = this.f13944e;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.f13946g;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            View view3 = this.f13945f;
            if (view3 == null) {
                return;
            }
            view3.setVisibility(8);
        } else if (i == 2) {
            setOnClickListener(null);
            View view4 = this.f13946g;
            if (view4 != null) {
                view4.setVisibility(8);
            }
            View view5 = this.f13945f;
            if (view5 != null) {
                view5.setVisibility(8);
            }
            if (this.f13944e == null) {
                View inflate = ((ViewStub) findViewById(C1819b.loading_viewstub)).inflate();
                this.f13944e = inflate;
                this.f13947h = (SimpleViewSwitcher) inflate.findViewById(C1819b.loading_progressbar);
                this.f13948i = (TextView) this.f13944e.findViewById(C1819b.loading_text);
            }
            View view6 = this.f13944e;
            if (z) {
                i2 = 0;
            }
            view6.setVisibility(i2);
            this.f13947h.setVisibility(0);
            this.f13947h.removeAllViews();
            this.f13947h.addView(m22190f(this.f13954o));
            this.f13948i.setText(TextUtils.isEmpty(this.f13951l) ? getResources().getString(C1821d.list_footer_loading) : this.f13951l);
            this.f13948i.setTextColor(C0586a.m33350d(getContext(), this.f13956q));
        } else if (i == 3) {
            setOnClickListener(null);
            View view7 = this.f13944e;
            if (view7 != null) {
                view7.setVisibility(8);
            }
            View view8 = this.f13945f;
            if (view8 != null) {
                view8.setVisibility(8);
            }
            View view9 = this.f13946g;
            if (view9 == null) {
                View inflate2 = ((ViewStub) findViewById(C1819b.end_viewstub)).inflate();
                this.f13946g = inflate2;
                this.f13949j = (TextView) inflate2.findViewById(C1819b.loading_end_text);
            } else {
                view9.setVisibility(0);
            }
            View view10 = this.f13946g;
            if (z) {
                i2 = 0;
            }
            view10.setVisibility(i2);
            this.f13949j.setText(TextUtils.isEmpty(this.f13952m) ? getResources().getString(C1821d.list_footer_end) : this.f13952m);
            this.f13949j.setTextColor(C0586a.m33350d(getContext(), this.f13956q));
        } else if (i != 4) {
        } else {
            View view11 = this.f13944e;
            if (view11 != null) {
                view11.setVisibility(8);
            }
            View view12 = this.f13946g;
            if (view12 != null) {
                view12.setVisibility(8);
            }
            View view13 = this.f13945f;
            if (view13 == null) {
                View inflate3 = ((ViewStub) findViewById(C1819b.network_error_viewstub)).inflate();
                this.f13945f = inflate3;
                this.f13950k = (TextView) inflate3.findViewById(C1819b.network_error_text);
            } else {
                view13.setVisibility(0);
            }
            View view14 = this.f13945f;
            if (z) {
                i2 = 0;
            }
            view14.setVisibility(i2);
            this.f13950k.setText(TextUtils.isEmpty(this.f13953n) ? getResources().getString(C1821d.list_footer_network_error) : this.f13953n);
            this.f13950k.setTextColor(C0586a.m33350d(getContext(), this.f13956q));
        }
    }

    public void setViewBackgroundColor(int i) {
        setBackgroundColor(C0586a.m33350d(getContext(), i));
    }
}
