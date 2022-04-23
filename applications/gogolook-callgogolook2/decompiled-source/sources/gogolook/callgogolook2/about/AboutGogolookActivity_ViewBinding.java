package gogolook.callgogolook2.about;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity_ViewBinding.class */
public class AboutGogolookActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public AboutGogolookActivity f10631a;

    /* renamed from: b */
    public View f10632b;

    /* renamed from: c */
    public View f10633c;

    /* renamed from: d */
    public View f10634d;

    /* renamed from: e */
    public View f10635e;

    /* renamed from: f */
    public View f10636f;

    /* renamed from: g */
    public View f10637g;

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity_ViewBinding$a.class */
    public class C4386a extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AboutGogolookActivity f10638a;

        public C4386a(AboutGogolookActivity_ViewBinding aboutGogolookActivity_ViewBinding, AboutGogolookActivity aboutGogolookActivity) {
            this.f10638a = aboutGogolookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10638a.onCheckUpdateClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity_ViewBinding$b.class */
    public class C4387b extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AboutGogolookActivity f10639a;

        public C4387b(AboutGogolookActivity_ViewBinding aboutGogolookActivity_ViewBinding, AboutGogolookActivity aboutGogolookActivity) {
            this.f10639a = aboutGogolookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10639a.onFaqClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity_ViewBinding$c.class */
    public class C4388c extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AboutGogolookActivity f10640a;

        public C4388c(AboutGogolookActivity_ViewBinding aboutGogolookActivity_ViewBinding, AboutGogolookActivity aboutGogolookActivity) {
            this.f10640a = aboutGogolookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10640a.onTermsClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity_ViewBinding$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity_ViewBinding$d.class */
    public class C4389d extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AboutGogolookActivity f10641a;

        public C4389d(AboutGogolookActivity_ViewBinding aboutGogolookActivity_ViewBinding, AboutGogolookActivity aboutGogolookActivity) {
            this.f10641a = aboutGogolookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10641a.onPrivacyClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity_ViewBinding$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity_ViewBinding$e.class */
    public class C4390e extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AboutGogolookActivity f10642a;

        public C4390e(AboutGogolookActivity_ViewBinding aboutGogolookActivity_ViewBinding, AboutGogolookActivity aboutGogolookActivity) {
            this.f10642a = aboutGogolookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10642a.onCurrentVersionClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity_ViewBinding$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity_ViewBinding$f.class */
    public class C4391f extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AboutGogolookActivity f10643a;

        public C4391f(AboutGogolookActivity_ViewBinding aboutGogolookActivity_ViewBinding, AboutGogolookActivity aboutGogolookActivity) {
            this.f10643a = aboutGogolookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10643a.onClearCacheClick(view);
        }
    }

    @UiThread
    public AboutGogolookActivity_ViewBinding(AboutGogolookActivity aboutGogolookActivity, View view) {
        this.f10631a = aboutGogolookActivity;
        aboutGogolookActivity.mTvCurrentVersion = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_current_version, "field 'mTvCurrentVersion'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R$id.ll_check_update, "method 'onCheckUpdateClick'");
        this.f10632b = findRequiredView;
        findRequiredView.setOnClickListener(new C4386a(this, aboutGogolookActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R$id.ll_faq, "method 'onFaqClick'");
        this.f10633c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4387b(this, aboutGogolookActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R$id.ll_terms, "method 'onTermsClick'");
        this.f10634d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4388c(this, aboutGogolookActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R$id.ll_privacy, "method 'onPrivacyClick'");
        this.f10635e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4389d(this, aboutGogolookActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R$id.ll_current_version, "method 'onCurrentVersionClick'");
        this.f10636f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C4390e(this, aboutGogolookActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R$id.ll_clear_cache, "method 'onClearCacheClick'");
        this.f10637g = findRequiredView6;
        findRequiredView6.setOnClickListener(new C4391f(this, aboutGogolookActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AboutGogolookActivity aboutGogolookActivity = this.f10631a;
        if (aboutGogolookActivity != null) {
            this.f10631a = null;
            aboutGogolookActivity.mTvCurrentVersion = null;
            this.f10632b.setOnClickListener(null);
            this.f10632b = null;
            this.f10633c.setOnClickListener(null);
            this.f10633c = null;
            this.f10634d.setOnClickListener(null);
            this.f10634d = null;
            this.f10635e.setOnClickListener(null);
            this.f10635e = null;
            this.f10636f.setOnClickListener(null);
            this.f10636f = null;
            this.f10637g.setOnClickListener(null);
            this.f10637g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
