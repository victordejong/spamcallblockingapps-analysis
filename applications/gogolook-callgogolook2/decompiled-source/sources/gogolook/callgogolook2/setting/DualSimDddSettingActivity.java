package gogolook.callgogolook2.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.setting.DualSimDddSettingActivity;
import p459j.p460a.p463b0.DialogC11121f;
import p459j.p460a.p463b0.DialogC11125g;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14320y3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p596x.C14376j;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity.class */
public class DualSimDddSettingActivity extends WhoscallActivity implements TextWatcher {

    /* renamed from: f */
    public int f12821f;

    /* renamed from: h */
    public View f12823h;

    /* renamed from: i */
    public DialogC11125g f12824i;

    /* renamed from: j */
    public View f12825j;

    /* renamed from: k */
    public DialogC11121f f12826k;
    @BindView(R$id.btn_done)
    public Button mDoneButton;
    @BindView(R$id.et_carrier_1)
    public EditText mEtCarrier1;
    @BindView(R$id.et_carrier_2)
    public EditText mEtCarrier2;
    @BindView(R$id.et_ddd_1)
    public EditText mEtDdd1;
    @BindView(R$id.et_ddd_2)
    public EditText mEtDdd2;
    @BindView(R$id.ll_outapp_desc)
    public View mOutappDesc;
    @BindView(R$id.tv_skip_ddd)
    public View mSkip;

    /* renamed from: e */
    public boolean f12820e = false;

    /* renamed from: g */
    public boolean f12822g = false;

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$a.class */
    public class View$OnClickListenerC5186a implements View.OnClickListener {
        public View$OnClickListenerC5186a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DualSimDddSettingActivity.this.m26125p();
            if (DualSimDddSettingActivity.this.f12821f == 3) {
                C12612g0.m5784b(DualSimDddSettingActivity.this.f12821f);
                C12612g0.m5798a();
                DualSimDddSettingActivity dualSimDddSettingActivity = DualSimDddSettingActivity.this;
                dualSimDddSettingActivity.startActivity(CarrierIdSettingsActivity.m26146a(dualSimDddSettingActivity.f10650a));
            } else if (DualSimDddSettingActivity.this.f12820e) {
                Intent intent = new Intent(DualSimDddSettingActivity.this.f10650a, MainActivity.class);
                intent.setFlags(335544320);
                DualSimDddSettingActivity.this.startActivity(intent);
            }
            DualSimDddSettingActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$b.class */
    public class C5187b implements DialogC11125g.AbstractC11127b {

        /* renamed from: a */
        public final /* synthetic */ View f12828a;

        public C5187b(DualSimDddSettingActivity dualSimDddSettingActivity, View view) {
            this.f12828a = view;
        }

        @Override // p459j.p460a.p463b0.DialogC11125g.AbstractC11127b
        /* renamed from: a */
        public void mo5752a(String str) {
            ((EditText) this.f12828a).setText(str);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$c.class */
    public class C5188c implements DialogC11121f.AbstractC11124c {

        /* renamed from: a */
        public final /* synthetic */ View f12829a;

        public C5188c(DualSimDddSettingActivity dualSimDddSettingActivity, View view) {
            this.f12829a = view;
        }

        @Override // p459j.p460a.p463b0.DialogC11121f.AbstractC11124c
        /* renamed from: a */
        public void mo10248a(String str) {
            ((EditText) this.f12829a).setText(str);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$d.class */
    public class View$OnFocusChangeListenerC5189d implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC5189d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                DualSimDddSettingActivity.this.m26136b(view);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$e.class */
    public class View$OnClickListenerC5190e implements View.OnClickListener {
        public View$OnClickListenerC5190e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DualSimDddSettingActivity.this.m26136b(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$f.class */
    public class View$OnFocusChangeListenerC5191f implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC5191f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                DualSimDddSettingActivity.this.m26140a(view);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$g.class */
    public class View$OnClickListenerC5192g implements View.OnClickListener {
        public View$OnClickListenerC5192g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DualSimDddSettingActivity.this.m26140a(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$h.class */
    public class View$OnFocusChangeListenerC5193h implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC5193h() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                DualSimDddSettingActivity.this.m26136b(view);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$i.class */
    public class View$OnClickListenerC5194i implements View.OnClickListener {
        public View$OnClickListenerC5194i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DualSimDddSettingActivity.this.m26136b(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$j.class */
    public class View$OnFocusChangeListenerC5195j implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC5195j() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                DualSimDddSettingActivity.this.m26140a(view);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$k.class */
    public class View$OnClickListenerC5196k implements View.OnClickListener {
        public View$OnClickListenerC5196k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DualSimDddSettingActivity.this.m26140a(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.DualSimDddSettingActivity$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/DualSimDddSettingActivity$l.class */
    public class View$OnClickListenerC5197l implements View.OnClickListener {
        public View$OnClickListenerC5197l() {
        }

        /* renamed from: a */
        public /* synthetic */ C14989s m26121a(C11507b.C11508a aVar) {
            aVar.m9448a("DDDSetting", DualSimDddSettingActivity.this.mEtDdd1.getText().toString());
            aVar.m9448a("DDDSetting1", DualSimDddSettingActivity.this.mEtDdd2.getText().toString());
            aVar.m9448a("DDDCarrierName", DualSimDddSettingActivity.this.mEtCarrier1.getText().toString());
            aVar.m9448a("DDDCarrierName1", DualSimDddSettingActivity.this.mEtCarrier2.getText().toString());
            aVar.m9447a("HasInputDualSimDDD", true);
            return null;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C13978e.f31386a.m9457a(new AbstractC15118l() { // from class: j.a.r0.a
                @Override // p626l.p641z.p642c.AbstractC15118l
                public final Object invoke(Object obj) {
                    return DualSimDddSettingActivity.View$OnClickListenerC5197l.this.m26121a((C11507b.C11508a) obj);
                }
            });
            if (DualSimDddSettingActivity.this.f12821f == 2 || DualSimDddSettingActivity.this.f12821f == 3 || DualSimDddSettingActivity.this.f12821f == 4) {
                if (C12612g0.m5765l()) {
                    C12612g0.m5785b();
                } else {
                    C12612g0.m5798a();
                }
                C12612g0.m5784b(DualSimDddSettingActivity.this.f12821f);
            }
            DualSimDddSettingActivity dualSimDddSettingActivity = DualSimDddSettingActivity.this;
            dualSimDddSettingActivity.f12822g = dualSimDddSettingActivity.f12821f == 6 && C12612g0.m5765l();
            DualSimDddSettingActivity.this.m26126o();
            if (DualSimDddSettingActivity.this.f12821f == 2 || DualSimDddSettingActivity.this.f12821f == 3 || DualSimDddSettingActivity.this.f12821f == 4) {
                DualSimDddSettingActivity dualSimDddSettingActivity2 = DualSimDddSettingActivity.this;
                dualSimDddSettingActivity2.startActivity(CarrierIdSettingsActivity.m26146a(dualSimDddSettingActivity2.f10650a));
            } else if (5 == DualSimDddSettingActivity.this.f12821f) {
                Intent intent = new Intent(DualSimDddSettingActivity.this.f10650a, MainActivity.class);
                intent.setFlags(335544320);
                DualSimDddSettingActivity.this.startActivity(intent);
            } else if (7 == DualSimDddSettingActivity.this.f12821f) {
                C14376j.m1453b(DualSimDddSettingActivity.this.f10650a, false);
            }
            DualSimDddSettingActivity.this.finish();
        }
    }

    /* renamed from: a */
    public static final Intent m26141a(Context context, int i) {
        Intent intent = new Intent(context, DualSimDddSettingActivity.class);
        if (i != 6) {
            intent.setFlags(335544320);
        }
        intent.putExtra("open_reason", i);
        return intent;
    }

    /* renamed from: a */
    public final void m26140a(View view) {
        synchronized (this) {
            if (this.f12825j == null) {
                this.f12825j = this.mEtCarrier1;
                return;
            }
            if (!(view == this.f12825j || this.f12826k == null || !this.f12826k.isShowing())) {
                this.f12826k.dismiss();
                this.f12826k = null;
            }
            this.f12825j = view;
            if (this.f12825j != null && ((this.f12825j == this.mEtCarrier1 || this.f12825j == this.mEtCarrier2) && (this.f12826k == null || !this.f12826k.isShowing()))) {
                this.f12826k = new DialogC11121f(this);
                this.f12826k.setCanceledOnTouchOutside(false);
                this.f12826k.setTitle(this.f12825j == this.mEtCarrier1 ? R$string.call_confirm_SIM1_carrier : R$string.call_confirm_SIM2_carrier);
                this.f12826k.m942a((String) null);
                this.f12826k.m10253a(new C5188c(this, view));
                this.f12826k.show();
            }
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.mDoneButton.setEnabled((!TextUtils.isEmpty(this.mEtDdd1.getText().toString()) && !TextUtils.isEmpty(this.mEtCarrier1.getText().toString())) || (!TextUtils.isEmpty(this.mEtDdd2.getText().toString()) && !TextUtils.isEmpty(this.mEtCarrier2.getText().toString())));
    }

    /* renamed from: b */
    public final void m26136b(View view) {
        synchronized (this) {
            if (!(view == this.f12823h || this.f12824i == null || !this.f12824i.isShowing())) {
                this.f12824i.dismiss();
                this.f12824i = null;
            }
            this.f12823h = view;
            if (this.f12823h != null && ((this.f12823h == this.mEtDdd1 || this.f12823h == this.mEtDdd2) && (this.f12824i == null || !this.f12824i.isShowing()))) {
                this.f12824i = new DialogC11125g(this);
                this.f12824i.setCanceledOnTouchOutside(false);
                this.f12824i.setTitle(this.f12823h == this.mEtDdd1 ? R$string.call_confirm_SIM1_DDD : R$string.call_confirm_SIM2_DDD);
                this.f12824i.m10247a(new C5187b(this, view));
                this.f12824i.show();
            }
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.f12821f == 6) {
            setResult(this.f12822g ? -1 : 0);
        }
        if (this.f12821f == 2 && C12612g0.m5755v() && !C12612g0.m5764m() && !C12612g0.m5763n()) {
            C12612g0.m5784b(this.f12821f);
            C12612g0.m5798a();
            startActivity(CarrierIdSettingsActivity.m26146a(this.f10650a));
        }
        super.finish();
    }

    /* renamed from: o */
    public final void m26126o() {
        int i = this.f12821f;
        if (i == 4) {
            C14299q.m1687o0();
            EditText editText = this.mEtDdd1;
            if (editText != null && !TextUtils.isEmpty(editText.getText().toString())) {
                C14299q.m1699k0();
            }
            EditText editText2 = this.mEtDdd2;
            if (editText2 != null && !TextUtils.isEmpty(editText2.getText().toString())) {
                C14299q.m1693m0();
            }
            EditText editText3 = this.mEtCarrier1;
            if (editText3 != null && !TextUtils.isEmpty(editText3.getText().toString())) {
                C14299q.m1696l0();
            }
            EditText editText4 = this.mEtCarrier2;
            if (editText4 != null && !TextUtils.isEmpty(editText4.getText().toString())) {
                C14299q.m1690n0();
            }
        } else if (i == 5) {
            C14299q.m1709h0();
            EditText editText5 = this.mEtDdd1;
            if (editText5 != null && !TextUtils.isEmpty(editText5.getText().toString())) {
                C14299q.m1728d0();
            }
            EditText editText6 = this.mEtDdd2;
            if (editText6 != null && !TextUtils.isEmpty(editText6.getText().toString())) {
                C14299q.m1718f0();
            }
            EditText editText7 = this.mEtCarrier1;
            if (editText7 != null && !TextUtils.isEmpty(editText7.getText().toString())) {
                C14299q.m1723e0();
            }
            EditText editText8 = this.mEtCarrier2;
            if (editText8 != null && !TextUtils.isEmpty(editText8.getText().toString())) {
                C14299q.m1713g0();
            }
        } else if (i == 2) {
            C14299q.m1753X();
            EditText editText9 = this.mEtDdd1;
            if (editText9 != null && !TextUtils.isEmpty(editText9.getText().toString())) {
                C14299q.m1761T();
            }
            EditText editText10 = this.mEtDdd2;
            if (editText10 != null && !TextUtils.isEmpty(editText10.getText().toString())) {
                C14299q.m1757V();
            }
            EditText editText11 = this.mEtCarrier1;
            if (editText11 != null && !TextUtils.isEmpty(editText11.getText().toString())) {
                C14299q.m1759U();
            }
            EditText editText12 = this.mEtCarrier2;
            if (editText12 != null && !TextUtils.isEmpty(editText12.getText().toString())) {
                C14299q.m1755W();
            }
        } else if (i == 1) {
            C14299q.m1790E0();
            EditText editText13 = this.mEtDdd1;
            if (editText13 != null && !TextUtils.isEmpty(editText13.getText().toString())) {
                C14299q.m1802A0();
            }
            EditText editText14 = this.mEtDdd2;
            if (editText14 != null && !TextUtils.isEmpty(editText14.getText().toString())) {
                C14299q.m1796C0();
            }
            EditText editText15 = this.mEtCarrier1;
            if (editText15 != null && !TextUtils.isEmpty(editText15.getText().toString())) {
                C14299q.m1799B0();
            }
            EditText editText16 = this.mEtCarrier2;
            if (editText16 != null && !TextUtils.isEmpty(editText16.getText().toString())) {
                C14299q.m1793D0();
            }
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null) {
            this.f12821f = getIntent().getIntExtra("open_reason", 0);
        }
        int i = this.f12821f;
        this.f12820e = i == 3 || i == 4 || i == 5;
        if (this.f12820e) {
            m28683i().m6031d();
        } else {
            m28683i().m6043a(true);
            m28683i().m6030d(R$string.setting_carrier_ddd);
        }
        setContentView(R$layout.dual_sim_ddd_setting_activity);
        ButterKnife.bind(this);
        int i2 = 8;
        this.mOutappDesc.setVisibility(this.f12820e ? 0 : 8);
        this.mEtDdd1.setText(C13915b3.m3056b("DDDSetting", (String) null));
        this.mEtCarrier1.setText(C13915b3.m3056b("DDDCarrierName", (String) null));
        this.mEtDdd2.setText(C13915b3.m3056b("DDDSetting1", (String) null));
        this.mEtCarrier2.setText(C13915b3.m3056b("DDDCarrierName1", (String) null));
        View view = this.mSkip;
        if (this.f12821f != 5) {
            i2 = 0;
        }
        view.setVisibility(i2);
        m26123r();
        afterTextChanged(null);
        boolean z = false;
        if (C14320y3.m1585k()) {
            z = false;
            if (C14217x3.m2207A()) {
                z = true;
            }
        }
        if (!z) {
            C13915b3.m3055b("HasInputDualSimDDD", true);
        }
        m26124q();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m26122s();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* renamed from: p */
    public final void m26125p() {
        int i = this.f12821f;
        if (i == 4) {
            C14299q.m1684p0();
        } else if (i == 5) {
            C14299q.m1705i0();
        }
    }

    /* renamed from: q */
    public final void m26124q() {
        int i = this.f12821f;
        if (i == 4) {
            C14299q.m1681q0();
        } else if (i == 5) {
            C14299q.m1702j0();
        } else if (i == 2) {
            C14299q.m1751Y();
        } else if (i == 1) {
            C14299q.m1788F0();
        }
    }

    /* renamed from: r */
    public final void m26123r() {
        this.mEtDdd1.setOnFocusChangeListener(new View$OnFocusChangeListenerC5189d());
        this.mEtDdd1.setOnClickListener(new View$OnClickListenerC5190e());
        this.mEtDdd1.addTextChangedListener(this);
        this.mEtCarrier1.setOnFocusChangeListener(new View$OnFocusChangeListenerC5191f());
        this.mEtCarrier1.setOnClickListener(new View$OnClickListenerC5192g());
        this.mEtCarrier1.addTextChangedListener(this);
        this.mEtDdd2.setOnFocusChangeListener(new View$OnFocusChangeListenerC5193h());
        this.mEtDdd2.setOnClickListener(new View$OnClickListenerC5194i());
        this.mEtDdd2.addTextChangedListener(this);
        this.mEtCarrier2.setOnFocusChangeListener(new View$OnFocusChangeListenerC5195j());
        this.mEtCarrier2.setOnClickListener(new View$OnClickListenerC5196k());
        this.mEtCarrier2.addTextChangedListener(this);
        this.mDoneButton.setOnClickListener(new View$OnClickListenerC5197l());
        this.mSkip.setOnClickListener(new View$OnClickListenerC5186a());
    }

    /* renamed from: s */
    public final void m26122s() {
        this.mEtDdd1.setOnClickListener(null);
        this.mEtDdd1.setOnFocusChangeListener(null);
        this.mEtDdd1.removeTextChangedListener(this);
        this.mEtDdd2.setOnClickListener(null);
        this.mEtDdd2.setOnFocusChangeListener(null);
        this.mEtDdd2.removeTextChangedListener(this);
        this.mEtCarrier1.setOnClickListener(null);
        this.mEtCarrier1.setOnFocusChangeListener(null);
        this.mEtCarrier1.removeTextChangedListener(this);
        this.mEtCarrier2.setOnClickListener(null);
        this.mEtCarrier2.setOnFocusChangeListener(null);
        this.mEtCarrier2.removeTextChangedListener(this);
        this.mDoneButton.setOnClickListener(null);
        this.mSkip.setOnClickListener(null);
    }
}
