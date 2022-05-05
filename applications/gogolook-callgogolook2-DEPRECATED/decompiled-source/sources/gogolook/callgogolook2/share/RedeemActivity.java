package gogolook.callgogolook2.share;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.share.RedeemActivity;
import kotlinx.coroutines.CoroutineScopeKt;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p513i.AbstractC12404c;
import p459j.p460a.p565s0.C13611b;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14085m4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity.class */
public class RedeemActivity extends WhoscallActivity {

    /* renamed from: e */
    public Context f12908e;

    /* renamed from: f */
    public View.OnClickListener f12909f = new View$OnClickListenerC5231a();
    @BindView(R$id.v_divider)
    public View mDivider;
    @BindView(R$id.et_code)
    public EditText mEtCode;
    @BindView(R$id.iv_adfree_icon)
    public ImageView mIvAdfreeIcon;
    @BindView(R$id.iv_premium_db_icon)
    public ImageView mIvPremiumDbIcon;
    @BindView(R$id.ll_ad_free_status)
    public LinearLayout mLlAdFreeStatus;
    @BindView(R$id.ll_premium_db)
    public LinearLayout mLlPremiumDb;
    @BindView(R$id.sv_root)
    public ScrollView mSvRoot;
    @BindView(R$id.tv_adfree_remaining_days)
    public TextView mTvAdfreeRemainingDays;
    @BindView(R$id.tv_ok)
    public TextView mTvOk;
    @BindView(R$id.tv_premium_db_remaining_days)
    public TextView mTvPremiumDbRemainingDays;

    /* renamed from: gogolook.callgogolook2.share.RedeemActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity$a.class */
    public class View$OnClickListenerC5231a implements View.OnClickListener {
        public View$OnClickListenerC5231a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RedeemActivity redeemActivity = RedeemActivity.this;
            redeemActivity.startActivity(new Intent(redeemActivity.f12908e, ReferralActivity.class));
        }
    }

    /* renamed from: gogolook.callgogolook2.share.RedeemActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity$b.class */
    public class DialogInterface$OnClickListenerC5232b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5232b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            RedeemActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.RedeemActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity$c.class */
    public class C5233c implements TextWatcher {
        public C5233c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            int selectionEnd = RedeemActivity.this.mEtCode.getSelectionEnd();
            String obj = editable.toString();
            if (!obj.equals(obj.toUpperCase())) {
                RedeemActivity.this.mEtCode.setText(obj.toUpperCase());
            } else if (!obj.equals(obj.replace(" ", ""))) {
                EditText editText = RedeemActivity.this.mEtCode;
                editText.setText(editText.getText().toString().replace(" ", ""));
            }
            EditText editText2 = RedeemActivity.this.mEtCode;
            int i = selectionEnd;
            if (editText2.getText().length() < selectionEnd) {
                i = RedeemActivity.this.mEtCode.getText().length();
            }
            editText2.setSelection(i);
            RedeemActivity.this.mTvOk.setEnabled(editable.toString().length() >= 6);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: gogolook.callgogolook2.share.RedeemActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity$d.class */
    public class View$OnClickListenerC5234d implements View.OnClickListener {
        public View$OnClickListenerC5234d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RedeemActivity redeemActivity = RedeemActivity.this;
            redeemActivity.mSvRoot.scrollTo(0, redeemActivity.mTvOk.getBottom() + C14217x3.m2201a(10.0f));
        }
    }

    /* renamed from: gogolook.callgogolook2.share.RedeemActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity$e.class */
    public class C5235e implements C13611b.AbstractC13613b {
        public C5235e() {
        }

        @Override // p459j.p460a.p565s0.C13611b.AbstractC13613b
        public void onFailed() {
        }

        @Override // p459j.p460a.p565s0.C13611b.AbstractC13613b
        public void onSuccess() {
            RedeemActivity.this.m26051o();
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m26052a(boolean z) {
        if (z) {
            m26050p();
        }
    }

    /* renamed from: o */
    public final void m26051o() {
        C13760c.m3488c().m3490a(CoroutineScopeKt.MainScope(), new C13760c.AbstractC13762b() { // from class: j.a.s0.a
            @Override // p459j.p460a.p576w.p577n.C13760c.AbstractC13762b
            /* renamed from: a */
            public final void mo1469a(boolean z) {
                RedeemActivity.this.m26052a(z);
            }
        }, (AbstractC12402b<AbstractC12404c>) null);
    }

    @OnClick({R$id.tv_ok})
    public void onClick() {
        String obj = this.mEtCode.getText().toString();
        if (TextUtils.isEmpty(obj) || obj.length() != 6) {
            C14687h.m862a(this.f12908e, (int) R$string.redeem_wrong_code_length_toast, 1).m858c();
            return;
        }
        C14299q.m1770O0();
        C13611b.m3837a(this, 1, obj, new C5235e());
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f12908e = this;
        if (!C14137r4.m2369i()) {
            C14137r4.m2384a(this, C14376j.EnumC14379c.Redeem, null, null, false, true, new DialogInterface$OnClickListenerC5232b());
        }
        setContentView(R$layout.redeem_activity);
        ButterKnife.bind(this);
        m28680l();
        m28683i().m6030d(R$string.redeem_actionbar);
        C14299q.m1772N0();
        this.mTvOk.setEnabled(this.mEtCode.getText().length() >= 6);
        this.mEtCode.addTextChangedListener(new C5233c());
        this.mEtCode.setOnClickListener(new View$OnClickListenerC5234d());
        this.mLlAdFreeStatus.setOnClickListener(this.f12909f);
        this.mLlPremiumDb.setOnClickListener(this.f12909f);
        m26050p();
    }

    /* renamed from: p */
    public final void m26050p() {
        int s = C14063l4.m2646s();
        boolean b = C14085m4.m2603b();
        int i = 2131100166;
        int i2 = R$drawable.ic_gift_check;
        if (b) {
            this.mLlPremiumDb.setVisibility(0);
            this.mIvPremiumDbIcon.setImageResource(s > 3 ? R$drawable.ic_gift_check : R$drawable.ic_gift_exclamation);
            this.mTvPremiumDbRemainingDays.setText(C14021h2.m2779g() ? WhoscallActivity.m28686b(R$string.redeem_remaining_subscribed) : String.format(WhoscallActivity.m28686b(R$string.redeem_remaining_days), String.valueOf(s)));
            this.mTvPremiumDbRemainingDays.setTextColor(ContextCompat.getColor(this.f12908e, (s > 3 || C14021h2.m2779g()) ? 2131100161 : 2131100166));
        } else {
            this.mLlPremiumDb.setVisibility(8);
        }
        if (C14085m4.m2602c()) {
            int d = AdUtils.m28805d();
            ImageView imageView = this.mIvAdfreeIcon;
            if (d <= 3) {
                i2 = R$drawable.ic_gift_exclamation;
            }
            imageView.setImageResource(i2);
            this.mTvAdfreeRemainingDays.setText(C14021h2.m2779g() ? WhoscallActivity.m28686b(R$string.redeem_remaining_subscribed) : String.format(WhoscallActivity.m28686b(R$string.redeem_remaining_days), String.valueOf(d)));
            TextView textView = this.mTvAdfreeRemainingDays;
            Context context = this.f12908e;
            if (d > 3 || C14021h2.m2779g()) {
                i = 2131100161;
            }
            textView.setTextColor(ContextCompat.getColor(context, i));
            this.mLlAdFreeStatus.setVisibility(0);
        } else {
            this.mLlAdFreeStatus.setVisibility(8);
        }
        View view = this.mDivider;
        int i3 = 8;
        if (this.mLlAdFreeStatus.getVisibility() == 0) {
            i3 = 8;
            if (this.mLlPremiumDb.getVisibility() == 0) {
                i3 = 0;
            }
        }
        view.setVisibility(i3);
    }
}
