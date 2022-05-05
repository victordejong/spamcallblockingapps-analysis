package com.tmobile.services.nameid.Settings;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.MetroProcessResponse;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import java.util.Date;
import javax.annotation.Nullable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/MetroPinActivity.class */
public class MetroPinActivity extends AppCompatActivity {

    /* renamed from: f */
    NameIDButton f12705f;

    /* renamed from: g */
    EditText f12706g;

    /* renamed from: h */
    TextView f12707h;

    /* renamed from: i */
    TextInputLayout f12708i;

    /* renamed from: j */
    TextView f12709j;

    /* renamed from: k */
    private boolean f12710k = false;

    /* renamed from: l */
    DialogFragment f12711l;

    /* renamed from: j */
    private void m7474j() {
        LogUtil.m5643d("MetroPinActivity#complete", "going back to My Activity page");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static /* synthetic */ void m7468p(LicenseResponseItem licenseResponseItem, Realm realm) {
        licenseResponseItem.setBillingSoc("nameid");
        licenseResponseItem.setPending(MetroApiWrapper.m6737J());
        licenseResponseItem.setPendingCheckError(false);
        licenseResponseItem.setLicenseState("active");
        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static /* synthetic */ void m7467q(LicenseResponseItem licenseResponseItem, Realm realm) {
        licenseResponseItem.setBillingSoc(null);
        licenseResponseItem.setPending(MetroApiWrapper.m6737J());
        licenseResponseItem.setPendingCheckError(false);
        licenseResponseItem.setLicenseState("inactive");
        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
    }

    /* renamed from: A */
    public void m7478A(String str) {
    }

    /* renamed from: B */
    public void m7477B(String str) {
        AnalyticsWrapper.m5883E("MetroPinActivity", "metro_subscribe_confirmed");
        Realm G0 = Realm.m3064G0();
        LicenseResponseItem copy = G0.m3053Q0(LicenseResponseItem.class).m2896f() > 0 ? ((LicenseResponseItem) G0.m3053Q0(LicenseResponseItem.class).m2916G()).copy() : null;
        if (copy == null || "".equals(PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"))) {
            LogUtil.m5643d("MetroPinActivity#subscribe", "No license in realm, likely due to no registration.");
            m7470n(false, "internal");
            return;
        }
        String[] l = m7472l(copy);
        LogUtil.m5643d("MetroPinActivity#subscribe", "action:" + l[0] + " soc:" + l[1]);
        MetroApiWrapper.m6738I(new Consumer() { // from class: com.tmobile.services.nameid.Settings.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MetroPinActivity.this.m7462v((MetroProcessResponse) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.Settings.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MetroPinActivity.this.m7461w((Throwable) obj);
            }
        }, str, l[0], l[1], getApplicationContext());
        G0.close();
    }

    /* renamed from: C */
    public boolean m7476C(String str) {
        if (!str.matches("^[0-9]{8}$")) {
            m7459y(true);
            return false;
        }
        m7459y(false);
        return true;
    }

    /* renamed from: i */
    public void m7475i() {
        try {
            Intent intent = new Intent("android.intent.action.DIAL");
            intent.setData(Uri.parse("tel:611"));
            intent.addFlags(268435456);
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            LogUtil.m5641f("MetroPinActivity#call611", "Could not find Activity to handle CALL.", e);
        }
    }

    /* renamed from: k */
    public void m7473k() {
        this.f12711l = WidgetUtils.m5245a0(getSupportFragmentManager(), C1517R.string.metro_process_pin_request, false);
        String obj = this.f12706g.getText().toString();
        if (!m7476C(obj)) {
            this.f12711l.dismiss();
            LogUtil.m5643d("MetroPinActivity#confirmButtonClicked", "Pin is not numeric or is not 8 digits");
            return;
        }
        m7477B(obj);
    }

    /* renamed from: l */
    public String[] m7472l(@Nullable LicenseResponseItem licenseResponseItem) {
        String str = "";
        if (licenseResponseItem == null) {
            m7470n(false, "");
            str = "";
        } else if (!m7469o()) {
            str = "cancel";
        } else if ("BLK".equalsIgnoreCase(licenseResponseItem.getBillingSoc())) {
            str = "upgrade";
        } else {
            str = "CALLMGR";
            str = "buy";
        }
        return new String[]{str, str};
    }

    /* renamed from: m */
    public int[] m7471m(boolean z, boolean z2, String str) {
        int i = C1517R.C1519drawable.ic_illustrations_check;
        int i2 = C1517R.string.general_close;
        int i3 = C1517R.string.pin_error_msg_gen;
        int i4 = C1517R.string.subscribe_error_title;
        if (z && m7469o()) {
            i4 = C1517R.string.subscribe_processing_title;
            i3 = C1517R.string.subscribe_success_msg;
            i = -1;
        } else if (z && z2) {
            i4 = C1517R.string.cancel_trial_confirmed_title;
            i3 = C1517R.string.cancel_trial_confirmed_message;
        } else if (z) {
            i4 = C1517R.string.unsubscribe_confirmed_title;
            i3 = C1517R.string.unsubscribe_confirmed_message;
        } else {
            if (str.equalsIgnoreCase("pin error")) {
                i3 = C1517R.string.pin_error_msg;
            } else if (str.equalsIgnoreCase("5th pin error")) {
                i3 = C1517R.string.fifth_pin_error_msg;
            } else {
                if (!str.equalsIgnoreCase("duplicate found") && !str.equalsIgnoreCase("already upgraded") && !str.equalsIgnoreCase("license active")) {
                    if (!m7469o()) {
                        i3 = C1517R.string.unsubscribe_error_message;
                    }
                    i = -1;
                    i2 = C1517R.string.general_ok;
                    i4 = C1517R.string.processing_error_title;
                } else {
                    i = -1;
                }
                return new int[]{i4, i3, i2, i};
            }
            i = -1;
            i2 = C1517R.string.general_ok;
            return new int[]{i4, i3, i2, i};
        }
        i2 = C1517R.string.general_got_it;
        return new int[]{i4, i3, i2, i};
    }

    /* renamed from: n */
    public void m7470n(boolean z, String str) {
        this.f12711l.dismiss();
        LogUtil.m5643d("MetroPinActivity#handleSubscribeResponse", "response: success?" + z + " error: " + str);
        if (z && m7469o()) {
            MainApplication.m7553C("in_app_purchase", new String[]{"soc", "result"}, new String[]{"paid", FirebaseAnalytics.Param.SUCCESS});
            try {
                Realm G0 = Realm.m3064G0();
                final LicenseResponseItem licenseResponseItem = (LicenseResponseItem) G0.m3053Q0(LicenseResponseItem.class).m2916G();
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.Settings.b
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        MetroPinActivity.m7468p(LicenseResponseItem.this, realm);
                    }
                });
                if (G0 != null) {
                    G0.close();
                }
            } catch (Exception e) {
                LogUtil.m5641f("MetroPinActivity#", "Error updating LicenseResponseItem:", e);
            }
        } else if (z) {
            MainApplication.m7553C("unsubscribe", new String[]{"result"}, new String[]{FirebaseAnalytics.Param.SUCCESS});
            try {
                Realm G02 = Realm.m3064G0();
                final LicenseResponseItem licenseResponseItem2 = (LicenseResponseItem) G02.m3053Q0(LicenseResponseItem.class).m2916G();
                G02.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.Settings.f
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        MetroPinActivity.m7467q(LicenseResponseItem.this, realm);
                    }
                });
                if (G02 != null) {
                    G02.close();
                }
            } catch (Exception e2) {
                LogUtil.m5641f("MetroPinActivity#", "Error updating LicenseResponseItem:", e2);
            }
        } else {
            String str2 = ("license active".equalsIgnoreCase(str) || "already upgraded".equalsIgnoreCase(str)) ? "not_eligible" : ("duplicate found".equalsIgnoreCase(str) || "no license soc".equalsIgnoreCase(str)) ? "SOC_failure" : "system_error";
            if (m7469o()) {
                MainApplication.m7553C("in_app_purchase", new String[]{"soc", "result", Constants.IPC_BUNDLE_KEY_SEND_ERROR}, new String[]{"paid", Constants.IPC_BUNDLE_KEY_SEND_ERROR, str2});
            } else {
                MainApplication.m7553C("unsubscribe", new String[]{"result", Constants.IPC_BUNDLE_KEY_SEND_ERROR}, new String[]{Constants.IPC_BUNDLE_KEY_SEND_ERROR, str2});
            }
        }
        int[] m = m7471m(z, SubscriptionHelper.m5308t(), str);
        NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
        nameIDDialogBuilder.m6159c(true, null);
        nameIDDialogBuilder.m6146p(m[0], new String[0]);
        nameIDDialogBuilder.m6154h(m[1], new String[0]);
        nameIDDialogBuilder.m6156f(m[2], new String[0]);
        nameIDDialogBuilder.m6157e(new Function0() { // from class: com.tmobile.services.nameid.Settings.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MetroPinActivity.this.m7466r();
            }
        });
        if (m[3] != -1) {
            nameIDDialogBuilder.m6155g(m[3]);
        }
        nameIDDialogBuilder.m6160b(getSupportFragmentManager());
    }

    /* renamed from: o */
    public boolean m7469o() {
        return this.f12710k;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        AnalyticsWrapper.m5883E("MetroPinActivity", "metro_subscribe_cancelled");
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1517R.layout.activity_metro_pin);
        this.f12705f = (NameIDButton) findViewById(C1517R.C1520id.metro_pin_confirm_button);
        this.f12706g = (EditText) findViewById(C1517R.C1520id.metro_pin_edit_text);
        this.f12707h = (TextView) findViewById(C1517R.C1520id.metro_pin_error_input);
        this.f12708i = (TextInputLayout) findViewById(C1517R.C1520id.input_layout_password);
        this.f12709j = (TextView) findViewById(C1517R.C1520id.pin_subtext);
        this.f12705f.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MetroPinActivity.this.m7465s(view);
            }
        });
        findViewById(C1517R.C1520id.metro_pin_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MetroPinActivity.this.m7464t(view);
            }
        });
        findViewById(C1517R.C1520id.metro_pin_call_metro).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MetroPinActivity.this.m7463u(view);
            }
        });
        m7460x(getIntent().getExtras().getBoolean("METRO_PIN_SCREEN_SUBSCRIBE_UNSUBSCRIBE"));
        m7478A(getIntent().getExtras().getString("METRO_PIN_SCREEN_STATE"));
        setSupportActionBar((Toolbar) findViewById(2131231756));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return;
        }
        if (m7469o()) {
            supportActionBar.mo22115A(getString(C1517R.string.general_subscribe));
            this.f12705f.setText(getString(C1517R.string.metro_confirm_pin));
            this.f12705f.setContentDescription(getString(C1517R.string.metro_confirm_pin));
            this.f12709j.setText(C1517R.string.metro_pin_sub_header_subscribe);
            this.f12709j.setContentDescription(getString(C1517R.string.metro_pin_sub_header_subscribe));
            return;
        }
        supportActionBar.mo22115A(getString(C1517R.string.general_unsubscribe));
        this.f12709j.setText(C1517R.string.metro_pin_sub_header_unsubscribe);
        this.f12709j.setContentDescription(getString(C1517R.string.metro_pin_sub_header_unsubscribe));
        this.f12705f.setText(getString(C1517R.string.metro_pin_downgrade_button));
        this.f12705f.setContentDescription(getString(C1517R.string.metro_pin_downgrade_button));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1517R.C1522menu.report_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131231029) {
            return super.onOptionsItemSelected(menuItem);
        }
        AnalyticsWrapper.m5883E("MetroPinActivity", "metro_subscribe_cancelled");
        finish();
        return true;
    }

    /* renamed from: r */
    public /* synthetic */ Unit m7466r() {
        m7474j();
        return Unit.f20447a;
    }

    /* renamed from: s */
    public /* synthetic */ void m7465s(View view) {
        m7473k();
    }

    /* renamed from: t */
    public /* synthetic */ void m7464t(View view) {
        m7474j();
    }

    /* renamed from: u */
    public /* synthetic */ void m7463u(View view) {
        m7475i();
    }

    /* renamed from: v */
    public /* synthetic */ void m7462v(final MetroProcessResponse metroProcessResponse) throws Exception {
        new Handler(MainApplication.m7528l().getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.Settings.MetroPinActivity.1
            @Override // java.lang.Runnable
            public void run() {
                MetroPinActivity.this.m7470n(metroProcessResponse.isSuccess(), metroProcessResponse.getError());
            }
        });
    }

    /* renamed from: w */
    public /* synthetic */ void m7461w(Throwable th) throws Exception {
        LogUtil.m5643d("MetroPinActivity#subscribe", "Error while attempting to subscribe. " + th.getMessage());
        new Handler(MainApplication.m7528l().getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.Settings.MetroPinActivity.2
            @Override // java.lang.Runnable
            public void run() {
                MetroPinActivity.this.m7470n(false, "internal");
            }
        });
    }

    /* renamed from: x */
    public void m7460x(boolean z) {
        this.f12710k = z;
    }

    /* renamed from: y */
    public void m7459y(boolean z) {
        TextInputLayout textInputLayout = this.f12708i;
        if (textInputLayout != null && this.f12707h != null) {
            if (z) {
                textInputLayout.setHintTextAppearance(C1517R.style.EnterPinErrorHintStyle);
                this.f12707h.setVisibility(0);
                return;
            }
            textInputLayout.setHintTextAppearance(C1517R.style.EnterPinHintStyle);
            this.f12707h.setVisibility(8);
        }
    }
}
