package gogolook.callgogolook2.intro.verify;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter;
import gogolook.callgogolook2.util.ProgressWheel;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p596x.p599m.p600b.AbstractC14436a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/SmsVerifyActivity.class */
public class SmsVerifyActivity extends WhoscallActivity implements AbstractC14436a.AbstractC14437a {

    /* renamed from: e */
    public Handler f10943e;
    @BindView(R$id.et_verify_code)
    public TextView mEtVerifyCode;
    @BindView(R$id.tv_back_hint)
    public TextView mTvBackHint;
    @BindView(R$id.tv_countdown)
    public TextView mTvCountdown;
    @BindView(R$id.tv_request_sms)
    public TextView mTvRequestSms;
    @BindView(R$id.tv_warning)
    public TextView mTvWarning;

    /* renamed from: f */
    public long f10944f = 0;

    /* renamed from: g */
    public long f10945g = 0;

    /* renamed from: h */
    public Dialog f10946h = null;

    /* renamed from: i */
    public Runnable f10947i = new RunnableC4544a();

    /* renamed from: j */
    public NumberVerifyPresenter f10948j = null;

    /* renamed from: k */
    public String f10949k = "";

    /* renamed from: l */
    public String f10950l = "";

    /* renamed from: m */
    public String f10951m = "";

    /* renamed from: n */
    public String f10952n = "";

    /* renamed from: gogolook.callgogolook2.intro.verify.SmsVerifyActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/SmsVerifyActivity$a.class */
    public class RunnableC4544a implements Runnable {
        public RunnableC4544a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            Object obj2;
            long currentTimeMillis = (System.currentTimeMillis() - SmsVerifyActivity.this.f10945g) / 1000;
            if (currentTimeMillis < 300) {
                int i = 300 - ((int) currentTimeMillis);
                int i2 = i % 60;
                int i3 = i / 60;
                TextView textView = SmsVerifyActivity.this.mTvCountdown;
                StringBuilder sb = new StringBuilder();
                if (i3 >= 10) {
                    obj = Integer.valueOf(i3);
                } else {
                    obj = "0" + i3;
                }
                sb.append(obj);
                sb.append(" : ");
                if (i2 >= 10) {
                    obj2 = Integer.valueOf(i2);
                } else {
                    obj2 = "0" + i2;
                }
                sb.append(obj2);
                textView.setText(sb.toString());
                SmsVerifyActivity.this.f10943e.postDelayed(this, 1000L);
                return;
            }
            SmsVerifyActivity.this.m27976r();
            SmsVerifyActivity.this.reset();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.SmsVerifyActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/SmsVerifyActivity$b.class */
    public class View$OnClickListenerC4545b implements View.OnClickListener {
        public View$OnClickListenerC4545b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SmsVerifyActivity.this.mEtVerifyCode.setText("");
            SmsVerifyActivity.this.mTvWarning.setText("");
            SmsVerifyActivity.this.m27985b(true);
            SmsVerifyActivity.this.f10948j.m27968a(false);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.SmsVerifyActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/SmsVerifyActivity$c.class */
    public class C4546c implements TextWatcher {
        public C4546c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SmsVerifyActivity.this.mTvWarning.setText("");
            if (editable.length() == 4) {
                SmsVerifyActivity.this.m27983c(editable.toString().trim());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.SmsVerifyActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/SmsVerifyActivity$d.class */
    public class DialogInterface$OnKeyListenerC4547d implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC4547d() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 1) {
                return false;
            }
            if (System.currentTimeMillis() - SmsVerifyActivity.this.f10944f > 1500) {
                C14687h.m862a(SmsVerifyActivity.this, (int) R$string.intro_verify_back_restart, 0).m858c();
                SmsVerifyActivity.this.f10944f = System.currentTimeMillis();
                return true;
            }
            SmsVerifyActivity.this.m27985b(false);
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.SmsVerifyActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/SmsVerifyActivity$e.class */
    public class DialogInterface$OnClickListenerC4548e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4548e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SmsVerifyActivity.this.m27977q();
            SmsVerifyActivity.this.f10948j.m27968a(false);
        }
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: a */
    public void mo1343a() {
        setResult(102);
        finish();
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: a */
    public void mo1342a(String str) {
        reset();
        DialogC14618f fVar = new DialogC14618f(this);
        fVar.m998b(String.format(getString(R$string.registration_login_check_content), str));
        fVar.m999b(R$string.registration_login_check_yes, new DialogInterface$OnClickListenerC4548e());
        fVar.m993d(R$string.registration_login_check_no);
        fVar.m990f(4);
        fVar.show();
    }

    /* renamed from: a */
    public void m27987a(boolean z) {
        C12484b i = m28683i();
        if (i == null) {
            return;
        }
        if (z) {
            i.m6043a(true);
            i.m6032c(false);
            i.m6028d(true);
            i.m6038b(WhoscallActivity.m28686b(R$string.verification_sms_title));
            return;
        }
        i.m6031d();
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: b */
    public void mo1341b() {
        m27985b(false);
        setResult(100);
        finish();
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: b */
    public void mo1340b(String str) {
        this.mEtVerifyCode.setText(str);
    }

    /* renamed from: b */
    public void m27985b(boolean z) {
        if (z) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
            ProgressWheel progressWheel = new ProgressWheel(this.f10650a);
            progressWheel.m26015a(C14217x3.m2201a(47.0f));
            progressWheel.setLayoutParams(layoutParams);
            progressWheel.m26008c();
            if (this.f10946h == null) {
                this.f10946h = new Dialog(this.f10650a);
                this.f10946h.requestWindowFeature(1);
                this.f10946h.setContentView(progressWheel);
                this.f10946h.setCancelable(false);
                this.f10946h.setCanceledOnTouchOutside(false);
                this.f10946h.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                this.f10946h.setOnKeyListener(new DialogInterface$OnKeyListenerC4547d());
            }
            this.f10946h.show();
            return;
        }
        C14217x3.m2194a(this.f10946h);
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: c */
    public void mo1339c() {
        reset();
        m27977q();
    }

    /* renamed from: c */
    public final void m27983c(String str) {
        m27985b(true);
        this.mEtVerifyCode.setEnabled(false);
        this.f10948j.m27954e(str);
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: d */
    public void mo1338d() {
        reset();
        this.mTvWarning.setText(R$string.verification_sms_hint_incorrect);
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: e */
    public void mo1337e() {
        setResult(101);
        finish();
    }

    /* renamed from: o */
    public final void m27979o() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (getCurrentFocus() == null) {
            inputMethodManager.hideSoftInputFromWindow(this.mEtVerifyCode.getWindowToken(), 0);
        } else {
            inputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 0);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(32);
        setContentView(R$layout.sms_verify_activity);
        ButterKnife.bind(this);
        this.f10951m = getIntent().getStringExtra("extra_country_code");
        this.f10949k = getIntent().getStringExtra("extra_number");
        this.f10950l = getIntent().getStringExtra("extra_old_number");
        this.f10952n = getIntent().getStringExtra("extra_country");
        this.f10948j = new NumberVerifyPresenter(this, this);
        this.f10948j.m27962c();
        this.f10948j.m27960c(this.f10949k);
        this.f10948j.m27957d(this.f10950l);
        this.f10948j.m27964b(this.f10951m);
        this.f10948j.m27971a(this.f10952n);
        m27987a(true);
        this.f10943e = new Handler();
        m27978p();
        this.f10948j.m27951h();
        m27977q();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.f10948j.m27959d();
        m27985b(false);
        m27979o();
        super.onDestroy();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        return true;
    }

    /* renamed from: p */
    public final void m27978p() {
        reset();
        this.mTvRequestSms.setOnClickListener(new View$OnClickListenerC4545b());
        this.mEtVerifyCode.addTextChangedListener(new C4546c());
    }

    /* renamed from: q */
    public final void m27977q() {
        this.f10945g = C13915b3.m3065a("sms_last_request_time", 0L);
        this.mTvRequestSms.setEnabled(false);
        this.f10943e.removeCallbacks(this.f10947i);
        this.f10943e.post(this.f10947i);
    }

    /* renamed from: r */
    public final void m27976r() {
        this.f10943e.removeCallbacks(this.f10947i);
        this.mTvRequestSms.setEnabled(true);
        this.mTvCountdown.setText("");
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    public void reset() {
        m27979o();
        m27985b(false);
        this.mEtVerifyCode.setEnabled(true);
        this.mTvWarning.setText("");
    }
}
