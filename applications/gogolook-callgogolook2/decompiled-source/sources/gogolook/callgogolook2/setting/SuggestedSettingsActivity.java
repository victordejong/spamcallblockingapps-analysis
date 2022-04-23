package gogolook.callgogolook2.setting;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.role.RoleManagerCompat;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.setting.SuggestedSettingsActivity;
import gogolook.callgogolook2.view.SuggestedSettingItemLayout;
import p459j.p460a.p463b0.p468u.C11396a;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.DialogC14618f;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity.class */
public class SuggestedSettingsActivity extends WhoscallActivity {

    /* renamed from: e */
    public int f12878e = -1;

    /* renamed from: f */
    public boolean f12879f = false;
    @BindView(R$id.ll_data_setting)
    public LinearLayout mLlDataSetting;
    @BindView(R$id.ll_default_caller_id_setting)
    public LinearLayout mLlDefaultCallerIdSetting;
    @BindView(R$id.ll_default_phone_setting)
    public LinearLayout mLlDefaultPhoneSetting;
    @BindView(R$id.ll_default_sms_setting)
    public LinearLayout mLlDefaultSmsSetting;
    @BindView(R$id.ll_location_permission_setting)
    public LinearLayout mLlLocationPermissionSetting;
    @BindView(R$id.ll_power_setting)
    public LinearLayout mLlPowerSetting;

    /* renamed from: gogolook.callgogolook2.setting.SuggestedSettingsActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity$a.class */
    public class View$OnClickListenerC5221a implements View.OnClickListener {
        public View$OnClickListenerC5221a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SuggestedSettingsActivity.this.f12878e >= 0) {
                C14289m.m1912a(SuggestedSettingsActivity.this.f12878e, 0, 0, SuggestedSettingsActivity.this.m26065o(), 0);
            }
            C13878a3.m3242a((Context) SuggestedSettingsActivity.this, 0);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SuggestedSettingsActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity$b.class */
    public class View$OnClickListenerC5222b implements View.OnClickListener {
        public View$OnClickListenerC5222b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SuggestedSettingsActivity.this.f12878e >= 0) {
                C14289m.m1912a(SuggestedSettingsActivity.this.f12878e, 0, 1, SuggestedSettingsActivity.this.m26065o(), 1);
            }
            C13878a3.m3211g(SuggestedSettingsActivity.this);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SuggestedSettingsActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity$c.class */
    public class View$OnClickListenerC5223c implements View.OnClickListener {
        public View$OnClickListenerC5223c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SuggestedSettingsActivity.this.f12878e >= 0) {
                C14289m.m1912a(SuggestedSettingsActivity.this.f12878e, 0, 0, SuggestedSettingsActivity.this.m26065o(), 3);
            }
            SuggestedSettingsActivity suggestedSettingsActivity = SuggestedSettingsActivity.this;
            suggestedSettingsActivity.f12879f = ActivityCompat.shouldShowRequestPermissionRationale(suggestedSettingsActivity, "android.permission.ACCESS_FINE_LOCATION");
            C13878a3.m3247a((Activity) SuggestedSettingsActivity.this, 55688);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SuggestedSettingsActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity$d.class */
    public class View$OnClickListenerC5224d implements View.OnClickListener {
        public View$OnClickListenerC5224d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SuggestedSettingsActivity.this.f12878e >= 0) {
                C14289m.m1912a(SuggestedSettingsActivity.this.f12878e, 0, 0, SuggestedSettingsActivity.this.m26065o(), 4);
            }
            C11396a.m9698a(1, 6, 1);
            SettingResultActivity.m26746b((Context) SuggestedSettingsActivity.this, RoleManagerCompat.ROLE_DIALER, (Integer) 6);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SuggestedSettingsActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity$e.class */
    public class View$OnClickListenerC5225e implements View.OnClickListener {
        public View$OnClickListenerC5225e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingResultActivity.m26746b((Context) SuggestedSettingsActivity.this, RoleManagerCompat.ROLE_SMS, (Integer) 1);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SuggestedSettingsActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SuggestedSettingsActivity$f.class */
    public class DialogInterface$OnClickListenerC5226f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5226f() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13878a3.m3248a((Activity) SuggestedSettingsActivity.this);
        }
    }

    /* renamed from: a */
    public static void m26073a(Context context, int i) {
        Intent intent = new Intent(context, SuggestedSettingsActivity.class);
        intent.putExtra("source", i);
        context.startActivity(intent);
    }

    /* renamed from: a */
    public static void m26072a(Context context, int i, Fragment fragment) {
        Intent intent = new Intent(context, SuggestedSettingsActivity.class);
        intent.putExtra("source", i);
        fragment.startActivityForResult(intent, 5566);
    }

    /* renamed from: b */
    public static void m26067b(Context context, int i) {
        Intent intent = new Intent(context, SuggestedSettingsActivity.class);
        intent.setFlags(335544320);
        intent.putExtra("source", i);
        context.startActivity(intent);
    }

    /* renamed from: a */
    public /* synthetic */ void m26071a(View view) {
        C11396a.m9698a(2, 6, 1);
        SettingResultActivity.m26746b((Context) this, RoleManagerCompat.ROLE_CALL_SCREENING, (Integer) 6);
    }

    /* renamed from: a */
    public final void m26070a(View view, boolean z) {
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: o */
    public final int m26065o() {
        return C14217x3.m2137h(this) ? C14217x3.m2123m(this) ? 1 : 0 : 2;
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f12878e = getIntent().getIntExtra("source", -1);
        C12484b i = m28683i();
        i.m6043a(true);
        i.m6032c(false);
        i.m6028d(true);
        i.m6038b(WhoscallActivity.m28686b(R$string.setting_calllog_title));
        setContentView(R$layout.suggested_settings_activity);
        ButterKnife.bind(this);
        new SuggestedSettingItemLayout(this.mLlPowerSetting).m25849a(R$string.setting_powersaver_title, R$string.setting_powersaver_content, R$string.setting_button_powersaver, new View$OnClickListenerC5221a());
        new SuggestedSettingItemLayout(this.mLlDataSetting).m25849a(R$string.setting_datasaver_title, R$string.setting_datasaver_content, R$string.setting_button_datasaver, new View$OnClickListenerC5222b());
        new SuggestedSettingItemLayout(this.mLlLocationPermissionSetting).m25849a(R$string.setting_location_title, R$string.setting_location_content, R$string.setting_button_location, new View$OnClickListenerC5223c());
        new SuggestedSettingItemLayout(this.mLlDefaultPhoneSetting).m25849a(R$string.permission_phone_default_app_title, CallUtils.m26565b() ? R$string.permission_phone_default_app_desc_v2 : R$string.permission_phone_default_app_desc, R$string.phone_default_setting_button, new View$OnClickListenerC5224d());
        new SuggestedSettingItemLayout(this.mLlDefaultSmsSetting).m25849a(R$string.permission_SMS_default_app_title, R$string.permission_sms_default_app_desc_block_sms, R$string.SMS_default_setting_button, new View$OnClickListenerC5225e());
        new SuggestedSettingItemLayout(this.mLlDefaultCallerIdSetting).m25849a(R$string.default_caller_id_app_suggesting_setting_title, R$string.default_caller_id_app_suggesting_setting_desc, R$string.default_caller_id_app_suggesting_setting_button, new View.OnClickListener() { // from class: j.a.r0.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SuggestedSettingsActivity.this.m26071a(view);
            }
        });
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (55688 != i) {
            return;
        }
        if (C13878a3.m3203o()) {
            C13915b3.m3055b("has_granted_location_permission_before", true);
        } else if (!this.f12879f && C13878a3.m3229b((Activity) this)) {
            DialogC14618f fVar = new DialogC14618f(this);
            fVar.m995c(R$string.call_confirm_later_toast);
            fVar.m999b(R$string.button_go_to_setting, new DialogInterface$OnClickListenerC5226f());
            fVar.m993d(R$string.cancel);
            fVar.show();
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m26064p();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        setResult(5566);
    }

    /* renamed from: p */
    public final void m26064p() {
        boolean A = C13878a3.m3261A();
        boolean y = C13878a3.m3193y();
        boolean z = true;
        boolean z2 = !C13878a3.m3203o();
        boolean n = CallUtils.m26530n();
        boolean n2 = C12810o.m5231n();
        boolean m = CallUtils.m26531m();
        m26070a(this.mLlPowerSetting, !A);
        m26070a(this.mLlDataSetting, y);
        m26070a(this.mLlLocationPermissionSetting, z2);
        m26070a(this.mLlDefaultPhoneSetting, n);
        m26070a(this.mLlDefaultSmsSetting, n2);
        m26070a(this.mLlDefaultCallerIdSetting, m);
        if (!A || y || n || z2 || n2 || m) {
            int i = this.f12878e;
            if (i >= 0) {
                if (!A) {
                    C14289m.m1912a(i, 0, 3, m26065o(), 0);
                }
                if (y) {
                    C14289m.m1912a(this.f12878e, 0, 3, m26065o(), 1);
                }
                if (z2) {
                    C14289m.m1912a(this.f12878e, 0, 3, m26065o(), 3);
                }
                if (n) {
                    C14289m.m1912a(this.f12878e, 0, 3, m26065o(), 4);
                }
            }
            if (A && !y && !n && !n2 && !m) {
                if (C13915b3.m3065a("suggested_setting_location_permission_start_countdown_date", 0L) > 0 || C13915b3.m3062a("has_granted_location_permission_before", false)) {
                    z = false;
                }
                if (z) {
                    C13915b3.m3057b("suggested_setting_location_permission_start_countdown_date", System.currentTimeMillis());
                    return;
                }
                return;
            }
            return;
        }
        finish();
    }
}
