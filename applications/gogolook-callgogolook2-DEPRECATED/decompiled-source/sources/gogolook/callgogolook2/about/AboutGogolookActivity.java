package gogolook.callgogolook2.about;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.WebActivity;
import gogolook.callgogolook2.app.WhoscallActivity;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14094o;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14628h;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity.class */
public class AboutGogolookActivity extends WhoscallActivity {
    @BindView(R$id.tv_current_version)
    public TextView mTvCurrentVersion;

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity$a.class */
    public class C4383a implements Action1<Object> {

        /* renamed from: a */
        public final /* synthetic */ DialogC14628h f10626a;

        public C4383a(DialogC14628h hVar) {
            this.f10626a = hVar;
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            C14094o.m2567a(AboutGogolookActivity.this);
            C14217x3.m2194a(this.f10626a);
            C14687h.m862a(AboutGogolookActivity.this, (int) R$string.aboutus_page_clear_cache_toast, 0).m858c();
        }
    }

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity$b.class */
    public class C4384b implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ DialogC14628h f10628a;

        public C4384b(DialogC14628h hVar) {
            this.f10628a = hVar;
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C14080m2.m2613a("Clear cache error", th, true);
            C14217x3.m2194a(this.f10628a);
            AboutGogolookActivity aboutGogolookActivity = AboutGogolookActivity.this;
            C14687h.m861a(aboutGogolookActivity, aboutGogolookActivity.getString(R$string.call_confirm_error, new Object[]{th.getMessage()}), 0).m858c();
        }
    }

    /* renamed from: gogolook.callgogolook2.about.AboutGogolookActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/about/AboutGogolookActivity$c.class */
    public class C4385c implements Single.OnSubscribe<Object> {
        public C4385c() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            C14094o.m2562b(AboutGogolookActivity.this);
            singleSubscriber.onSuccess(null);
        }
    }

    @OnClick({R$id.ll_check_update})
    public void onCheckUpdateClick(View view) {
        Context context = this.f10650a;
        C14217x3.m2127k(context, context.getPackageName());
    }

    @OnClick({R$id.ll_clear_cache})
    public void onClearCacheClick(View view) {
        DialogC14628h hVar = new DialogC14628h(this, (int) R$string.wait);
        hVar.setCancelable(false);
        hVar.show();
        Single.create(new C4385c()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4383a(hVar), new C4384b(hVar));
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.about_gogolook_activity);
        ButterKnife.bind(this);
        C12484b i = m28683i();
        i.m6043a(true);
        i.m6032c(false);
        i.m6028d(true);
        i.m6038b(WhoscallActivity.m28686b(R$string.aboutus_page_title));
        this.mTvCurrentVersion.setText(C14017g4.m2806r());
    }

    @OnClick({R$id.ll_current_version})
    public void onCurrentVersionClick(View view) {
        startActivity(new Intent(this.f10650a, VersionActivity.class));
    }

    @OnClick({R$id.ll_faq})
    public void onFaqClick(View view) {
        Intent intent = new Intent(this.f10650a, WebActivity.class);
        intent.putExtra("title", WhoscallActivity.m28686b(R$string.title_help));
        intent.putExtra("url", WhoscallActivity.m28686b(R$string.link_faq));
        this.f10650a.startActivity(intent);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        return true;
    }

    @OnClick({R$id.ll_privacy})
    public void onPrivacyClick(View view) {
        Intent intent = new Intent(this.f10650a, WebActivity.class);
        intent.putExtra("title", WhoscallActivity.m28686b(R$string.aboutus_privacy));
        intent.putExtra("url", C13963d3.m2964g());
        this.f10650a.startActivity(intent);
    }

    @OnClick({R$id.ll_terms})
    public void onTermsClick(View view) {
        Intent intent = new Intent(this.f10650a, WebActivity.class);
        intent.putExtra("title", WhoscallActivity.m28686b(R$string.aboutus_terms));
        intent.putExtra("url", C13963d3.m2963h());
        this.f10650a.startActivity(intent);
    }
}
