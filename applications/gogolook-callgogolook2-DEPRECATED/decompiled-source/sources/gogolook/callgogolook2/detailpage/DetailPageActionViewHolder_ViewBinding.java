package gogolook.callgogolook2.detailpage;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder_ViewBinding.class */
public class DetailPageActionViewHolder_ViewBinding implements Unbinder {

    /* renamed from: a */
    public DetailPageActionViewHolder f10769a;

    /* renamed from: b */
    public View f10770b;

    /* renamed from: c */
    public View f10771c;

    /* renamed from: d */
    public View f10772d;

    /* renamed from: e */
    public View f10773e;

    /* renamed from: gogolook.callgogolook2.detailpage.DetailPageActionViewHolder_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder_ViewBinding$a.class */
    public class C4464a extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DetailPageActionViewHolder f10774a;

        public C4464a(DetailPageActionViewHolder_ViewBinding detailPageActionViewHolder_ViewBinding, DetailPageActionViewHolder detailPageActionViewHolder) {
            this.f10774a = detailPageActionViewHolder;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10774a.onClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.detailpage.DetailPageActionViewHolder_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder_ViewBinding$b.class */
    public class C4465b extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DetailPageActionViewHolder f10775a;

        public C4465b(DetailPageActionViewHolder_ViewBinding detailPageActionViewHolder_ViewBinding, DetailPageActionViewHolder detailPageActionViewHolder) {
            this.f10775a = detailPageActionViewHolder;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10775a.onClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.detailpage.DetailPageActionViewHolder_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder_ViewBinding$c.class */
    public class C4466c extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DetailPageActionViewHolder f10776a;

        public C4466c(DetailPageActionViewHolder_ViewBinding detailPageActionViewHolder_ViewBinding, DetailPageActionViewHolder detailPageActionViewHolder) {
            this.f10776a = detailPageActionViewHolder;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10776a.onClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.detailpage.DetailPageActionViewHolder_ViewBinding$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder_ViewBinding$d.class */
    public class C4467d extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DetailPageActionViewHolder f10777a;

        public C4467d(DetailPageActionViewHolder_ViewBinding detailPageActionViewHolder_ViewBinding, DetailPageActionViewHolder detailPageActionViewHolder) {
            this.f10777a = detailPageActionViewHolder;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10777a.onClick(view);
        }
    }

    @UiThread
    public DetailPageActionViewHolder_ViewBinding(DetailPageActionViewHolder detailPageActionViewHolder, View view) {
        this.f10769a = detailPageActionViewHolder;
        View findRequiredView = Utils.findRequiredView(view, R$id.tv_action_button_call, "field 'mViewActionButtonCall' and method 'onClick'");
        detailPageActionViewHolder.mViewActionButtonCall = findRequiredView;
        this.f10770b = findRequiredView;
        findRequiredView.setOnClickListener(new C4464a(this, detailPageActionViewHolder));
        View findRequiredView2 = Utils.findRequiredView(view, R$id.tv_action_button_sms, "field 'mSmsActionView' and method 'onClick'");
        detailPageActionViewHolder.mSmsActionView = findRequiredView2;
        this.f10771c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4465b(this, detailPageActionViewHolder));
        View findRequiredView3 = Utils.findRequiredView(view, R$id.tv_action_button_add_and_block, "field 'mFavBlockActionButton' and method 'onClick'");
        detailPageActionViewHolder.mFavBlockActionButton = (TextView) Utils.castView(findRequiredView3, R$id.tv_action_button_add_and_block, "field 'mFavBlockActionButton'", TextView.class);
        this.f10772d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4466c(this, detailPageActionViewHolder));
        View findRequiredView4 = Utils.findRequiredView(view, R$id.tv_action_button_tag, "field 'mTagActionView' and method 'onClick'");
        detailPageActionViewHolder.mTagActionView = findRequiredView4;
        this.f10773e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4467d(this, detailPageActionViewHolder));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DetailPageActionViewHolder detailPageActionViewHolder = this.f10769a;
        if (detailPageActionViewHolder != null) {
            this.f10769a = null;
            detailPageActionViewHolder.mViewActionButtonCall = null;
            detailPageActionViewHolder.mSmsActionView = null;
            detailPageActionViewHolder.mFavBlockActionButton = null;
            detailPageActionViewHolder.mTagActionView = null;
            this.f10770b.setOnClickListener(null);
            this.f10770b = null;
            this.f10771c.setOnClickListener(null);
            this.f10771c = null;
            this.f10772d.setOnClickListener(null);
            this.f10772d = null;
            this.f10773e.setOnClickListener(null);
            this.f10773e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
