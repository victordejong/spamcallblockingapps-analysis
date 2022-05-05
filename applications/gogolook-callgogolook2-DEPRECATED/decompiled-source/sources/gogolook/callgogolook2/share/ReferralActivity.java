package gogolook.callgogolook2.share;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.BindViews;
import butterknife.ButterKnife;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import java.util.List;
import java.util.concurrent.Callable;
import p459j.p460a.p565s0.C13611b;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14085m4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13895d;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Observable;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity.class */
public class ReferralActivity extends WhoscallActivity {

    /* renamed from: e */
    public C13611b.AbstractC13612a f12918e = new C5237a();
    @BindViews({R$id.iv_share_app_0, R$id.iv_share_app_1, R$id.iv_share_app_2})
    public ImageView[] mAppButtons;
    @BindView(R$id.iv_share_app_more)
    public ImageView mIvShareAppMore;
    @BindView(R$id.ll_share_app)
    public View mShareApps;
    @BindView(R$id.tv_more)
    public TextView mTvMore;
    @BindView(R$id.tv_referral_explain)
    public TextView mTvReferralExplain;
    @BindView(R$id.tv_share_via)
    public TextView mTvShareVia;
    @BindView(R$id.tv_referral_code)
    public TextView tvReferralCode;

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$a.class */
    public class C5237a implements C13611b.AbstractC13612a {
        public C5237a() {
        }

        @Override // p459j.p460a.p565s0.C13611b.AbstractC13612a
        /* renamed from: a */
        public void mo3834a() {
            ReferralActivity.this.m26040o();
            ReferralActivity.this.m26038q();
            ReferralActivity referralActivity = ReferralActivity.this;
            C14687h.m861a(referralActivity, referralActivity.getString(R$string.error_code_server_fail), 0).m858c();
        }

        @Override // p459j.p460a.p565s0.C13611b.AbstractC13612a
        /* renamed from: a */
        public void mo3833a(String str) {
            ReferralActivity.this.m26045c(str);
            ReferralActivity.this.m26038q();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$b.class */
    public class DialogInterface$OnClickListenerC5238b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5238b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ReferralActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$c.class */
    public class View$OnClickListenerC5239c implements View.OnClickListener {
        public View$OnClickListenerC5239c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ReferralActivity.this.tvReferralCode.getText().length() > 0) {
                ((ClipboardManager) ReferralActivity.this.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("referral code", ReferralActivity.this.tvReferralCode.getText().toString()));
                Toast.makeText(ReferralActivity.this.f10650a, (int) R$string.referral_code_copied, 1).show();
                C14299q.m1768P0();
                return;
            }
            Toast.makeText(ReferralActivity.this.f10650a, (int) R$string.commit_waiting, 1).show();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$d.class */
    public class C5240d implements Action1<List<PackageInfo>> {

        /* renamed from: gogolook.callgogolook2.share.ReferralActivity$d$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$d$a.class */
        public class View$OnClickListenerC5241a implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ PackageInfo f12923a;

            public View$OnClickListenerC5241a(PackageInfo packageInfo) {
                this.f12923a = packageInfo;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", ReferralActivity.this.m26039p());
                intent.setPackage(this.f12923a.packageName);
                intent.setFlags(268435456);
                try {
                    ReferralActivity.this.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                }
                ReferralActivity.this.finish();
                C14299q.m1800B("sns" + view.getTag());
            }
        }

        public C5240d() {
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
                        i = i;
                        if (!TextUtils.isEmpty(packageInfo.packageName)) {
                            int a = C13895d.m3118a(packageInfo);
                            if (a > 0) {
                                ReferralActivity.this.mAppButtons[i].setImageResource(a);
                            } else {
                                ReferralActivity referralActivity = ReferralActivity.this;
                                referralActivity.mAppButtons[i].setImageDrawable(packageInfo.applicationInfo.loadIcon(referralActivity.getPackageManager()));
                            }
                            ReferralActivity.this.mAppButtons[i].setTag(Integer.valueOf(i));
                            ReferralActivity.this.mAppButtons[i].setOnClickListener(new View$OnClickListenerC5241a(packageInfo));
                            ReferralActivity.this.mAppButtons[i].setVisibility(0);
                            i++;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$e.class */
    public class C5242e implements Action1<Throwable> {
        public C5242e(ReferralActivity referralActivity) {
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$f.class */
    public class CallableC5243f implements Callable<List<PackageInfo>> {
        public CallableC5243f() {
        }

        @Override // java.util.concurrent.Callable
        public List<PackageInfo> call() throws Exception {
            return C13895d.m3121a(ReferralActivity.this, C14017g4.m2810n());
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$g.class */
    public class View$OnClickListenerC5244g implements View.OnClickListener {
        public View$OnClickListenerC5244g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                C14299q.m1800B("other");
                C13895d.m3113b(ReferralActivity.this.f10650a, ReferralActivity.this.m26039p());
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.share.ReferralActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/ReferralActivity$h.class */
    public class View$OnClickListenerC5245h implements View.OnClickListener {
        public View$OnClickListenerC5245h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14618f fVar = new DialogC14618f(ReferralActivity.this.f10650a);
            fVar.setTitle(R$string.referral_detail_title);
            fVar.m1008a(C14085m4.m2605a() ? R$string.referral_detail_content_type2 : R$string.referral_detail_content);
            fVar.m991e(R$string.close);
            fVar.show();
            C14299q.m1764R0();
        }
    }

    /* renamed from: c */
    public final void m26045c(String str) {
        this.tvReferralCode.setTextColor(getResources().getColor(2131100157));
        this.tvReferralCode.setTextSize(24.0f);
        this.tvReferralCode.setText(str);
    }

    /* renamed from: o */
    public final void m26040o() {
        this.tvReferralCode.setTextColor(getResources().getColor(2131100117));
        this.tvReferralCode.setTextSize(14.0f);
        this.tvReferralCode.setText(getString(R$string.calldialog_server_busy));
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f10650a = this;
        setContentView(R$layout.referral_activity);
        ButterKnife.bind(this);
        m28680l();
        m28683i().m6030d(R$string.referral_actionbar);
        C14299q.m1766Q0();
        C14063l4.m2687a(this, getIntent());
        if (!C14137r4.m2369i()) {
            C14137r4.m2384a(this, C14376j.EnumC14379c.Referral, null, null, false, true, new DialogInterface$OnClickListenerC5238b());
        } else if (!C14217x3.m2137h(this)) {
            this.mShareApps.setVisibility(8);
            this.mTvShareVia.setVisibility(8);
            m26040o();
            C14687h.m861a(this, getString(R$string.error_code_nointernet), 0).m858c();
        } else {
            this.mShareApps.setVisibility(0);
            this.mTvShareVia.setVisibility(0);
            C13611b.m3838a(MyApplication.m29013o(), 1, this.f12918e);
            if (!TextUtils.isEmpty(C13915b3.m3056b("referral_code", ""))) {
                m26045c(C13915b3.m3056b("referral_code", ""));
            }
            this.tvReferralCode.setOnClickListener(new View$OnClickListenerC5239c());
            Observable.fromCallable(new CallableC5243f()).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C5240d(), new C5242e(this));
            this.mIvShareAppMore.setOnClickListener(new View$OnClickListenerC5244g());
        }
        this.mTvMore.setOnClickListener(new View$OnClickListenerC5245h());
        m26038q();
    }

    /* renamed from: p */
    public final String m26039p() {
        return String.format(getString(C14085m4.m2605a() ? R$string.referral_share_content_type2 : R$string.referral_share_content), C13915b3.m3056b("referral_code", ""));
    }

    /* renamed from: q */
    public final void m26038q() {
        this.mTvReferralExplain.setText(C14085m4.m2605a() ? R$string.referral_share_info_type2 : R$string.referral_share_info);
    }
}
