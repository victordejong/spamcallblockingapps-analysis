package gogolook.callgogolook2.share;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.BindViews;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.List;
import java.util.concurrent.Callable;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p569u0.C13659c;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p583a5.C13895d;
import p660rx.Observable;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity.class */
public class ShareActivity extends Activity {

    /* renamed from: a */
    public String f12929a;

    /* renamed from: b */
    public Uri f12930b;

    /* renamed from: c */
    public Uri f12931c;

    /* renamed from: d */
    public String f12932d;

    /* renamed from: e */
    public String f12933e;
    @BindView(R$id.iv_share_app_more)
    public View mAppButtonMore;
    @BindViews({R$id.iv_share_app_0, R$id.iv_share_app_1, R$id.iv_share_app_2})
    public ImageView[] mAppButtons;
    @BindView(R$id.tv_close_btn)
    public View mCloseButton;
    @BindView(R$id.pb_loading)
    public View mLoadingView;
    @BindView(R$id.iv_referral)
    public ImageView mReferralImage;
    @BindView(R$id.iv_share_title)
    public TextView mShareTitle;

    /* renamed from: gogolook.callgogolook2.share.ShareActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity$a.class */
    public class View$OnClickListenerC5246a implements View.OnClickListener {
        public View$OnClickListenerC5246a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ShareActivity.this.startActivity(new Intent("android.intent.action.VIEW", ShareActivity.this.f12931c));
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ShareActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity$b.class */
    public class View$OnClickListenerC5247b implements View.OnClickListener {
        public View$OnClickListenerC5247b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                C13895d.m3113b(ShareActivity.this, ShareActivity.this.f12932d);
            } catch (Throwable th) {
            }
            ShareActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ShareActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity$c.class */
    public class View$OnClickListenerC5248c implements View.OnClickListener {
        public View$OnClickListenerC5248c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ShareActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity$d.class */
    public class C5249d implements Action1<List<PackageInfo>> {

        /* renamed from: gogolook.callgogolook2.share.ShareActivity$d$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity$d$a.class */
        public class View$OnClickListenerC5250a implements View.OnClickListener {
            public View$OnClickListenerC5250a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = (String) view.getTag();
                StringBuilder sb = new StringBuilder();
                sb.append(ShareActivity.this.f12929a);
                sb.append("_");
                sb.append(TextUtils.isEmpty(str) ? "" : str);
                sb.toString();
                if (!TextUtils.isEmpty(str)) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    if (str.equalsIgnoreCase("com.instagram.android")) {
                        intent.setType("image/png");
                        intent.putExtra("android.intent.extra.STREAM", C12216t0.m6759d(ShareActivity.this.f12930b));
                    } else {
                        intent.setType("text/plain");
                        intent.putExtra("android.intent.extra.TEXT", ShareActivity.this.f12932d);
                    }
                    intent.setPackage(str);
                    intent.setFlags(268435456);
                    try {
                        ShareActivity.this.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                    }
                }
                ShareActivity.this.finish();
            }
        }

        public C5249d() {
        }

        /* renamed from: a */
        public void call(List<PackageInfo> list) {
            if (list != null && list.size() > 0) {
                int size = list.size();
                int i = 0;
                for (int i2 = 0; i < 3 && i2 < size; i2++) {
                    PackageInfo packageInfo = list.get(i2);
                    i = i;
                    if (packageInfo != null) {
                        int a = C13895d.m3118a(packageInfo);
                        if (a > 0) {
                            ShareActivity.this.mAppButtons[i].setImageResource(a);
                        } else {
                            ShareActivity shareActivity = ShareActivity.this;
                            shareActivity.mAppButtons[i].setImageDrawable(packageInfo.applicationInfo.loadIcon(shareActivity.getPackageManager()));
                        }
                        ShareActivity.this.mAppButtons[i].setTag(packageInfo.packageName);
                        ShareActivity.this.mAppButtons[i].setOnClickListener(new View$OnClickListenerC5250a());
                        ShareActivity.this.mAppButtons[i].setVisibility(0);
                        i++;
                    }
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ShareActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity$e.class */
    public class C5251e implements Action1<Throwable> {
        public C5251e(ShareActivity shareActivity) {
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ShareActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ShareActivity$f.class */
    public class CallableC5252f implements Callable<List<PackageInfo>> {
        public CallableC5252f() {
        }

        @Override // java.util.concurrent.Callable
        public List<PackageInfo> call() throws Exception {
            return C13895d.m3121a(ShareActivity.this, C14017g4.m2810n());
        }
    }

    /* renamed from: a */
    public static Intent m26035a(Context context, Uri uri) {
        Intent intent = new Intent(context, ShareActivity.class);
        if (uri != null) {
            if (uri.getQueryParameter("content_id") != null) {
                intent.putExtra("content_id", uri.getQueryParameter("content_id"));
            }
            if (uri.getQueryParameter("image_url") != null) {
                intent.putExtra("image_url", Uri.parse(uri.getQueryParameter("image_url")));
            }
            if (uri.getQueryParameter("image_link") != null) {
                intent.putExtra("image_link", Uri.parse(uri.getQueryParameter("image_link")));
            }
            if (uri.getQueryParameter("share_content") != null) {
                intent.putExtra("share_content", uri.getQueryParameter("share_content"));
            }
            if (uri.getQueryParameter("dialog_title") != null) {
                intent.putExtra("dialog_title", uri.getQueryParameter("dialog_title"));
            }
        }
        return intent;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().getDecorView().setBackgroundColor(0);
        getWindow().setLayout(-1, -1);
        setContentView(R$layout.share_activity);
        ButterKnife.bind(this);
        if (getIntent() != null) {
            this.f12929a = getIntent().getStringExtra("content_id");
            this.f12932d = getIntent().getStringExtra("share_content");
            this.f12930b = (Uri) getIntent().getParcelableExtra("image_url");
            this.f12931c = (Uri) getIntent().getParcelableExtra("image_link");
            this.f12933e = getIntent().getStringExtra("dialog_title");
        }
        Uri uri = this.f12930b;
        if (uri != null) {
            C13659c.m3725a(this, this.mReferralImage, uri.toString(), this.mLoadingView);
        }
        Uri uri2 = this.f12931c;
        if (uri2 != null && !uri2.equals(Uri.EMPTY)) {
            this.mReferralImage.setOnClickListener(new View$OnClickListenerC5246a());
        }
        if (!TextUtils.isEmpty(this.f12933e)) {
            C13659c.m3723a(this, this.mShareTitle, this.f12933e);
        }
        this.mAppButtonMore.setOnClickListener(new View$OnClickListenerC5247b());
        this.mCloseButton.setOnClickListener(new View$OnClickListenerC5248c());
        Observable.fromCallable(new CallableC5252f()).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5249d(), new C5251e(this));
    }
}
