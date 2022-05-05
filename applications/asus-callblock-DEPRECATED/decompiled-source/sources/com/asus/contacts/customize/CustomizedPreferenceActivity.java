package com.asus.contacts.customize;

import android.app.ActionBar;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.Toast;
import com.android.contacts.activities.DialtactsActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.b.e;
import com.asus.contacts.fonts.ColorsGrid;
import com.asus.contacts.fonts.FontStyleDialogHelpActivity;
import com.asus.contacts.fonts.a;
import com.asus.contacts.fonts.c;
import com.asus.contacts.fonts.l;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/customize/CustomizedPreferenceActivity.class */
public class CustomizedPreferenceActivity extends PreferenceActivity implements Preference.OnPreferenceClickListener, ColorsGrid.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2603a = CustomizedPreferenceActivity.class.getSimpleName();
    private static String h = "customized_background_dialpad";
    private Preference c;
    private Preference d;
    private Preference e;
    private PreferenceCategory f;
    private Context i;
    private Preference j;
    private Preference k;
    private CheckBoxPreference l;
    private AlertDialog m;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2604b = true;
    private boolean g = false;
    private int n = -1;
    private Preference.OnPreferenceClickListener o = new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.customize.CustomizedPreferenceActivity.2
        @Override // android.preference.Preference.OnPreferenceClickListener
        public final boolean onPreferenceClick(Preference preference) {
            boolean z = true;
            String key = preference.getKey();
            if ("key_font_setting".equals(key)) {
                try {
                    String b2 = a.b(CustomizedPreferenceActivity.this.i, "key_font_style", "###");
                    Intent intent = new Intent(CustomizedPreferenceActivity.this.i, FontStyleDialogHelpActivity.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("current_font_style", b2);
                    bundle.putFloat("font_scale", 1.0f);
                    intent.putExtras(bundle);
                    CustomizedPreferenceActivity.this.startActivityForResult(intent, 714);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if ("key_font_color_setting".equals(key)) {
                CustomizedPreferenceActivity.this.n = a.a(CustomizedPreferenceActivity.this.i, "key_font_color_selected_idx");
                CustomizedPreferenceActivity.this.a("key_font_color", "key_font_color_x", "key_font_color_y");
            } else {
                z = false;
            }
            return z;
        }
    };
    private Preference.OnPreferenceClickListener p = new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.customize.CustomizedPreferenceActivity.3
        @Override // android.preference.Preference.OnPreferenceClickListener
        public final boolean onPreferenceClick(Preference preference) {
            boolean z;
            if ("dark_theme".equals(preference.getKey())) {
                CustomizedPreferenceActivity.a(CustomizedPreferenceActivity.this, CustomizedPreferenceActivity.this.l.isChecked());
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str, String str2, String str3) {
        SharedPreferences.Editor edit = getSharedPreferences("customized_background", 0).edit();
        edit.putInt(str, i);
        Log.d(f2603a, "setCustomizedBackground " + str + " chooseNumber: " + i);
        if (str2 != null) {
            edit.putString(str3, str2);
            Log.d(f2603a, "coverUri: " + str2);
        }
        edit.commit();
    }

    static /* synthetic */ void a(CustomizedPreferenceActivity customizedPreferenceActivity, boolean z) {
        if (z) {
            com.android.contacts.skin.a.a("com.asus.contacts.theme.dark", customizedPreferenceActivity.i);
        } else {
            com.android.contacts.skin.a.a("default", customizedPreferenceActivity.i);
        }
        Log.d(f2603a, "setDarkTheme: " + z);
    }

    @Override // com.asus.contacts.fonts.ColorsGrid.a
    public final void a(int i, int i2) {
        a.a(this.i, "key_font_color", i);
        a.a(this.i, "key_font_color_selected_idx", i2);
        this.n = i2;
    }

    public final void a(String str, String str2, String str3) {
        c cVar = new c();
        cVar.d = this;
        cVar.f2639b = Typeface.DEFAULT;
        cVar.c = 1.0f;
        cVar.e = this.n;
        c.a(str, str2, str3);
        cVar.show(getFragmentManager(), "FontColorDialog");
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        int i3 = 720;
        if (i2 == -1) {
            Log.d(f2603a, "key:" + h);
            switch (i) {
                case 714:
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        String string = extras.getString("FontStyleDialogHelpActivity.selected_typeface_description");
                        String string2 = extras.getString("FontStyleDialogHelpActivity.selected_font_name");
                        String str = string2;
                        if (a.c(this, string2)) {
                            str = "System default";
                        }
                        a.a(this, "key_font_style", string);
                        a.a(this, "key_font_style_name", str);
                        this.j.setSummary(str);
                    }
                    a.a((Context) this, "key_app_need_restart", true);
                    l.a().show(getFragmentManager(), "restart_application");
                    return;
                case 1002:
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                    int i4 = displayMetrics.widthPixels;
                    int i5 = displayMetrics.heightPixels;
                    int dimensionPixelSize = getResources().getDimensionPixelSize(2131100337);
                    i3 = i4;
                    if (i4 > i5) {
                        i3 = i5;
                    }
                    if (!"customized_background_dialpad".equals(h)) {
                        if ("customized_background_calllog".equals(h)) {
                            this.g = PhoneCapabilityTester.isUsingTwoPanes(this);
                            if (!this.g) {
                                dimensionPixelSize = 881;
                            } else {
                                i3 = 800;
                                dimensionPixelSize = 876;
                            }
                        } else if ("customized_background_contact_list".equals(h)) {
                            dimensionPixelSize = 913;
                        }
                        Log.d(f2603a, "width:" + i3 + " height:" + dimensionPixelSize + " heightScreen:" + i5);
                        CoverUtils.cropImageIntent(this, intent, i, i3, dimensionPixelSize);
                        return;
                    }
                    Log.d(f2603a, "width:" + i3 + " height:" + dimensionPixelSize + " heightScreen:" + i5);
                    CoverUtils.cropImageIntent(this, intent, i, i3, dimensionPixelSize);
                    return;
                case 1003:
                    if (intent != null) {
                        Log.d(f2603a, "REQUEST_CROP_COVER");
                        String str2 = null;
                        if ("customized_background_dialpad".equals(h)) {
                            str2 = "customized_background_dialpad_uri";
                        } else if ("customized_background_calllog".equals(h)) {
                            str2 = "customized_background_calllog_uri";
                        } else if ("customized_background_contact_list".equals(h)) {
                            str2 = "customized_background_contact_list_uri";
                        }
                        String cropBackgroundUri = CoverUtils.getCropBackgroundUri();
                        if (cropBackgroundUri == null || str2 == null) {
                            Log.d(f2603a, "Crop Cover uri or key is null");
                            return;
                        }
                        a(1, h, cropBackgroundUri, str2);
                        Toast.makeText(getApplicationContext(), 2131755492, 1).show();
                        return;
                    }
                    Log.d(f2603a, "data is null");
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.f2604b) {
            Intent intent = new Intent(this, DialtactsActivity.class);
            intent.putExtra(MainDialtactsActivity.EXTRA_BACK_TO_TOOLPANEL, true);
            ImplicitIntentsUtil.startActivityInApp(this, intent);
        }
        finish();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!(getIntent() == null || getIntent().getExtras() == null)) {
            this.f2604b = !getIntent().getExtras().getBoolean("PREF_LAUNCHED_FROM_ASUS_CONTACTS_SETTINGS", false);
        }
        this.g = PhoneCapabilityTester.isUsingTwoPanes(this);
        if (!this.g) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        addPreferencesFromResource(2131951619);
        setContentView(2131427391);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(4, 4);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setTitle(getResources().getString(2131755497));
        }
        this.f = (PreferenceCategory) getPreferenceScreen().findPreference("customized_background_category");
        this.c = getPreferenceScreen().findPreference("customized_background_dialpad");
        this.c.setOnPreferenceClickListener(this);
        this.d = getPreferenceScreen().findPreference("customized_background_calllog");
        this.d.setOnPreferenceClickListener(this);
        this.e = getPreferenceScreen().findPreference("customized_background_contact_list");
        this.e.setOnPreferenceClickListener(this);
        if (this.g) {
            this.f.removePreference(this.e);
        }
        this.i = this;
        PreferenceCategory preferenceCategory = (PreferenceCategory) getPreferenceScreen().findPreference("customized_font_category");
        this.j = preferenceCategory.findPreference("key_font_setting");
        String b2 = a.b(this.i, "key_font_style_name", "System default");
        if (this.j != null) {
            String str = b2;
            if ("System default".equals(b2)) {
                str = getResources().getString(2131756224);
            }
            this.j.setSummary(str);
            this.j.setOnPreferenceClickListener(this.o);
        }
        this.k = preferenceCategory.findPreference("key_font_color_setting");
        int a2 = a.a(this.i, "key_font_color");
        if (this.k != null) {
            this.k.setSummary(String.valueOf(a2));
            this.k.setOnPreferenceClickListener(this.o);
        }
        try {
            if (!e.a().a(this, "FontSettings")) {
                preferenceCategory.removePreference(this.j);
                preferenceCategory.removePreference(this.k);
            } else {
                preferenceCategory.removePreference(this.k);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f = (PreferenceCategory) getPreferenceScreen().findPreference("customized_theme_category");
        if (!(!PhoneCapabilityTester.isUsingTwoPanes(this))) {
            getPreferenceScreen().removePreference(this.f);
        }
        this.l = (CheckBoxPreference) getPreferenceScreen().findPreference("dark_theme");
        String a3 = com.android.contacts.skin.a.a();
        if (!(this.l == null || a3 == null)) {
            if (a3.equals("com.asus.contacts.theme.dark")) {
                this.l.setChecked(true);
            } else {
                this.l.setChecked(false);
            }
        }
        if (this.l != null) {
            this.l.setOnPreferenceClickListener(this.p);
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.m != null) {
            this.m.dismiss();
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if ("customized_background_dialpad".equals(key)) {
            Log.d(f2603a, "set dialpad background");
            h = "customized_background_dialpad";
        } else if ("customized_background_calllog".equals(key)) {
            Log.d(f2603a, "set call log background");
            h = "customized_background_calllog";
        } else if ("customized_background_contact_list".equals(key)) {
            Log.d(f2603a, "set contact list background");
            h = "customized_background_contact_list";
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(getResources().getString(2131755489));
        if (a.a((Context) this, h) != 0) {
            arrayList.add(getResources().getString(2131755488));
        }
        this.m = new AlertDialog.Builder(this).setTitle(getResources().getString(2131755953)).setAdapter(new ArrayAdapter(this, 17367043, arrayList), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.customize.CustomizedPreferenceActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    Log.d(CustomizedPreferenceActivity.f2603a, "Choose Gallery");
                    CoverUtils.chooseFromGalleryIntent(CustomizedPreferenceActivity.this);
                    return;
                }
                Log.d(CustomizedPreferenceActivity.f2603a, "Choose Default");
                CustomizedPreferenceActivity.this.a(0, CustomizedPreferenceActivity.h, null, null);
                Toast.makeText(CustomizedPreferenceActivity.this.getApplicationContext(), 2131755491, 1).show();
            }
        }).create();
        this.m.show();
        return true;
    }
}
