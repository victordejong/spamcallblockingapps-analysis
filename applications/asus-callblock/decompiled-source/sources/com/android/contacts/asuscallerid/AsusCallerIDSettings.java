package com.android.contacts.asuscallerid;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.MultiSelectListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.SwitchPreference;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListView;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.dialpad.g;
import com.android.contacts.e.b;
import com.android.contacts.f.c;
import com.android.contacts.list.af;
import com.android.contacts.list.ay;
import com.android.contacts.list.bh;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.asus.updatesdk.BuildConfig;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallerIDSettings.class */
public class AsusCallerIDSettings extends PreferenceActivity implements Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener, CompoundButton.OnCheckedChangeListener, g.a, b.a, c.a, bh.b {
    private CheckBoxPreference A;
    private CheckBoxPreference B;
    private CharSequence[] C;
    private CharSequence[] D;
    private CharSequence[] E;
    private CharSequence[] F;
    private CharSequence[] G;
    private CharSequence[] H;
    private AlertDialog I;
    private CheckBox J;
    private Button K;
    private boolean L;
    private AboutCallGuardDialogPreference R;
    private CheckBoxPreference S;
    private ListView T;
    private af U;
    private bh V;
    private bh.c W;
    private b X;
    private c Y;
    private SwitchPreference o;
    private CheckBoxPreference p;
    private ListPreference q;
    private ListPreference r;
    private ListPreference s;
    private MultiSelectListPreference t;
    private Preference u;
    private PreferenceCategory v;
    private PreferenceCategory w;
    private PreferenceCategory x;
    private CheckBoxPreference y;
    private CheckBoxPreference z;

    /* renamed from: a  reason: collision with root package name */
    public final String f576a = "block_and_callerid_checking_setting";

    /* renamed from: b  reason: collision with root package name */
    public final String f577b = "callerid_checking_on_off";
    public final String c = "callerid_checking_fuction";
    public final String d = "display_callerid_checking";
    public final String e = "online_type";
    public final String f = "block_tagged_numbers";
    public final String g = "offline_data_config";
    public final String h = "block_spam_sms";
    public final String i = "callerid_check_setting_category";
    public final String j = "sms_block_setting_category";
    public final String k = "block_rule_setting_category";
    public final String l = "block_mode_stranger";
    private int M = 0;
    private boolean N = false;
    private int O = -1;
    private boolean P = false;
    private boolean Q = false;
    public final String m = "callerid_about_dialog";
    public PhoneStateListener n = null;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallerIDSettings$a.class */
    private final class a implements ay {
        a() {
        }

        @Override // com.android.contacts.list.ay
        public final void onAddAccountAction() {
        }

        @Override // com.android.contacts.list.ay
        public final void onCreateNewContactAction() {
        }

        @Override // com.android.contacts.list.ay
        public final void onImportContactsFromFileAction() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallerIDSettings$b.class */
    final class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        int f588a;
        private Context c;

        public b(Context context) {
            this.c = context;
            Log.d("AsusCallerIDSettings", "InitialAsusCallerIDSettingAyncTask");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            this.f588a = com.asus.a.a.b(this.c);
            AsusCallerIDSettings.a(AsusCallerIDSettings.this, this.c);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r5) {
            AsusCallerIDSettings.this.a(this.f588a, AsusCallerIDSettings.this.t.isEnabled());
        }
    }

    private void a() {
        int a2 = com.asus.a.c.a(getApplicationContext(), this.Q, 0, false);
        this.o.setEnabled(true);
        if (a2 == 0) {
            this.o.setChecked(false);
            this.p.setEnabled(false);
            this.q.setEnabled(false);
            this.t.setEnabled(false);
            this.u.setEnabled(false);
            this.y.setEnabled(false);
        } else {
            this.o.setChecked(true);
            this.p.setEnabled(true);
            this.q.setEnabled(true);
            this.t.setEnabled(true);
            this.u.setEnabled(true);
            this.y.setEnabled(true);
        }
        if (a2 != 1 || (this.M > 0 && com.asus.a.c.h(getApplicationContext()) != 0)) {
            this.t.setEnabled(false);
        } else {
            this.t.setEnabled(true);
        }
        a(0, this.t.isEnabled());
        int b2 = com.asus.a.c.b(getApplicationContext(), this.Q);
        this.q.setSummary(this.C[b2]);
        this.q.setValue(String.valueOf(b2));
        int d = com.asus.a.c.d(getApplicationContext(), this.Q);
        this.p.setSummary(this.D[1 - d]);
        if (d == 0 || a2 == 0) {
            this.r.setEnabled(false);
        } else {
            this.r.setEnabled(true);
        }
        if (d == 0) {
            this.p.setChecked(false);
        } else {
            this.p.setChecked(true);
        }
        int c = com.asus.a.c.c(getApplicationContext(), false);
        this.r.setSummary(this.G[c]);
        this.r.setValue(String.valueOf(c));
        b(com.asus.a.c.h(getApplicationContext()));
        if (TelecomUtil.isInCall(getApplicationContext())) {
            this.o.setEnabled(false);
            this.p.setEnabled(false);
            this.q.setEnabled(false);
            this.t.setEnabled(false);
            this.r.setEnabled(false);
        }
        if (com.asus.a.c.k(getApplicationContext()) == 0) {
            this.S.setChecked(false);
        } else {
            this.S.setChecked(true);
        }
        if (com.asus.a.c.j(getApplicationContext()) == 0) {
            this.z.setChecked(false);
        } else {
            this.z.setChecked(true);
        }
        if (com.asus.a.c.i(getApplicationContext()) == 0) {
            this.A.setChecked(false);
        } else {
            this.A.setChecked(true);
        }
        if (!com.asus.blocklist.a.b(getApplicationContext()) && com.asus.a.c.h(getApplicationContext()) == 4) {
            com.asus.a.c.b(this, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.r.setValue(String.valueOf(i));
        this.r.setSummary(this.G[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        if (z) {
            this.t.setSummary(getResources().getString(2131755304, String.valueOf(i)));
        } else {
            this.t.setSummary(BuildConfig.FLAVOR);
        }
    }

    static /* synthetic */ void a(AsusCallerIDSettings asusCallerIDSettings, Context context) {
        Log.d("AsusCallerIDSettings", "updateBlockTaggedNumbers");
        String[] stringArray = asusCallerIDSettings.P ? asusCallerIDSettings.getResources().getStringArray(2130837507) : asusCallerIDSettings.getResources().getStringArray(2130837506);
        List<String> a2 = com.asus.a.a.a(context);
        if (!(a2 == null || a2.size() == 0)) {
            HashSet hashSet = new HashSet();
            Iterator<String> it = a2.iterator();
            while (it.hasNext()) {
                Log.d("AsusCallerIDSettings", "tagNames:" + it.next());
                for (int i = 0; i < stringArray.length; i++) {
                    if (a2.contains(stringArray[i].toString())) {
                        hashSet.add(String.valueOf(i));
                    }
                }
            }
            asusCallerIDSettings.t.setValues(hashSet);
        }
    }

    private void a(String str) {
        View inflate = getLayoutInflater().inflate(2131427443, (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setTitle(17039380).setPositiveButton(17039379, new DialogInterface.OnClickListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                com.asus.a.c.c(AsusCallerIDSettings.this.getApplicationContext(), AsusCallerIDSettings.this.L, AsusCallerIDSettings.this.Q);
                AsusCallerIDSettings.this.b(AsusCallerIDSettings.this.L);
            }
        }).setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AsusCallerIDSettings.this.b(!AsusCallerIDSettings.this.L);
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
            }
        }).setView(inflate);
        this.I = builder.create();
        this.I.setCancelable(false);
        this.I.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.4
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AsusCallerIDSettings.this.K = AsusCallerIDSettings.this.I.getButton(-1);
                AsusCallerIDSettings.this.K.setEnabled(false);
            }
        });
        this.J = (CheckBox) inflate.findViewById(2131296426);
        this.J.setChecked(false);
        this.J.setOnCheckedChangeListener(this);
        this.I.show();
    }

    private void b(int i) {
        this.s.setValue(String.valueOf(i));
        CharSequence charSequence = i == 3 ? this.H[1] : i == 4 ? this.H[2] : this.H[i];
        if (!charSequence.equals(getString(2131755208))) {
            this.s.setSummary(charSequence);
        } else if (!this.N || this.P) {
            this.s.setSummary(((Object) charSequence) + " (" + getString(2131755010) + ")");
        } else {
            this.s.setSummary(((Object) charSequence) + " (" + getString(2131755010) + " + " + getString(2131755214) + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        char c = 0;
        if (!z) {
            this.p.setChecked(false);
            this.r.setEnabled(false);
        } else {
            this.p.setChecked(true);
            this.r.setEnabled(true);
        }
        if (!z) {
            c = 1;
        }
        this.p.setSummary(this.D[c]);
    }

    private void c(boolean z) {
        int d = com.asus.a.c.d(getApplicationContext(), this.Q);
        int h = com.asus.a.c.h(getApplicationContext());
        Log.d("AsusCallerIDSettings", "setCallGuardOnStatus Enable:" + d + ", blockMode:" + h + ", isSwitchOn:" + z);
        if (z) {
            if (d == 0) {
                this.r.setEnabled(false);
            } else {
                this.r.setEnabled(true);
            }
            if (this.M <= 0 || h == 0) {
                this.t.setEnabled(true);
            } else {
                this.t.setEnabled(false);
            }
        } else {
            this.r.setEnabled(z);
        }
        com.asus.a.c.b(getApplicationContext(), z, this.Q);
        a(com.asus.a.a.b(getApplicationContext()), this.t.isEnabled());
        b(com.asus.a.c.h(getApplicationContext()));
    }

    @Override // com.android.contacts.dialpad.g.a
    public final void a(int i, String str) {
        Log.v("AsusCallerIDSettings", "[PhoneStateListener] onCallStateChanged, state = " + i + ", incomingNumber = " + PhoneCapabilityTester.privacyLogCheck(str));
        switch (i) {
            case 0:
                a();
                return;
            default:
                if (TelecomUtil.isInCall(getApplicationContext())) {
                    this.o.setEnabled(false);
                    this.p.setEnabled(false);
                    this.q.setEnabled(false);
                    this.t.setEnabled(false);
                    return;
                }
                return;
        }
    }

    @Override // com.android.contacts.dialpad.g.a
    public final void a(ServiceState serviceState) {
    }

    @Override // com.android.contacts.f.c.a
    public final void a_(boolean z) {
        Log.d("AsusCallerIDSettings", "onClick isAccept:" + z + ", mIsTouchPalInstalled:" + this.Q);
        if (z) {
            com.asus.a.c.i(this, true);
            com.asus.a.c.b(getApplicationContext(), true, this.Q);
        } else {
            this.o.setChecked(false);
        }
        c(z);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isChecked()) {
            this.K.setEnabled(true);
        } else {
            this.K.setEnabled(false);
        }
        this.K.invalidate();
    }

    @Override // com.android.contacts.e.b.a
    public void onClickCTACheckerNegativeButton() {
        Log.d("AsusCallerIDSettings", "onClickCTACheckerNegativeButton");
        com.android.contacts.e.a.f1081a = false;
        finish();
    }

    @Override // com.android.contacts.e.b.a
    public void onClickCTACheckerPositiveButton(boolean z) {
        Log.d("AsusCallerIDSettings", "onClickCTACheckerPositiveButton isChecked: " + z);
        com.android.contacts.e.a.f1081a = true;
        if (z) {
            PreferenceManager.getDefaultSharedPreferences(this).edit().putBoolean("cta_checker_AsusContacts", true).apply();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            this.P = com.asus.a.a.h(getApplicationContext());
            this.M = com.asus.a.a.g(getApplication());
            getApplication();
            this.Q = com.asus.a.a.a();
            this.N = (this.Q || this.P) && com.asus.a.a.e(getApplication());
            this.V = bh.a(getApplicationContext());
            Log.d("AsusCallerIDSettings", "onCreate : Callguard version is " + this.M + " isCallguardIntalled = " + this.N);
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            addPreferencesFromResource(2131951631);
            this.o = (SwitchPreference) findPreference("callerid_checking_on_off");
            this.o.setOnPreferenceChangeListener(this);
            if (this.P && !com.asus.a.c.l(this)) {
                this.o.setChecked(false);
                com.asus.a.c.b(this, false, false);
            }
            this.p = (CheckBoxPreference) findPreference("callerid_checking_fuction");
            this.p.setOnPreferenceChangeListener(this);
            this.q = (ListPreference) findPreference("display_callerid_checking");
            this.q.setOnPreferenceChangeListener(this);
            this.r = (ListPreference) findPreference("online_type");
            this.r.setOnPreferenceChangeListener(this);
            this.s = (ListPreference) findPreference("block_mode");
            this.s.setOnPreferenceChangeListener(this);
            if (this.M < 2) {
                this.s.setEntries(getApplicationContext().getResources().getStringArray(2130837532));
                this.s.setEntryValues(getApplicationContext().getResources().getStringArray(2130837533));
            } else if (com.asus.blocklist.a.b(getApplicationContext())) {
                this.s.setEntries(getApplicationContext().getResources().getStringArray(2130837535));
                this.s.setEntryValues(getApplicationContext().getResources().getStringArray(2130837534));
            } else {
                this.s.setEntries(getApplicationContext().getResources().getStringArray(2130837532));
                this.s.setEntryValues(getApplicationContext().getResources().getStringArray(2130837533));
            }
            this.t = (MultiSelectListPreference) findPreference("block_tagged_numbers");
            this.t.setOnPreferenceChangeListener(this);
            this.u = findPreference("offline_data_config");
            this.u.setOnPreferenceClickListener(this);
            this.y = (CheckBoxPreference) findPreference("block_spam_sms");
            this.y.setOnPreferenceChangeListener(this);
            this.v = (PreferenceCategory) findPreference("callerid_check_setting_category");
            this.w = (PreferenceCategory) findPreference("sms_block_setting_category");
            this.x = (PreferenceCategory) findPreference("block_rule_setting_category");
            this.z = (CheckBoxPreference) findPreference("sms_display_notification");
            this.z.setOnPreferenceChangeListener(this);
            this.A = (CheckBoxPreference) findPreference("call_display_notification");
            this.A.setOnPreferenceChangeListener(this);
            this.B = (CheckBoxPreference) findPreference("block_mode_stranger");
            this.S = (CheckBoxPreference) findPreference("block_mode_private_call");
            this.S.setOnPreferenceChangeListener(this);
            this.B.setOnPreferenceChangeListener(this);
            if (CompatUtils.isNCompatible()) {
                getPreferenceScreen().removePreference(this.w);
                if (!TelecomUtil.isDefaultDialer(this)) {
                    getPreferenceScreen().removePreference(this.x);
                } else {
                    this.x.removePreference(this.s);
                    this.x.removePreference(this.t);
                    this.x.removePreference(this.A);
                }
                if (!this.N) {
                    getPreferenceScreen().removePreference(this.v);
                }
            } else {
                if (this.M <= 0) {
                    getPreferenceScreen().removePreference(this.w);
                    this.x.removePreference(this.A);
                }
                if (!this.N) {
                    getPreferenceScreen().removePreference(this.v);
                    this.x.removePreference(this.t);
                    this.w.removePreference(this.y);
                }
                if (this.M >= 2) {
                    if (com.asus.blocklist.a.b(getApplicationContext())) {
                        this.x.removePreference(this.B);
                    } else {
                        this.x.removePreference(this.s);
                    }
                } else if (!this.N) {
                    this.x.removePreference(this.s);
                } else {
                    if (!PhoneCapabilityTester.IsAsusDevice()) {
                        this.v.removePreference(this.q);
                    }
                    this.x.removePreference(this.B);
                }
            }
            this.w.removePreference(this.y);
            this.R = (AboutCallGuardDialogPreference) findPreference("callerid_about_dialog");
            Log.d("AsusCallerIDSettings", "mAboutDialogPreference==null?" + (this.R == null));
            if (this.N) {
                if (this.P) {
                    this.x.removePreference(this.t);
                    this.v.removePreference(this.q);
                    this.v.removePreference(this.p);
                    this.v.removePreference(this.u);
                    this.t.setEntries(getApplicationContext().getResources().getStringArray(2130837505));
                    this.t.setEntryValues(getApplicationContext().getResources().getStringArray(2130837509));
                } else if (this.Q) {
                    this.v.removePreference(this.R);
                }
            }
            this.C = getResources().getStringArray(2130837538);
            this.D = getResources().getStringArray(2130837536);
            this.E = getResources().getStringArray(2130837504);
            this.F = getResources().getStringArray(2130837506);
            this.G = getResources().getStringArray(2130837540);
            if (this.M >= 2) {
                this.H = getResources().getStringArray(2130837535);
            } else {
                this.H = getResources().getStringArray(2130837532);
            }
            if (!com.asus.blocklist.a.b(getApplicationContext())) {
                getPreferenceScreen().removePreference(this.w);
            }
            setContentView(2131427391);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayOptions(14, 14);
                actionBar.setDisplayShowHomeEnabled(false);
                if (!this.N) {
                    actionBar.setTitle(2131756237);
                } else {
                    actionBar.setTitle(2131756236);
                }
                actionBar.setIcon(2131165872);
            }
            this.T = (ListView) findViewById(16908298);
            this.V.a((bh.b) this);
            a();
            com.android.contacts.e.a aVar = new com.android.contacts.e.a(getApplicationContext());
            if (com.android.contacts.e.a.a()) {
                if (aVar.b()) {
                    Log.d("AsusCallerIDSettings", "CTA checker: Permission allow");
                } else if (bundle != null) {
                    com.android.contacts.e.b bVar = (com.android.contacts.e.b) getFragmentManager().findFragmentByTag("cta_checker_dialog");
                    if (bVar != null) {
                        bVar.f1083a = this;
                    }
                } else {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("CTA_DIALOG_TYPE", 1);
                    com.android.contacts.e.b a2 = com.android.contacts.e.b.a(bundle2);
                    a2.f1083a = this;
                    a2.show(getFragmentManager(), "cta_checker_dialog");
                }
            }
            TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
            this.n = new g();
            if (telephonyManager != null) {
                telephonyManager.listen(this.n, 32);
            }
            g.a(this);
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.V != null) {
            this.V.b(this);
        }
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        if (telephonyManager != null) {
            telephonyManager.listen(this.n, 0);
        }
        g.b(this);
        if (this.Y != null) {
            this.Y.f1285b = null;
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean onOptionsItemSelected;
        if (menuItem.getItemId() == 16908332) {
            if (!isFinishing()) {
                finish();
            }
            onOptionsItemSelected = true;
        } else {
            onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        }
        return onOptionsItemSelected;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.V.b();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        int i = 0;
        preference.getKey();
        Log.d("AsusCallerIDSettings", "onPreferenceChange:::: ");
        if (preference == this.o) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            c(booleanValue);
            this.p.setEnabled(booleanValue);
            this.q.setEnabled(booleanValue);
            this.t.setEnabled(booleanValue);
            this.u.setEnabled(booleanValue);
            this.y.setEnabled(booleanValue);
            if (!booleanValue || !this.P || com.asus.a.c.l(this)) {
                return true;
            }
            this.Y = c.a(true, 1);
            this.Y.f1285b = this;
            this.Y.show(getFragmentManager(), "callguard_act_notice");
            return true;
        } else if (preference == this.p) {
            this.L = ((Boolean) obj).booleanValue();
            if (this.L) {
                String string = getString(2131755318);
                if (com.asus.a.c.c(getApplicationContext(), false) == 0) {
                    a(string);
                    return true;
                }
                com.asus.a.c.c(getApplicationContext(), this.L, this.Q);
                b(this.L);
                return true;
            }
            a(getString(2131755317));
            return true;
        } else if (preference == this.q) {
            int parseInt = Integer.parseInt((String) obj);
            com.asus.a.c.a(getApplicationContext(), parseInt, this.Q);
            this.q.setValue(String.valueOf(parseInt));
            this.q.setSummary(this.C[parseInt]);
            return true;
        } else if (preference == this.t) {
            Set set = (Set) obj;
            String[] stringArray = this.P ? getResources().getStringArray(2130837509) : getResources().getStringArray(2130837508);
            int length = stringArray.length;
            boolean[] zArr = new boolean[length];
            for (int i2 = 0; i2 < length; i2++) {
                zArr[i2] = set.contains(stringArray[i2].toString());
            }
            for (int i3 = 0; i3 < zArr.length; i3++) {
                if (zArr[i3]) {
                    com.asus.a.a.e(getApplicationContext(), (String) this.F[i3]);
                } else {
                    com.asus.a.a.f(getApplicationContext(), (String) this.F[i3]);
                }
            }
            a(((Set) obj).size(), true);
            b(com.asus.a.c.h(getApplicationContext()));
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(1, getApplicationContext(), "Action", "CallGuardSettings", "BlockByTag", Long.valueOf(((Set) obj).size()));
            return true;
        } else if (preference == this.r) {
            int parseInt2 = Integer.parseInt((String) obj);
            final int c = com.asus.a.c.c(getApplicationContext(), false);
            com.asus.a.c.a(getApplicationContext(), parseInt2);
            if (parseInt2 != 0 || c == parseInt2) {
                a(parseInt2);
                com.asus.a.a.g(getApplicationContext(), "wifi");
                Log.d("AsusCallerIDSettings", "onPreferenceChange setOnlineQueryStrategy() = wifi");
                return true;
            } else if (com.asus.a.c.d(getApplicationContext(), this.Q) != 1) {
                return true;
            } else {
                String string2 = getString(2131755318);
                View inflate = getLayoutInflater().inflate(2131427443, (ViewGroup) null);
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage(string2).setTitle(17039380).setPositiveButton(17039379, new DialogInterface.OnClickListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.7
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        AsusCallerIDSettings.this.a(com.asus.a.c.c(AsusCallerIDSettings.this.getApplicationContext(), false));
                        com.asus.a.a.g(AsusCallerIDSettings.this.getApplicationContext(), "allNet");
                        Log.d("AsusCallerIDSettings", "displayAlertConnectionTypeDialog setOnlineQueryStrategy() = allNet");
                    }
                }).setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        int c2 = com.asus.a.c.c(AsusCallerIDSettings.this.getApplicationContext(), false);
                        if (c != 0) {
                            int i5 = 1 - c2;
                            com.asus.a.c.a(AsusCallerIDSettings.this.getApplicationContext(), i5);
                            AsusCallerIDSettings.this.a(i5);
                            com.asus.a.a.g(AsusCallerIDSettings.this.getApplicationContext(), "wifi");
                            Log.d("AsusCallerIDSettings", "displayAlertConnectionTypeDialog setOnlineQueryStrategy() = wifi");
                        }
                    }
                }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.5
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                    }
                }).setView(inflate);
                this.I = builder.create();
                this.I.setCancelable(false);
                this.I.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.contacts.asuscallerid.AsusCallerIDSettings.8
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        AsusCallerIDSettings.this.K = AsusCallerIDSettings.this.I.getButton(-1);
                        AsusCallerIDSettings.this.K.setEnabled(false);
                    }
                });
                this.J = (CheckBox) inflate.findViewById(2131296426);
                this.J.setChecked(false);
                this.J.setOnCheckedChangeListener(this);
                this.I.show();
                return true;
            }
        } else if (preference == this.s) {
            int parseInt3 = Integer.parseInt((String) obj);
            com.asus.a.c.b(getApplicationContext(), parseInt3);
            b(parseInt3);
            if (parseInt3 == 0 && com.asus.a.c.a(getApplicationContext(), this.Q, 0, false) == 1) {
                this.t.setEnabled(true);
            } else {
                this.t.setEnabled(false);
            }
            a(com.asus.a.a.b(getApplicationContext()), this.t.isEnabled());
            return true;
        } else if (preference == this.y) {
            com.asus.a.c.e(getApplicationContext(), ((Boolean) obj).booleanValue());
            return true;
        } else if (preference == this.z) {
            com.asus.a.c.g(getApplicationContext(), ((Boolean) obj).booleanValue());
            return true;
        } else if (preference == this.A) {
            com.asus.a.c.f(getApplicationContext(), ((Boolean) obj).booleanValue());
            return true;
        } else if (preference == this.B) {
            boolean booleanValue2 = ((Boolean) obj).booleanValue();
            Context applicationContext = getApplicationContext();
            if (booleanValue2) {
                i = 3;
            }
            com.asus.a.c.b(applicationContext, i);
            return true;
        } else if (preference != this.S) {
            return true;
        } else {
            com.asus.a.c.h(getApplicationContext(), ((Boolean) obj).booleanValue());
            return true;
        }
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (!"offline_data_config".equals(preference.getKey())) {
            return true;
        }
        ImplicitIntentsUtil.startActivityInApp(this, new Intent("android.intent.action.ASUS_ENTER_CALLGUARD_OFFLINEDATA"));
        return true;
    }

    @Override // com.android.contacts.list.bh.b
    public void onProviderStatusChange() {
        bh.c c = this.V.c();
        Log.d("AsusCallerIDSettings", "onProviderStatusChange status = " + c.f1810a);
        if (this.W == null || c.f1810a != this.W.f1810a) {
            this.W = c;
            View findViewById = findViewById(2131297179);
            if (CompatUtils.isMarshmallowCompatible() ? this.W.f1810a == 0 || this.W.f1810a == 2 : this.W.f1810a == 0 || this.W.f1810a == 4) {
                Log.d("AsusCallerIDSettings", "onProviderStatusChange status = normal");
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
                if (this.T != null) {
                    this.T.setVisibility(0);
                }
                if (this.X != null) {
                    this.X.cancel(true);
                    this.X = null;
                }
                this.X = new b(getApplicationContext());
                this.X.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                return;
            }
            Log.d("AsusCallerIDSettings", "onProviderStatusChange status = abnormal");
            if (this.X != null) {
                this.X.cancel(true);
                this.X = null;
            }
            if (this.T != null) {
                this.T.setVisibility(8);
            }
            if (this.U == null) {
                this.U = new af();
                this.U.f1768a = new a();
                getFragmentManager().beginTransaction().replace(2131297179, this.U).commitAllowingStateLoss();
            }
            this.U.a(this.W);
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.V.a();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.asus.a.c.a((Activity) this);
    }
}
