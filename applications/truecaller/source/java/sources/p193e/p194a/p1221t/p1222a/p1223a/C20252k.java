package p193e.p194a.p1221t.p1222a.p1223a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.tenor.android.core.util.AbstractLayoutManagerUtils;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.gifs.GifView;
import e.m.a.g.e.d;
import java.util.Objects;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.C12864a2;
import s1.f0.v;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.t.a.a.k */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k.class */
public final class C20252k extends d {

    /* renamed from: p */
    public AbstractC20265q f57015p;

    /* renamed from: s */
    public final g f57018s;

    /* renamed from: t */
    public final g f57019t;

    /* renamed from: u */
    public boolean f57020u;

    /* renamed from: v */
    public final C20258f f57021v;

    /* renamed from: o */
    public final Handler f57014o = new Handler();

    /* renamed from: q */
    public final g f57016q = C19286f.m13661r(this, C2886R.C2888id.etSearch);

    /* renamed from: r */
    public final g f57017r = C19286f.m13661r(this, C2886R.C2888id.gifView);

    /* renamed from: e.a.t.a.a.k$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k$a.class */
    public static final class C20253a implements TextWatcher {

        /* renamed from: b */
        public final /* synthetic */ Runnable f57023b;

        public C20253a(Context context, Runnable runnable) {
            C20252k.this = r4;
            this.f57023b = runnable;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            l.e(editable, "editable");
            C20252k.this.f57014o.removeCallbacks(this.f57023b);
            C20252k.this.f57014o.postDelayed(this.f57023b, 500L);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "charSequence");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "charSequence");
        }
    }

    /* renamed from: e.a.t.a.a.k$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k$b.class */
    public static final class C20254b implements TextView.OnEditorActionListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f57024a;

        /* renamed from: b */
        public final /* synthetic */ C20252k f57025b;

        /* renamed from: c */
        public final /* synthetic */ Runnable f57026c;

        public C20254b(EditText editText, C20252k c20252k, Context context, Runnable runnable) {
            this.f57024a = editText;
            this.f57025b = c20252k;
            this.f57026c = runnable;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            boolean z;
            if (i == 3) {
                this.f57024a.requestFocus();
                if (this.f57025b.m11300h().m35914b()) {
                    AbstractC20265q abstractC20265q = this.f57025b.f57015p;
                    if (abstractC20265q == null) {
                        l.l("searchListener");
                        throw null;
                    }
                    abstractC20265q.mo11266a();
                }
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: e.a.t.a.a.k$c */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k$c.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC20255c implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f57027a;

        /* renamed from: b */
        public final /* synthetic */ int f57028b;

        public ViewTreeObserver$OnGlobalLayoutListenerC20255c(View view, int i) {
            this.f57027a = view;
            this.f57028b = i;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            View view = this.f57027a;
            l.d(view, ViewAction.VIEW);
            view.getLayoutParams().height = this.f57028b;
        }
    }

    /* renamed from: e.a.t.a.a.k$d */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k$d.class */
    public static final class View$OnClickListenerC20256d implements View.OnClickListener {
        public View$OnClickListenerC20256d() {
            C20252k.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.t.a.a.k, n3.b.a.p] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20252k.this.dismiss();
        }
    }

    /* renamed from: e.a.t.a.a.k$e */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k$e.class */
    public static final class C20257e extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20257e() {
            super(0);
            C20252k.this = r4;
        }

        public Object invoke() {
            AbstractC20265q abstractC20265q = C20252k.this.f57015p;
            if (abstractC20265q != null) {
                abstractC20265q.mo11266a();
                return s.a;
            }
            l.l("searchListener");
            throw null;
        }
    }

    /* renamed from: e.a.t.a.a.k$f */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k$f.class */
    public static final class C20258f extends RecyclerView.AbstractC0338t {
        public C20258f() {
            C20252k.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            l.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i, i2);
            if (i2 > 0) {
                RecyclerView.AbstractC0329o layoutManager = recyclerView.getLayoutManager();
                int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
                RecyclerView.AbstractC0329o layoutManager2 = recyclerView.getLayoutManager();
                int findLastVisibleItemPosition = layoutManager2 != null ? AbstractLayoutManagerUtils.findLastVisibleItemPosition(layoutManager2) : 0;
                C20252k c20252k = C20252k.this;
                if (c20252k.f57020u || itemCount > findLastVisibleItemPosition + 6) {
                    return;
                }
                c20252k.f57020u = true;
                EditText m11301g = c20252k.m11301g();
                l.d(m11301g, "etSearch");
                Editable text = m11301g.getText();
                l.d(text, "etSearch.text");
                boolean z = false;
                if (v.g0(text).length() > 0) {
                    z = true;
                }
                if (!z) {
                    return;
                }
                C20252k c20252k2 = C20252k.this;
                EditText m11301g2 = c20252k2.m11301g();
                l.d(m11301g2, "etSearch");
                Editable text2 = m11301g2.getText();
                l.d(text2, "etSearch.text");
                String obj = v.g0(text2).toString();
                AbstractC20265q abstractC20265q = c20252k2.f57015p;
                if (abstractC20265q != null) {
                    abstractC20265q.mo11265b(obj, true);
                } else {
                    l.l("searchListener");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.t.a.a.k$g */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/k$g.class */
    public static final class RunnableC20259g implements Runnable {
        public RunnableC20259g() {
            C20252k.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C20252k c20252k = C20252k.this;
            EditText m11301g = c20252k.m11301g();
            l.d(m11301g, "etSearch");
            Editable text = m11301g.getText();
            l.d(text, "etSearch.text");
            String obj = v.g0(text).toString();
            AbstractC20265q abstractC20265q = c20252k.f57015p;
            if (abstractC20265q != null) {
                abstractC20265q.mo11265b(obj, false);
            } else {
                l.l("searchListener");
                throw null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C20252k(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        g m13661r = C19286f.m13661r(this, C2886R.C2888id.imgClose);
        this.f57018s = m13661r;
        g m13661r2 = C19286f.m13661r(this, C2886R.C2888id.rvGif);
        this.f57019t = m13661r2;
        C20258f c20258f = new C20258f();
        this.f57021v = c20258f;
        int i = C12864a2.m22542p((Activity) context).heightPixels;
        l.e(context, "$this$getActionBarHeight");
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843499, typedValue, true);
        int i2 = typedValue.data;
        Resources resources = context.getResources();
        l.d(resources, "resources");
        int complexToDimensionPixelSize = (i - TypedValue.complexToDimensionPixelSize(i2, resources.getDisplayMetrics())) - C19291g.m13553f0(context);
        View inflate = View.inflate(C17422k.m16113E(context, true), C2886R.layout.view_gif_search, null);
        l.d(inflate, ViewAction.VIEW);
        inflate.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC20255c(inflate, complexToDimensionPixelSize));
        setContentView(inflate);
        ViewParent parent = inflate.getParent();
        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior H = BottomSheetBehavior.H((View) parent);
        l.d(H, "BottomSheetBehavior.from(view.parent as View)");
        H.L(complexToDimensionPixelSize);
        ((View) m13661r.getValue()).setOnClickListener(new View$OnClickListenerC20256d());
        RunnableC20259g runnableC20259g = new RunnableC20259g();
        EditText m11301g = m11301g();
        m11301g.setTextColor(C19291g.m13612L(context, C2886R.attr.tcx_textPrimary));
        m11301g.setHintTextColor(C19291g.m13612L(context, C2886R.attr.tcx_textSecondary));
        m11301g.addTextChangedListener(new C20253a(context, runnableC20259g));
        m11301g.setOnEditorActionListener(new C20254b(m11301g, this, context, runnableC20259g));
        ((RecyclerView) m13661r2.getValue()).addOnScrollListener(c20258f);
        m11300h().setonNoInternetClicked(new C20257e());
    }

    /* renamed from: g */
    public final EditText m11301g() {
        return (EditText) this.f57016q.getValue();
    }

    /* renamed from: h */
    public final GifView m11300h() {
        return (GifView) this.f57017r.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDetachedFromWindow() {
        C20252k.super.onDetachedFromWindow();
        AbstractC20265q abstractC20265q = this.f57015p;
        if (abstractC20265q != null) {
            abstractC20265q.mo11264u1();
        } else {
            l.l("searchListener");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onWindowFocusChanged(boolean z) {
        C20252k.super.onWindowFocusChanged(z);
        if (z) {
            EditText m11301g = m11301g();
            l.d(m11301g, "etSearch");
            C19286f.m13679Y(m11301g, true, 0L, 2);
        }
    }
}
