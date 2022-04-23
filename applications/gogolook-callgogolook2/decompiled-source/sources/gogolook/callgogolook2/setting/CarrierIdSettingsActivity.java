package gogolook.callgogolook2.setting;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.role.RoleManagerCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.view.ToggleButton;
import p459j.p460a.p463b0.DialogC11125g;
import p459j.p460a.p463b0.p468u.C11396a;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p613z0.DialogC14618f;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity.class */
public class CarrierIdSettingsActivity extends WhoscallActivity {

    /* renamed from: e */
    public Button f12793e;

    /* renamed from: f */
    public ToggleButton f12794f;

    /* renamed from: g */
    public View f12795g;

    /* renamed from: h */
    public TextView f12796h;

    /* renamed from: i */
    public TextView f12797i;

    /* renamed from: j */
    public ToggleButton f12798j;

    /* renamed from: k */
    public View f12799k;

    /* renamed from: l */
    public TextView f12800l;

    /* renamed from: m */
    public TextView f12801m;
    @BindView(R$id.layout_carrier_hint)
    public View mCarrierHint;
    @BindView(R$id.txv_carrier_info_desc)
    public TextView mCarrierInfoDesc;
    @BindView(R$id.lnrlayout_carrier_info_setting)
    public View mCarrierInfoSetting;
    @BindView(R$id.lnrlayout_contact_us)
    public View mContactUs;
    @BindView(R$id.layout_default_phone_setting)
    public View mDefaultPhone;
    @BindView(R$id.imgv_hint)
    public ImageView mHint;
    @BindView(R$id.lnrlayout_show_when)
    public View mShowWhen;
    @BindView(R$id.txv_show_when_desc)
    public TextView mShowWhenDesc;
    @BindView(R$id.txv_show_when_title)
    public TextView mShowWhenTitle;
    @BindView(R$id.layout_sim_recommendation)
    public View mSimRecommendation;

    /* renamed from: n */
    public String f12802n;

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$a.class */
    public class View$OnClickListenerC5171a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f12803a;

        /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$a$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$a$a.class */
        public class C5172a implements DialogC11125g.AbstractC11127b {
            public C5172a() {
            }

            @Override // p459j.p460a.p463b0.DialogC11125g.AbstractC11127b
            /* renamed from: a */
            public void mo5752a(String str) {
                C14108o4.m2506a();
                C13915b3.m3044e("DDDSetting", str);
                CarrierIdSettingsActivity.this.mCarrierInfoDesc.setText(str);
            }
        }

        public View$OnClickListenerC5171a(boolean z) {
            this.f12803a = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14299q.m1715g(CarrierIdSettingsActivity.this.f12802n);
            if (this.f12803a) {
                CarrierIdSettingsActivity carrierIdSettingsActivity = CarrierIdSettingsActivity.this;
                carrierIdSettingsActivity.startActivity(DualSimDddSettingActivity.m26141a(carrierIdSettingsActivity, 1));
                return;
            }
            DialogC11125g gVar = new DialogC11125g(CarrierIdSettingsActivity.this);
            gVar.m10247a(new C5172a());
            gVar.show();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$b.class */
    public class View$OnClickListenerC5173b implements View.OnClickListener {
        public View$OnClickListenerC5173b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CarrierIdSettingsActivity.this.registerForContextMenu(view);
            CarrierIdSettingsActivity.this.openContextMenu(view);
            CarrierIdSettingsActivity.this.unregisterForContextMenu(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$c.class */
    public class View$OnClickListenerC5174c implements View.OnClickListener {
        public View$OnClickListenerC5174c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("with_extra_info", false);
            bundle.putString("title_postfix", "Whoscall - " + WhoscallActivity.m28686b(R$string.carrier_id_setting_contact_us));
            bundle.putInt("category_id", 9);
            C13884a4.m3187a(CarrierIdSettingsActivity.this, 3, bundle, (C13884a4.AbstractC13890d) null);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$d.class */
    public class View$OnClickListenerC5175d implements View.OnClickListener {
        public View$OnClickListenerC5175d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C11396a.m9698a(1, 8, 1);
            SettingResultActivity.m26746b((Context) CarrierIdSettingsActivity.this, RoleManagerCompat.ROLE_DIALER, (Integer) 8);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$e.class */
    public class View$OnClickListenerC5176e implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$e$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$e$a.class */
        public class View$OnClickListenerC5177a implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ Dialog f12810a;

            public View$OnClickListenerC5177a(View$OnClickListenerC5176e eVar, Dialog dialog) {
                this.f12810a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f12810a.dismiss();
            }
        }

        /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$e$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$e$b.class */
        public class DialogInterface$OnDismissListenerC5178b implements DialogInterface.OnDismissListener {

            /* renamed from: a */
            public final /* synthetic */ View f12811a;

            public DialogInterface$OnDismissListenerC5178b(View$OnClickListenerC5176e eVar, View view) {
                this.f12811a = view;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                this.f12811a.setOnClickListener(null);
            }
        }

        public View$OnClickListenerC5176e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14299q.m1730d(CarrierIdSettingsActivity.this.f12802n);
            Dialog dialog = new Dialog(CarrierIdSettingsActivity.this, 16973840);
            dialog.getWindow().requestFeature(1);
            dialog.setContentView(R$layout.dialog_carrier_id_hint);
            ((ImageView) dialog.findViewById(R$id.iv_hint)).setImageResource(R$drawable.call_confirm_hint_1btn);
            ((TextView) dialog.findViewById(R$id.tv_title)).setText(R$string.setting_carrier_id_demo_title);
            ((TextView) dialog.findViewById(R$id.tv_message)).setText(R$string.setting_carrier_id_demo_content);
            View findViewById = dialog.findViewById(R$id.imgv_close);
            findViewById.setOnClickListener(new View$OnClickListenerC5177a(this, dialog));
            dialog.setOnDismissListener(new DialogInterface$OnDismissListenerC5178b(this, findViewById));
            dialog.show();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$f.class */
    public class View$OnClickListenerC5179f implements View.OnClickListener {
        public View$OnClickListenerC5179f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C12612g0.m5778c() && C12612g0.m5757t()) {
                CarrierIdSettingsActivity.this.f12798j.m25829g();
            }
            CarrierIdSettingsActivity.this.f12794f.m25829g();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$g.class */
    public class C5180g implements ToggleButton.AbstractC5295f {
        public C5180g() {
        }

        @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
        /* renamed from: a */
        public void mo4082a(View view, boolean z) {
            if (z) {
                C14299q.m1720f(CarrierIdSettingsActivity.this.f12802n);
                C12612g0.m5798a();
                C12612g0.m5784b(6);
                C12612g0.m5783b(CarrierIdSettingsActivity.this);
                return;
            }
            C14299q.m1725e(CarrierIdSettingsActivity.this.f12802n);
            C12612g0.m5771f();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$h.class */
    public class View$OnClickListenerC5181h implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$h$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$h$a.class */
        public class View$OnClickListenerC5182a implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ Dialog f12815a;

            public View$OnClickListenerC5182a(View$OnClickListenerC5181h hVar, Dialog dialog) {
                this.f12815a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f12815a.dismiss();
            }
        }

        /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$h$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$h$b.class */
        public class DialogInterface$OnDismissListenerC5183b implements DialogInterface.OnDismissListener {

            /* renamed from: a */
            public final /* synthetic */ View f12816a;

            public DialogInterface$OnDismissListenerC5183b(View$OnClickListenerC5181h hVar, View view) {
                this.f12816a = view;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                this.f12816a.setOnClickListener(null);
            }
        }

        public View$OnClickListenerC5181h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14299q.m1710h(CarrierIdSettingsActivity.this.f12802n);
            Dialog dialog = new Dialog(CarrierIdSettingsActivity.this, 16973840);
            dialog.getWindow().requestFeature(1);
            dialog.setContentView(R$layout.dialog_carrier_id_hint);
            ((ImageView) dialog.findViewById(R$id.iv_hint)).setImageResource(R$drawable.call_confirm_hint_2btn);
            ((TextView) dialog.findViewById(R$id.tv_title)).setText(R$string.setting_sim_recommendation_demo_title);
            ((TextView) dialog.findViewById(R$id.tv_message)).setText(R$string.setting_sim_recommendation_demo_content);
            View findViewById = dialog.findViewById(R$id.imgv_close);
            findViewById.setOnClickListener(new View$OnClickListenerC5182a(this, dialog));
            dialog.setOnDismissListener(new DialogInterface$OnDismissListenerC5183b(this, findViewById));
            dialog.show();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$i.class */
    public class View$OnClickListenerC5184i implements View.OnClickListener {
        public View$OnClickListenerC5184i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C12612g0.m5765l()) {
                if (!C12612g0.m5778c() && !C12612g0.m5757t()) {
                    CarrierIdSettingsActivity.this.f12794f.m25829g();
                }
                CarrierIdSettingsActivity.this.f12798j.m25829g();
                return;
            }
            CarrierIdSettingsActivity carrierIdSettingsActivity = CarrierIdSettingsActivity.this;
            carrierIdSettingsActivity.startActivityForResult(DualSimDddSettingActivity.m26141a(carrierIdSettingsActivity, 6), 1000);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CarrierIdSettingsActivity$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CarrierIdSettingsActivity$j.class */
    public class C5185j implements ToggleButton.AbstractC5295f {
        public C5185j() {
        }

        @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
        /* renamed from: a */
        public void mo4082a(View view, boolean z) {
            if (z) {
                C14299q.m1703j(CarrierIdSettingsActivity.this.f12802n);
                C12612g0.m5785b();
                return;
            }
            C14299q.m1706i(CarrierIdSettingsActivity.this.f12802n);
            C12612g0.m5770g();
        }
    }

    /* renamed from: a */
    public static final Intent m26146a(Context context) {
        Intent intent = new Intent(context, CarrierIdSettingsActivity.class);
        intent.setFlags(335544320);
        return intent;
    }

    /* renamed from: a */
    public final void m26144a(boolean z) {
        boolean v = C12612g0.m5755v();
        this.f12793e = (Button) this.mDefaultPhone.findViewById(R$id.btn_set);
        this.mDefaultPhone.setVisibility(z ? 8 : 0);
        this.f12793e.setOnClickListener(!z ? new View$OnClickListenerC5175d() : null);
        m26142p();
        this.f12796h = (TextView) this.mCarrierHint.findViewById(R$id.tv_primary);
        this.f12796h.setText(R$string.setting_carrier_hint_title);
        this.f12797i = (TextView) this.mCarrierHint.findViewById(R$id.tv_secondary);
        this.f12797i.setText(R$string.setting_carrier_hint_content);
        ((ImageView) this.mCarrierHint.findViewById(R$id.iv_notify)).setImageResource(R$drawable.block_setting_moreinfo);
        this.mCarrierHint.findViewById(R$id.tv_notify).setVisibility(8);
        this.f12794f = (ToggleButton) this.mCarrierHint.findViewById(R$id.tb_enable);
        this.f12795g = this.mCarrierHint.findViewById(R$id.view_bg);
        this.f12795g.setOnClickListener(new View$OnClickListenerC5176e());
        if (C12612g0.m5778c()) {
            this.f12794f.m25833d();
        } else {
            this.f12794f.m25835c();
        }
        if (z) {
            this.f12794f.setEnabled(true);
            this.f12796h.setTextColor(getResources().getColor(2131099971));
            this.f12797i.setTextColor(getResources().getColor(2131099972));
            this.f12794f.setOnClickListener(new View$OnClickListenerC5179f());
            this.f12794f.m25839a(new C5180g());
        } else {
            this.f12794f.setEnabled(false);
            this.f12794f.setOnClickListener(null);
            this.f12796h.setTextColor(getResources().getColor(2131099970));
            this.f12797i.setTextColor(getResources().getColor(2131099970));
        }
        ((ImageView) this.mSimRecommendation.findViewById(R$id.iv_notify)).setImageResource(R$drawable.block_setting_moreinfo);
        this.f12799k = this.mSimRecommendation.findViewById(R$id.view_bg);
        this.f12799k.setOnClickListener(new View$OnClickListenerC5181h());
        this.mSimRecommendation.findViewById(R$id.tv_notify).setVisibility(8);
        this.f12800l = (TextView) this.mSimRecommendation.findViewById(R$id.tv_primary);
        this.f12800l.setText(R$string.setting_sim_recommendation_title);
        this.f12801m = (TextView) this.mSimRecommendation.findViewById(R$id.tv_secondary);
        this.f12798j = (ToggleButton) this.mSimRecommendation.findViewById(R$id.tb_enable);
        if (C12612g0.m5757t()) {
            this.f12798j.m25833d();
        } else {
            this.f12798j.m25835c();
        }
        if (!v || !z) {
            this.f12798j.setEnabled(false);
            this.f12798j.setOnClickListener(null);
            this.f12800l.setTextColor(getResources().getColor(2131099970));
            this.f12801m.setTextColor(getResources().getColor(2131099970));
            this.f12801m.setText(R$string.setting_sim_recommendation_not_supported);
        } else {
            this.f12798j.setEnabled(true);
            this.f12800l.setTextColor(getResources().getColor(2131099971));
            this.f12801m.setTextColor(getResources().getColor(2131099972));
            this.f12801m.setText(R$string.setting_sim_recommendation_content);
            this.f12798j.setOnClickListener(new View$OnClickListenerC5184i());
            this.f12798j.m25839a(new C5185j());
        }
        if (z) {
            this.mShowWhenTitle.setTextColor(getResources().getColor(2131099971));
            this.mShowWhenDesc.setTextColor(getResources().getColor(2131100088));
            this.mShowWhen.setOnClickListener(new View$OnClickListenerC5173b());
            return;
        }
        this.mShowWhenTitle.setTextColor(getResources().getColor(2131099970));
        this.mShowWhenDesc.setTextColor(getResources().getColor(2131099970));
    }

    /* renamed from: o */
    public final void m26143o() {
        boolean v = C12612g0.m5755v();
        this.mHint.setImageResource(v ? R$drawable.call_confirm_hint_2btn : R$drawable.call_confirm_hint_1btn);
        if (v) {
            this.mCarrierInfoDesc.setVisibility(8);
        } else {
            this.mCarrierInfoDesc.setText(C13915b3.m3056b("DDDSetting", ""));
            this.mCarrierInfoDesc.setVisibility(0);
        }
        this.mCarrierInfoSetting.setOnClickListener(new View$OnClickListenerC5171a(v));
        this.mContactUs.setOnClickListener(new View$OnClickListenerC5174c());
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (1000 != i) {
            super.onActivityResult(i, i2, intent);
        } else if (i2 == -1) {
            C12612g0.m5785b();
            this.f12794f.m25833d();
            this.f12798j.m25833d();
        } else {
            DialogC14618f fVar = new DialogC14618f(this);
            fVar.m995c(R$string.sim_recommendation_activation_failed_content);
            fVar.m991e(R$string.sim_recommendation_activation_failed_button);
            fVar.show();
        }
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        switch (itemId) {
            case R$id.menu_carrier_id_show_when_all /* 2131362834 */:
            case R$id.menu_carrier_id_show_when_contact_only /* 2131362835 */:
            case R$id.menu_carrier_id_show_when_stranger_only /* 2131362836 */:
                boolean z = true;
                C13915b3.m3055b("prefs_callconfirm_popup_dialog_stranger", itemId != 2131362835);
                if (itemId == 2131362836) {
                    z = false;
                }
                C13915b3.m3055b("prefs_callconfirm_popup_dialog_contact", z);
                m26142p();
                break;
        }
        return super.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.carrier_id_settings_activity);
        this.f12802n = C12612g0.m5755v() ? "dual" : "single";
        C14299q.m1691n(this.f12802n);
        C12484b i = m28683i();
        i.m6043a(true);
        i.m6032c(false);
        i.m6028d(true);
        i.m6038b(WhoscallActivity.m28686b(R$string.carrier_id_setting_page_title));
        ButterKnife.bind(this);
        m26143o();
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        MenuInflater menuInflater = getMenuInflater();
        if (view.getId() == 2131362757) {
            menuInflater.inflate(R$menu.context_carrier_id_show_when, contextMenu);
        }
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.f12793e.setOnClickListener(null);
        this.f12794f.setOnClickListener(null);
        this.f12794f.m25839a((ToggleButton.AbstractC5295f) null);
        this.f12795g.setOnClickListener(null);
        this.f12798j.setOnClickListener(null);
        this.f12798j.m25839a((ToggleButton.AbstractC5295f) null);
        this.f12799k.setOnClickListener(null);
        this.mShowWhen.setOnClickListener(null);
        super.onDestroy();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m26144a(!CallUtils.m26530n());
        C12612g0.m5783b(this);
    }

    /* renamed from: p */
    public final void m26142p() {
        if (this.mShowWhenDesc != null) {
            if (C13915b3.m3062a("prefs_callconfirm_popup_dialog_stranger", true) && !C13915b3.m3062a("prefs_callconfirm_popup_dialog_contact", true)) {
                this.mShowWhenDesc.setText(R$string.setting_carrier_id_show_when_strange_only);
                C14299q.m1694m(this.f12802n);
            } else if (C13915b3.m3062a("prefs_callconfirm_popup_dialog_stranger", true) || !C13915b3.m3062a("prefs_callconfirm_popup_dialog_contact", true)) {
                this.mShowWhenDesc.setText(R$string.setting_carrier_id_show_when_all);
                C14299q.m1700k(this.f12802n);
            } else {
                this.mShowWhenDesc.setText(R$string.setting_carrier_id_show_when_contact_only);
                C14299q.m1697l(this.f12802n);
            }
        }
    }
}
