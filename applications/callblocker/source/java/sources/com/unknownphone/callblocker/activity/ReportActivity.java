package com.unknownphone.callblocker.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ScrollView;
import android.widget.SpinnerAdapter;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p017a.C0438a;
import com.google.android.material.snackbar.Snackbar;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p186d.C5289a;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import retrofit2.AbstractC5586b;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/ReportActivity.class */
public class ReportActivity extends Activity implements View.OnClickListener, AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    static final /* synthetic */ boolean f21991a;

    /* renamed from: b */
    private ViewSwitchLayout f21992b;

    /* renamed from: c */
    private AppCompatEditText f21993c;

    /* renamed from: d */
    private AppCompatTextView f21994d;

    /* renamed from: e */
    private AppCompatEditText f21995e;

    /* renamed from: f */
    private AppCompatEditText f21996f;

    /* renamed from: g */
    private C5290b f21997g;

    /* renamed from: h */
    private SharedPreferences f21998h;

    /* renamed from: i */
    private AppCompatButton f21999i;

    /* renamed from: j */
    private C5292d f22000j;

    /* renamed from: k */
    private String f22001k;

    /* renamed from: l */
    private ScrollView f22002l;

    /* renamed from: m */
    private String f22003m;

    /* renamed from: n */
    private boolean f22004n;

    /* renamed from: o */
    private String f22005o;

    /* renamed from: p */
    private View f22006p;

    /* renamed from: q */
    private String f22007q;

    /* renamed from: r */
    private String f22008r;

    /* renamed from: s */
    private AbstractC5586b f22009s;

    static {
        f21991a = !ReportActivity.class.desiredAssertionStatus();
    }

    /* renamed from: a */
    public void m1177a() {
        setResult(this.f22004n ? -1 : 0, new Intent());
        finish();
    }

    /* renamed from: b */
    public void m1174b() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492931);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296708);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296599);
        AppCompatButton appCompatButton2 = (AppCompatButton) dialog.findViewById(2131296566);
        appCompatTextView.setText(String.format(Locale.US, "%s\n%s", getString(2131755467), getString(2131755466)));
        appCompatButton.setText(2131755465);
        appCompatButton2.setText(2131755464);
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ReportActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ReportActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
                ReportActivity.this.m1177a();
            }
        });
        dialog.show();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f21992b.getIndex() == 2) {
            m1177a();
        } else {
            m1174b();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(final View view) {
        C5287g.m1097a((Activity) this);
        Editable text = this.f21995e.getText();
        if (TextUtils.isEmpty(text)) {
            Snackbar.m2494a(view, getString(2131755460), -1).mo2491d();
        } else if (!f21991a && text == null) {
            throw new AssertionError();
        } else {
            if (text.length() < 20 || text.length() > 3000) {
                Snackbar.m2494a(view, getString(2131755137), -1).mo2491d();
                return;
            }
            this.f21992b.setView(1);
            HashMap hashMap = new HashMap();
            hashMap.put("_action", "_submit_comment");
            hashMap.put("api_key", C5287g.m1076c(this.f21998h.getString("api_key", "")));
            hashMap.put("lang", C5282b.m1100a((String) C5287g.m1088a(this.f21998h.getString("language_code", Locale.getDefault().getLanguage())).first));
            hashMap.put("_opt_type_call", TextUtils.isEmpty(this.f22008r) ? "_not_specified" : this.f22008r);
            hashMap.put("_opt_username", C5287g.m1090a(this.f21993c.getText()));
            hashMap.put("comment", text.toString());
            hashMap.put("_opt_phone_owner", C5287g.m1090a(this.f21996f.getText()));
            hashMap.put("phone", C5287g.m1076c(this.f22007q));
            C5287g.m1083a(hashMap);
            this.f22009s = this.f22000j.m1042a(hashMap, new C5292d.AbstractC5295b() { // from class: com.unknownphone.callblocker.activity.ReportActivity.6
                @Override // com.unknownphone.callblocker.p186d.C5292d.AbstractC5295b
                /* renamed from: a */
                public void mo951a(int i, String str, boolean z) {
                    if (i == 201) {
                        ReportActivity.this.f22004n = true;
                        ReportActivity.this.f21994d.setText(2131755471);
                        ReportActivity.this.f21992b.setView(2);
                    } else if (i == 202) {
                        ReportActivity.this.f21994d.setText(2131755472);
                        ReportActivity.this.f21992b.setView(2);
                    } else {
                        Snackbar.m2495a(view, 2131755053, -1).mo2491d();
                        ReportActivity.this.f21992b.setView(0);
                    }
                }
            });
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(2);
        setContentView(2131492901);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f22007q = extras.getString("number");
            this.f22005o = extras.getString("identity", getString(2131755354));
        }
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) findViewById(2131296392);
        AppCompatButton appCompatButton = (AppCompatButton) findViewById(2131296736);
        AppCompatButton appCompatButton2 = (AppCompatButton) findViewById(2131296375);
        AppCompatButton appCompatButton3 = (AppCompatButton) findViewById(2131296616);
        AppCompatSpinner appCompatSpinner = (AppCompatSpinner) findViewById(2131296735);
        AppCompatButton appCompatButton4 = (AppCompatButton) findViewById(2131296343);
        this.f21992b = (ViewSwitchLayout) findViewById(2131296747);
        this.f21993c = (AppCompatEditText) findViewById(2131296618);
        this.f21994d = (AppCompatTextView) findViewById(2131296617);
        this.f21995e = (AppCompatEditText) findViewById(2131296404);
        this.f21996f = (AppCompatEditText) findViewById(2131296374);
        this.f21999i = (AppCompatButton) findViewById(2131296726);
        this.f22002l = (ScrollView) findViewById(2131296633);
        this.f22006p = findViewById(2131296542);
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        this.f22003m = telephonyManager == null ? null : telephonyManager.getSimCountryIso();
        this.f22001k = C5289a.m1069a(this.f22003m);
        this.f21997g = new C5290b(this);
        this.f22000j = C5292d.m1044a();
        this.f21998h = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f21999i.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ReportActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ReportActivity.this.f22006p.getVisibility() == 0) {
                    ReportActivity.this.f21999i.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, C0438a.m20900a(view.getContext(), 2131230892), (Drawable) null);
                    ReportActivity.this.f21999i.setText(2131755474);
                    ReportActivity.this.f22006p.setVisibility(8);
                    ReportActivity.this.f22002l.post(new Runnable() { // from class: com.unknownphone.callblocker.activity.ReportActivity.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ReportActivity.this.f22002l.fullScroll(33);
                        }
                    });
                    return;
                }
                ReportActivity.this.f21999i.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, C0438a.m20900a(view.getContext(), 2131230965), (Drawable) null);
                ReportActivity.this.f21999i.setText(2131755473);
                ReportActivity.this.f22006p.setVisibility(0);
                ReportActivity.this.f22002l.post(new Runnable() { // from class: com.unknownphone.callblocker.activity.ReportActivity.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ReportActivity.this.f22002l.fullScroll(130);
                    }
                });
            }
        });
        this.f21999i.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, C0438a.m20900a(this, 2131230892), (Drawable) null);
        this.f21999i.setText(2131755474);
        this.f22006p.setVisibility(8);
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ReportActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ReportActivity.this.m1177a();
            }
        });
        appCompatButton3.setOnClickListener(this);
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ReportActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ReportActivity.this.m1174b();
            }
        });
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ReportActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.putExtra("unblocked", true);
                intent.putExtra("identity", ReportActivity.this.f22005o);
                intent.putExtra("number", ReportActivity.this.f22007q);
                ReportActivity.this.setResult(-1, intent);
                ReportActivity.this.finish();
            }
        });
        appCompatButton4.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.ReportActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.putExtra("identity", ReportActivity.this.f22005o);
                intent.putExtra("blocked", true);
                intent.putExtra("number", ReportActivity.this.f22007q);
                ReportActivity.this.setResult(-1, intent);
                ReportActivity.this.finish();
            }
        });
        ArrayList arrayList = new ArrayList();
        arrayList.add(getString(2131755014));
        arrayList.add(getString(2131755016));
        arrayList.add(getString(2131755013));
        arrayList.add(getString(2131755012));
        arrayList.add(getString(2131755011));
        arrayList.add(getString(2131755017));
        arrayList.add(getString(2131755019));
        arrayList.add(getString(2131755015));
        arrayList.add(getString(2131755009));
        arrayList.add(getString(2131755010));
        arrayList.add(getString(2131755018));
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, 17367048, arrayList);
        arrayAdapter.setDropDownViewResource(17367049);
        appCompatSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
        appCompatSpinner.setOnItemSelectedListener(this);
        C5287g.m1096a(this, this.f21992b);
        if (!C5287g.m1071e(this).isEmpty()) {
            appCompatButton.setEnabled(false);
            appCompatButton4.setEnabled(false);
        }
        boolean m1052b = this.f21997g.m1052b(this.f22007q, this.f22001k, this.f22003m);
        appCompatButton.setVisibility(m1052b ? 0 : 8);
        appCompatButton4.setVisibility(m1052b ? 8 : 0);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.f22009s != null) {
            this.f22009s.mo99b();
        }
        super.onDestroy();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        switch (i) {
            case 0:
                this.f22008r = "_not_specified";
                return;
            case 1:
                this.f22008r = "_scam";
                return;
            case 2:
                this.f22008r = "_missed_call";
                return;
            case 3:
                this.f22008r = "_marketing";
                return;
            case 4:
                this.f22008r = "_fake_id";
                return;
            case 5:
                this.f22008r = "_survey";
                return;
            case 6:
                this.f22008r = "_threats";
                return;
            case 7:
                this.f22008r = "_prank_call";
                return;
            case 8:
                this.f22008r = "_auto_reminder";
                return;
            case 9:
                this.f22008r = "_debt_collector";
                return;
            case 10:
                this.f22008r = "_text_message";
                return;
            default:
                return;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
