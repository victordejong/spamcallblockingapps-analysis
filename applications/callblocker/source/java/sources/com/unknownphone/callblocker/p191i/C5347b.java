package com.unknownphone.callblocker.p191i;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0975d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.C2282d;
import com.google.android.material.snackbar.Snackbar;
import com.google.i18n.phonenumbers.C5055g;
import com.google.i18n.phonenumbers.NumberParseException;
import com.unknownphone.callblocker.activity.MainActivity;
import com.unknownphone.callblocker.activity.NoCreditsActivity;
import com.unknownphone.callblocker.activity.PremiumActivity;
import com.unknownphone.callblocker.activity.ReportActivity;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p180a.C5181b;
import com.unknownphone.callblocker.p180a.C5207c;
import com.unknownphone.callblocker.p186d.C5289a;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import com.unknownphone.callblocker.p187e.C5296a;
import com.unknownphone.callblocker.p187e.C5302c;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import com.unknownphone.callblocker.p190h.C5330a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.AbstractC5586b;
/* renamed from: com.unknownphone.callblocker.i.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/i/b.class */
public class C5347b extends Fragment implements SwipeRefreshLayout.AbstractC1073b, C5292d.AbstractC5295b {

    /* renamed from: a */
    private AppCompatTextView f22287a;

    /* renamed from: aA */
    private AbstractC5586b f22288aA;

    /* renamed from: ae */
    private View f22289ae;

    /* renamed from: af */
    private View f22290af;

    /* renamed from: ag */
    private SharedPreferences f22291ag;

    /* renamed from: ah */
    private C5290b f22292ah;

    /* renamed from: ai */
    private Pair<String, String> f22293ai;

    /* renamed from: aj */
    private AppCompatButton f22294aj;

    /* renamed from: ak */
    private AppCompatButton f22295ak;

    /* renamed from: al */
    private AppCompatButton f22296al;

    /* renamed from: am */
    private C5292d f22297am;

    /* renamed from: an */
    private AppCompatEditText f22298an;

    /* renamed from: ao */
    private RecyclerView f22299ao;

    /* renamed from: ap */
    private String f22300ap;

    /* renamed from: aq */
    private List<C5361c> f22301aq;

    /* renamed from: ar */
    private String f22302ar;

    /* renamed from: as */
    private C5343a f22303as;

    /* renamed from: at */
    private boolean f22304at;

    /* renamed from: au */
    private boolean f22305au;

    /* renamed from: av */
    private View f22306av;

    /* renamed from: aw */
    private String f22307aw;

    /* renamed from: ax */
    private AdView f22308ax;

    /* renamed from: ay */
    private String f22309ay;

    /* renamed from: az */
    private String f22310az;

    /* renamed from: b */
    private SwipeRefreshLayout f22311b;

    /* renamed from: c */
    private SwipeRefreshLayout f22312c;

    /* renamed from: d */
    private AppCompatTextView f22313d;

    /* renamed from: e */
    private AbstractC5328a f22314e;

    /* renamed from: f */
    private ViewSwitchLayout f22315f;

    /* renamed from: g */
    private AppCompatTextView f22316g;

    /* renamed from: h */
    private LinearLayoutManager f22317h;

    /* renamed from: i */
    private AppCompatImageButton f22318i;

    /* renamed from: a */
    public static C5347b m949a(AbstractC5328a abstractC5328a) {
        C5347b c5347b = new C5347b();
        c5347b.f22314e = abstractC5328a;
        return c5347b;
    }

    /* renamed from: a */
    public static C5347b m948a(AbstractC5328a abstractC5328a, String str) {
        C5347b c5347b = new C5347b();
        c5347b.f22314e = abstractC5328a;
        c5347b.f22310az = str;
        return c5347b;
    }

    /* renamed from: a */
    public void m945a(String str, boolean z) {
        this.f22310az = str;
        boolean isEmpty = this.f22301aq.isEmpty();
        if (TextUtils.isEmpty(this.f22310az)) {
            this.f22296al.setVisibility(0);
            this.f22294aj.setVisibility(8);
            if (z) {
                return;
            }
            this.f22315f.setView(1);
            return;
        }
        boolean m1052b = this.f22292ah.m1052b(this.f22310az, this.f22300ap, this.f22302ar);
        this.f22296al.setVisibility(m1052b ? 8 : 0);
        this.f22294aj.setVisibility(m1052b ? 0 : 8);
        if (!z && isEmpty && m1052b) {
            this.f22315f.setView(5);
            return;
        }
        String m938d = m938d();
        if (!m1052b && this.f22310az.startsWith("+") && !TextUtils.isEmpty(m938d)) {
            this.f22287a.setText(C5287g.m1093a(m19924p(), 2131755541, new Locale("", C5289a.m1068b(m938d)).getDisplayCountry()));
            boolean z2 = this.f22291ag.getBoolean("block_international_calls", false);
            this.f22289ae.setVisibility(z2 ? 0 : 8);
            this.f22290af.setVisibility(z2 ? 8 : 0);
            if (z || !isEmpty) {
                return;
            }
            this.f22315f.setView(6);
        } else if (!z && isEmpty && !TextUtils.isEmpty(this.f22310az)) {
            this.f22315f.setView(this.f22304at ? 4 : 2);
        } else if (z || isEmpty) {
        } else {
            this.f22315f.setView(0);
        }
    }

    /* renamed from: as */
    private void m944as() {
        if (this.f22291ag.contains("subscription_ends_at")) {
            this.f22316g.setText(2131755497);
            return;
        }
        this.f22316g.setText(m19995a(2131755496, Integer.valueOf(this.f22291ag.getInt("credits", 0))));
    }

    /* renamed from: at */
    public void m943at() {
        Context p = m19924p();
        if (p == null) {
            return;
        }
        if (TextUtils.isEmpty(this.f22310az)) {
            Snackbar.m2495a(this.f22296al, 2131755486, -1).mo2491d();
            return;
        }
        final Dialog dialog = new Dialog(p);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492933);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296709);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) dialog.findViewById(2131296710);
        AppCompatImageView appCompatImageView = (AppCompatImageView) dialog.findViewById(2131296492);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296566);
        AppCompatButton appCompatButton2 = (AppCompatButton) dialog.findViewById(2131296599);
        appCompatTextView.setText(this.f22310az);
        appCompatTextView.setTypeface(null, 1);
        appCompatTextView.setTextSize(2, 18.0f);
        appCompatTextView2.setText(m19998a(2131755537));
        appCompatTextView2.setVisibility(0);
        appCompatImageView.setImageResource(2131230910);
        appCompatButton.setText(2131755093);
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton2.setText(2131755092);
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C5207c c5207c = new C5207c();
                c5207c.m1225a((short) 3);
                c5207c.m1226a(TextUtils.isEmpty(C5347b.this.f22307aw) ? C5347b.this.m19959b(2131755530) : C5347b.this.f22307aw);
                c5207c.m1223b(C5287g.m1076c(C5347b.this.f22310az));
                C5347b.this.f22292ah.m1063a(c5207c);
                C5347b.this.m945a(C5347b.this.f22310az, false);
                dialog.cancel();
                try {
                    C5347b.this.f22314e.mo986a(2131296528, C5181b.m1256a(C5347b.this.f22314e), true);
                } catch (NullPointerException e) {
                }
            }
        });
        ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    /* renamed from: au */
    public void m942au() {
        Context p = m19924p();
        if (p == null) {
            return;
        }
        if (TextUtils.isEmpty(this.f22310az)) {
            Snackbar.m2495a(this.f22294aj, 2131755053, -1).mo2491d();
            return;
        }
        final Dialog dialog = new Dialog(p);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492933);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296709);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) dialog.findViewById(2131296710);
        AppCompatImageView appCompatImageView = (AppCompatImageView) dialog.findViewById(2131296492);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296567);
        AppCompatButton appCompatButton2 = (AppCompatButton) dialog.findViewById(2131296566);
        AppCompatButton appCompatButton3 = (AppCompatButton) dialog.findViewById(2131296599);
        appCompatTextView.setText(this.f22310az);
        appCompatTextView.setTypeface(null, 1);
        appCompatTextView.setTextSize(2, 18.0f);
        appCompatTextView2.setText(m19998a(2131755546));
        appCompatTextView2.setVisibility(0);
        appCompatImageView.setImageResource(2131230910);
        appCompatButton.setVisibility(0);
        appCompatButton.setText(2131755547);
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C5347b.this.f22292ah.m1058a(C5347b.this.f22310az, C5347b.this.f22300ap, C5347b.this.f22302ar);
                C5347b.this.m945a(C5347b.this.f22310az, false);
                dialog.cancel();
                try {
                    C5347b.this.f22314e.mo986a(2131296528, C5181b.m1256a(C5347b.this.f22314e), false);
                } catch (NullPointerException e) {
                }
            }
        });
        appCompatButton2.setText(2131755093);
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton3.setVisibility(8);
        ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    /* renamed from: d */
    private String m938d() {
        String str;
        try {
            str = String.valueOf(C5055g.m1745a().m1727a(C5287g.m1086a(this.f22310az, this.f22302ar), Locale.getDefault().getCountry()).m1631a());
        } catch (NumberParseException e) {
            e.printStackTrace();
            str = null;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(this.f22300ap) || str.equals(this.f22300ap)) {
            str = null;
        }
        return str;
    }

    /* renamed from: f */
    public void m935f() {
        Editable text = this.f22298an.getText();
        if (TextUtils.isEmpty(text)) {
            Snackbar.m2495a(this.f22318i, 2131755533, -1).mo2491d();
        }
        this.f22310az = C5287g.m1090a(text);
        m933g();
    }

    /* renamed from: g */
    private void m933g() {
        this.f22315f.setView(3);
        if (TextUtils.isEmpty(this.f22310az) || this.f22292ah.m1061a(this.f22310az) || C5287g.m1091a(this.f22291ag, 5)) {
            mo953a();
            return;
        }
        this.f22315f.setView(1);
        startActivityForResult(new Intent(m19922r(), NoCreditsActivity.class), 939);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        if (this.f22288aA != null) {
            this.f22288aA.mo99b();
        }
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492946, viewGroup, false);
        this.f22287a = (AppCompatTextView) inflate.findViewById(2131296495);
        this.f22289ae = inflate.findViewById(2131296496);
        this.f22290af = inflate.findViewById(2131296497);
        this.f22311b = (SwipeRefreshLayout) inflate.findViewById(2131296686);
        this.f22312c = (SwipeRefreshLayout) inflate.findViewById(2131296687);
        this.f22315f = (ViewSwitchLayout) inflate.findViewById(2131296747);
        this.f22313d = (AppCompatTextView) inflate.findViewById(2131296487);
        this.f22316g = (AppCompatTextView) inflate.findViewById(2131296415);
        this.f22294aj = (AppCompatButton) inflate.findViewById(2131296736);
        this.f22306av = inflate.findViewById(2131296488);
        this.f22299ao = (RecyclerView) inflate.findViewById(2131296611);
        this.f22318i = (AppCompatImageButton) inflate.findViewById(2131296635);
        this.f22295ak = (AppCompatButton) inflate.findViewById(2131296616);
        this.f22296al = (AppCompatButton) inflate.findViewById(2131296343);
        this.f22298an = (AppCompatEditText) inflate.findViewById(2131296438);
        this.f22308ax = (AdView) inflate.findViewById(2131296321);
        return inflate;
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.AbstractC1073b
    /* renamed from: a */
    public void mo953a() {
        if (this.f22288aA != null) {
            this.f22288aA.mo99b();
        }
        this.f22317h.m18912w();
        this.f22301aq.clear();
        if (TextUtils.isEmpty(this.f22310az) || !this.f22310az.matches(".*\\d.*")) {
            this.f22315f.setView(1);
            this.f22311b.setRefreshing(false);
            this.f22312c.setRefreshing(false);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("_action", "_get_info_for_phone");
        hashMap.put("api_key", this.f22309ay);
        hashMap.put("lang", C5282b.m1100a((String) this.f22293ai.first));
        hashMap.put("user_type", this.f22305au ? "premium" : "free");
        hashMap.put("phone", C5287g.m1076c(this.f22310az).replaceAll("[^0-9]+", ""));
        CustomApplication.m1110a("Search a Phone Number");
        this.f22288aA = this.f22297am.m1042a(hashMap, this);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo952a(int i, int i2, Intent intent) {
        if (i != 261) {
            if (i != 939) {
                super.mo952a(i, i2, intent);
            } else if (i2 != -1 || m19924p() == null) {
            } else {
                Intent intent2 = new Intent(m19924p().getApplicationContext(), MainActivity.class);
                intent2.putExtra("purchase_source", "purchase_source_search");
                intent2.putExtra("number", C5287g.m1090a(this.f22298an.getText()));
                intent2.addFlags(268468224);
                m19989a(intent2);
            }
        } else if (i2 != -1) {
        } else {
            if (intent.getBooleanExtra("unblocked", false)) {
                try {
                    this.f22314e.mo986a(2131296528, C5181b.m1255a(this.f22314e, intent.getStringExtra("number")), true);
                } catch (NullPointerException e) {
                }
            } else if (intent.getBooleanExtra("blocked", false)) {
                String stringExtra = intent.getStringExtra("identity");
                String stringExtra2 = intent.getStringExtra("number");
                C5207c c5207c = new C5207c();
                c5207c.m1225a((short) 3);
                String str = stringExtra;
                if (TextUtils.isEmpty(stringExtra)) {
                    str = m19959b(2131755530);
                }
                c5207c.m1226a(str);
                c5207c.m1223b(C5287g.m1076c(stringExtra2));
                this.f22292ah.m1063a(c5207c);
                try {
                    this.f22314e.mo986a(2131296528, C5181b.m1256a(this.f22314e), true);
                } catch (NullPointerException e2) {
                }
            }
            this.f22311b.setRefreshing(true);
            this.f22312c.setRefreshing(true);
            mo953a();
        }
    }

    @Override // com.unknownphone.callblocker.p186d.C5292d.AbstractC5295b
    /* renamed from: a */
    public void mo951a(int i, String str, boolean z) {
        this.f22304at = i == 0;
        if (i == 0) {
            this.f22315f.setView(4);
            this.f22311b.setRefreshing(false);
            this.f22312c.setRefreshing(false);
        } else if (TextUtils.isEmpty(str) || z) {
            this.f22315f.setView(2);
            this.f22311b.setRefreshing(false);
            this.f22312c.setRefreshing(false);
        } else {
            JSONObject jSONObject = new JSONObject(str);
            this.f22307aw = jSONObject.getString("phone_owner");
            if (!TextUtils.isEmpty(this.f22307aw)) {
                if (m19924p() != null) {
                    this.f22313d.setText(C5287g.m1093a(m19924p(), 2131755512, this.f22307aw));
                }
                this.f22306av.setVisibility(0);
            } else {
                this.f22306av.setVisibility(8);
            }
            int optInt = jSONObject.optInt("total_comments");
            this.f22303as.m955a(String.valueOf(optInt));
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("comments");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    this.f22301aq.add(new C5361c(jSONArray.getJSONObject(i2)));
                }
            } catch (JSONException e) {
            }
            if ((!this.f22305au && optInt > 5) || (this.f22305au && optInt > 20)) {
                this.f22301aq.add(null);
            }
            this.f22303as.m19041d();
            m945a(this.f22310az, false);
            this.f22311b.setRefreshing(false);
            this.f22312c.setRefreshing(false);
            if (!this.f22292ah.m1061a(this.f22310az)) {
                C5287g.m1080b(this.f22291ag, 5);
                m944as();
            }
            C5296a c5296a = new C5296a();
            c5296a.m1034b(System.currentTimeMillis());
            c5296a.m1036a((short) 1);
            c5296a.m1037a(TextUtils.isEmpty(this.f22307aw) ? m19959b(2131755530) : this.f22307aw);
            c5296a.m1033b(this.f22310az);
            c5296a.m1039a(1);
            this.f22292ah.m1062a(c5296a);
            try {
                this.f22314e.mo986a(2131296530, C5302c.m1021a(this.f22314e), false);
                this.f22314e.mo986a(2131296531, C5330a.m975a(this.f22314e), false);
            } catch (NullPointerException e2) {
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo950a(int i, String[] strArr, int[] iArr) {
        if (i != 763) {
            super.mo950a(i, strArr, iArr);
            return;
        }
        this.f22294aj.setEnabled(true);
        this.f22296al.setEnabled(true);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        TelephonyManager telephonyManager = (TelephonyManager) view.getContext().getSystemService("phone");
        this.f22302ar = telephonyManager == null ? null : telephonyManager.getSimCountryIso();
        this.f22300ap = C5289a.m1069a(this.f22302ar);
        this.f22292ah = new C5290b(view.getContext());
        this.f22297am = C5292d.m1044a();
        this.f22291ag = view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f22305au = this.f22291ag.contains("subscription_ends_at");
        this.f22293ai = C5287g.m1088a(this.f22291ag.getString("language_code", Locale.getDefault().getLanguage()));
        this.f22309ay = this.f22291ag.getString("api_key", "");
        m944as();
        this.f22301aq = new ArrayList();
        this.f22303as = new C5343a(this.f22301aq, this.f22305au, new AbstractC5286f() { // from class: com.unknownphone.callblocker.i.b.1
            @Override // com.unknownphone.callblocker.custom.AbstractC5286f
            /* renamed from: a */
            public void mo926a() {
                if (!C5347b.this.f22305au) {
                    Intent intent = new Intent(C5347b.this.m19922r(), PremiumActivity.class);
                    intent.putExtra("show_premium_tab", true);
                    C5347b.this.startActivityForResult(intent, 939);
                } else if (((String) C5347b.this.f22293ai.first).equals(C5282b.f22118b.first)) {
                    C5347b.this.m19989a(new Intent("android.intent.action.VIEW", Uri.parse("https://www.listaspam.com/busca.php?Telefono=" + C5287g.m1090a(C5347b.this.f22298an.getText()))));
                } else if (((String) C5347b.this.f22293ai.first).equals(C5282b.f22117a.first)) {
                    C5347b.this.m19989a(new Intent("android.intent.action.VIEW", Uri.parse("https://www.unknownphone.com/search.php?num=" + C5287g.m1090a(C5347b.this.f22298an.getText()))));
                } else {
                    C5347b.this.m19989a(new Intent("android.intent.action.VIEW", Uri.parse("https://" + C5282b.m1100a((String) C5347b.this.f22293ai.first).toLowerCase() + ".unknownphone.com/search.php?num=" + C5287g.m1090a(C5347b.this.f22298an.getText()))));
                }
            }
        });
        this.f22317h = new LinearLayoutManager(view.getContext());
        this.f22299ao.addItemDecoration(new C0975d(view.getContext(), 1));
        this.f22299ao.setNestedScrollingEnabled(false);
        this.f22299ao.setLayoutManager(this.f22317h);
        this.f22299ao.setAdapter(this.f22303as);
        this.f22311b.setColorSchemeResources(2131099673, 2131099673, 2131099673);
        this.f22312c.setColorSchemeResources(2131099673, 2131099673, 2131099673);
        this.f22311b.setOnRefreshListener(this);
        this.f22312c.setOnRefreshListener(this);
        if (this.f22305au) {
            this.f22308ax.setVisibility(8);
        } else {
            this.f22308ax.mo14816a(new C2282d.C2283a().m14841a());
        }
        this.f22318i.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5347b.this.m935f();
            }
        });
        this.f22298an.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.unknownphone.callblocker.i.b.7
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean z;
                if (i == 3) {
                    if (C5347b.this.m19922r() != null) {
                        C5287g.m1097a((Activity) C5347b.this.m19922r());
                    }
                    C5347b.this.m935f();
                    z = true;
                } else {
                    z = false;
                }
                return z;
            }
        });
        this.f22295ak.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TextUtils.isEmpty(C5347b.this.f22310az)) {
                    Snackbar.m2495a(view2, 2131755518, -1).mo2491d();
                    return;
                }
                Intent intent = new Intent(C5347b.this.m19922r(), ReportActivity.class);
                intent.putExtra("number", C5347b.this.f22310az);
                C5347b.this.startActivityForResult(intent, 261);
            }
        });
        this.f22294aj.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5347b.this.m942au();
            }
        });
        this.f22296al.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5347b.this.m943at();
            }
        });
        this.f22306av.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.b.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
            }
        });
        if (!TextUtils.isEmpty(this.f22310az)) {
            this.f22298an.setText(this.f22310az);
            m945a(this.f22310az, true);
        }
        m933g();
        if (!C5287g.m1071e(view.getContext()).isEmpty()) {
            this.f22294aj.setEnabled(false);
            this.f22296al.setEnabled(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: b */
    public void mo940b(boolean z) {
        super.mo940b(z);
        if (!z) {
            m945a(this.f22310az, this.f22315f.getIndex() == 3);
        }
    }
}
