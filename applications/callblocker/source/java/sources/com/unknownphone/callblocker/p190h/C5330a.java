package com.unknownphone.callblocker.p190h;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p017a.C0438a;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.C2282d;
import com.google.android.gms.ads.C2343k;
import com.google.android.gms.ads.reward.AbstractC2392b;
import com.google.android.gms.ads.reward.AbstractC2393c;
import com.google.android.gms.ads.reward.AbstractC2394d;
import com.google.android.material.snackbar.Snackbar;
import com.unknownphone.callblocker.activity.CreditActivity;
import com.unknownphone.callblocker.activity.MainActivity;
import com.unknownphone.callblocker.activity.NoCreditsActivity;
import com.unknownphone.callblocker.activity.PermissionActivity;
import com.unknownphone.callblocker.activity.PremiumActivity;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import com.unknownphone.callblocker.p189g.C5329a;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import retrofit2.AbstractC5586b;
/* renamed from: com.unknownphone.callblocker.h.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/h/a.class */
public class C5330a extends Fragment implements AbstractC2394d {

    /* renamed from: a */
    private AppCompatTextView f22239a;

    /* renamed from: ae */
    private AppCompatTextView f22240ae;

    /* renamed from: af */
    private AppCompatTextView f22241af;

    /* renamed from: ag */
    private AbstractC5328a f22242ag;

    /* renamed from: ah */
    private ViewSwitchLayout f22243ah;

    /* renamed from: ai */
    private AppCompatButton f22244ai;

    /* renamed from: aj */
    private AbstractC2393c f22245aj;

    /* renamed from: ak */
    private SharedPreferences f22246ak;

    /* renamed from: al */
    private C5290b f22247al;

    /* renamed from: am */
    private C5292d f22248am;

    /* renamed from: an */
    private View f22249an;

    /* renamed from: ao */
    private View f22250ao;

    /* renamed from: ap */
    private View f22251ap;

    /* renamed from: aq */
    private View f22252aq;

    /* renamed from: ar */
    private View f22253ar;

    /* renamed from: as */
    private View f22254as;

    /* renamed from: at */
    private View f22255at;

    /* renamed from: au */
    private View f22256au;

    /* renamed from: av */
    private AbstractC5586b f22257av;

    /* renamed from: b */
    private AppCompatTextView f22258b;

    /* renamed from: c */
    private AppCompatTextView f22259c;

    /* renamed from: d */
    private AppCompatTextView f22260d;

    /* renamed from: e */
    private AppCompatTextView f22261e;

    /* renamed from: f */
    private AppCompatImageButton f22262f;

    /* renamed from: g */
    private AppCompatImageButton f22263g;

    /* renamed from: h */
    private AppCompatTextView f22264h;

    /* renamed from: i */
    private AppCompatTextView f22265i;

    @SuppressLint({"ValidFragment"})
    /* renamed from: a */
    public static C5330a m975a(AbstractC5328a abstractC5328a) {
        C5330a c5330a = new C5330a();
        c5330a.f22242ag = abstractC5328a;
        return c5330a;
    }

    /* renamed from: a */
    public void m971a(boolean z) {
        Intent intent = new Intent(m19922r(), PremiumActivity.class);
        intent.putExtra("show_premium_tab", z);
        startActivityForResult(intent, 174);
    }

    /* renamed from: as */
    public void m970as() {
        this.f22256au.setVisibility(0);
        HashMap hashMap = new HashMap();
        hashMap.put("_action", "_get_dangerous_phones_list");
        hashMap.put("api_key", C5287g.m1076c(this.f22246ak.getString("api_key", "")));
        hashMap.put("region", C5287g.m1076c(this.f22246ak.getString("region_code", C5287g.m1095a(m19924p()))).toUpperCase());
        hashMap.put("lang", C5282b.m1100a((String) C5287g.m1088a(this.f22246ak.getString("language_code", Locale.getDefault().getLanguage())).first));
        hashMap.put("user_type", this.f22246ak.contains("subscription_ends_at") ? "premium" : "free");
        hashMap.put("device", "Android");
        hashMap.put("country_code", C5287g.m1075c(this.f22246ak.getString("region_code", C5287g.m1095a(m19924p())), "O1"));
        this.f22257av = this.f22248am.m1042a(hashMap, new C5292d.AbstractC5295b() { // from class: com.unknownphone.callblocker.h.a.4
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00da -> B:15:0x0049). Please submit an issue!!! */
            @Override // com.unknownphone.callblocker.p186d.C5292d.AbstractC5295b
            /* renamed from: a */
            public void mo951a(int i, String str, boolean z) {
                JSONArray jSONArray;
                if (TextUtils.isEmpty(str) || z) {
                    Snackbar.m2495a(C5330a.this.f22256au, 2131755053, -1).mo2491d();
                    C5330a.this.f22256au.setVisibility(8);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                try {
                    jSONArray = new JSONArray(str);
                } catch (JSONException e) {
                    jSONArray = null;
                }
                for (int i2 = 0; jSONArray != null && i2 < jSONArray.length(); i2++) {
                    try {
                        arrayList.add(new C5329a(jSONArray.getJSONObject(i2)));
                    } catch (JSONException e2) {
                    }
                }
                C5330a.this.f22247al.m1051b(arrayList);
                C5330a.this.f22246ak.edit().putLong("spam_numbers_last_update", System.currentTimeMillis()).apply();
                if (C5330a.this.m19924p() != null) {
                    C5330a.this.m969b(C5330a.this.m19924p());
                }
                C5330a.this.f22256au.setVisibility(8);
                if (C5330a.this.m19924p() == null) {
                    return;
                }
                Toast.makeText(C5330a.this.m19924p(), 2131755390, 0).show();
            }
        });
        CustomApplication.m1110a("Dangerous phone list manually updated by user.");
    }

    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: b */
    public void m969b(Context context) {
        boolean contains = this.f22246ak.contains("subscription_ends_at");
        if (contains) {
            this.f22255at.setVisibility(8);
            this.f22251ap.setVisibility(0);
            Calendar calendar = Calendar.getInstance();
            long timeInMillis = calendar.getTimeInMillis();
            calendar.setTimeInMillis(this.f22246ak.getLong("subscription_ends_at", timeInMillis));
            char days = TimeUnit.MILLISECONDS.toDays(calendar.getTimeInMillis() - timeInMillis);
            AppCompatTextView appCompatTextView = this.f22240ae;
            if (days <= 0) {
                days = 1;
            }
            appCompatTextView.setText(C5287g.m1093a(context, 2131755445, Long.valueOf(days)));
            this.f22252aq.setVisibility(8);
            this.f22253ar.setVisibility(8);
            this.f22250ao.setVisibility(0);
        } else {
            this.f22255at.setVisibility(0);
            this.f22251ap.setVisibility(8);
            int i = this.f22246ak.getInt("credits", 0);
            this.f22241af.setText(String.valueOf(i));
            this.f22252aq.setVisibility(i == 0 ? 8 : 0);
            this.f22253ar.setVisibility(i == 0 ? 0 : 8);
            this.f22250ao.setVisibility(8);
            if (i == 0) {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setFirstDayOfWeek(2);
                long timeInMillis2 = calendar2.getTimeInMillis();
                calendar2.set(7, 1);
                char days2 = TimeUnit.MILLISECONDS.toDays(calendar2.getTimeInMillis() - timeInMillis2);
                AppCompatTextView appCompatTextView2 = this.f22259c;
                if (days2 <= 0) {
                    days2 = 7;
                }
                appCompatTextView2.setText(C5287g.m1093a(context, 2131755401, Long.valueOf(days2)));
            } else {
                this.f22258b.setText(2131755400);
            }
        }
        this.f22261e.setText(C5287g.m1093a(context, 2131755387, Long.valueOf(this.f22247al.m1048c("spam_number"))));
        this.f22265i.setText(C5287g.m1093a(context, 2131755392, C5287g.m1092a(context, new Date(this.f22246ak.getLong("spam_numbers_last_update", System.currentTimeMillis())))));
        boolean z = this.f22246ak.getBoolean("identify_spam_calls", false);
        boolean z2 = this.f22246ak.getBoolean("block_spam_calls", true);
        this.f22239a.setText(m19998a(2131755413));
        this.f22260d.setText(m19998a(2131755412));
        this.f22264h.setText(m19998a(2131755410));
        this.f22260d.setPadding(this.f22260d.getPaddingLeft(), this.f22260d.getPaddingTop(), (z ? 0 : C5287g.m1094a(context, 36.0f)) + this.f22260d.getPaddingLeft(), this.f22260d.getPaddingBottom());
        this.f22264h.setPadding(this.f22264h.getPaddingLeft(), this.f22264h.getPaddingTop(), (z2 ? 0 : C5287g.m1094a(context, 36.0f)) + this.f22264h.getPaddingLeft(), this.f22264h.getPaddingBottom());
        Drawable[] compoundDrawables = this.f22260d.getCompoundDrawables();
        Drawable[] compoundDrawables2 = this.f22264h.getCompoundDrawables();
        this.f22260d.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], z ? C0438a.m20900a(context, 2131230902) : null, compoundDrawables[3]);
        this.f22264h.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables2[0], compoundDrawables2[1], z2 ? C0438a.m20900a(context, 2131230902) : null, compoundDrawables2[3]);
        boolean z3 = Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context);
        if (!contains || !z3) {
            this.f22239a.setVisibility(0);
            this.f22260d.setVisibility(8);
        } else {
            this.f22239a.setVisibility(8);
            this.f22260d.setVisibility(0);
        }
        this.f22254as.setVisibility((!contains || z3) ? 8 : 0);
    }

    /* renamed from: g */
    public void m960g() {
        m19989a(new Intent(m19922r(), CreditActivity.class));
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: D_ */
    public void mo980D_() {
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: E_ */
    public void mo979E_() {
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: F_ */
    public void mo978F_() {
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        if (this.f22257av != null) {
            this.f22257av.mo99b();
        }
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492945, viewGroup, false);
        this.f22239a = (AppCompatTextView) inflate.findViewById(2131296485);
        this.f22258b = (AppCompatTextView) inflate.findViewById(2131296468);
        this.f22259c = (AppCompatTextView) inflate.findViewById(2131296755);
        this.f22260d = (AppCompatTextView) inflate.findViewById(2131296486);
        this.f22261e = (AppCompatTextView) inflate.findViewById(2131296576);
        this.f22249an = inflate.findViewById(2131296742);
        this.f22264h = (AppCompatTextView) inflate.findViewById(2131296350);
        this.f22262f = (AppCompatImageButton) inflate.findViewById(2131296466);
        this.f22263g = (AppCompatImageButton) inflate.findViewById(2131296753);
        this.f22265i = (AppCompatTextView) inflate.findViewById(2131296507);
        this.f22240ae = (AppCompatTextView) inflate.findViewById(2131296450);
        this.f22250ao = inflate.findViewById(2131296600);
        this.f22244ai = (AppCompatButton) inflate.findViewById(2131296593);
        this.f22243ah = (ViewSwitchLayout) inflate.findViewById(2131296747);
        this.f22241af = (AppCompatTextView) inflate.findViewById(2131296415);
        this.f22251ap = inflate.findViewById(2131296601);
        this.f22254as = inflate.findViewById(2131296594);
        this.f22252aq = inflate.findViewById(2131296467);
        this.f22253ar = inflate.findViewById(2131296754);
        this.f22255at = inflate.findViewById(2131296469);
        this.f22256au = inflate.findViewById(2131296604);
        return inflate;
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: a */
    public void mo977a() {
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo952a(int i, int i2, Intent intent) {
        if (i != 174) {
            if (i != 1234) {
                super.mo952a(i, i2, intent);
            } else if (m19924p() == null) {
            } else {
                m969b(m19924p());
            }
        } else if (i2 != -1 || m19924p() == null) {
        } else {
            Intent intent2 = new Intent(m19924p().getApplicationContext(), MainActivity.class);
            intent2.putExtra("purchase_source", "purchase_source_protection");
            intent2.addFlags(268468224);
            m19989a(intent2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo950a(int i, String[] strArr, int[] iArr) {
        if (i == 763) {
            this.f22243ah.setView(0);
        } else {
            super.mo950a(i, strArr, iArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22247al = new C5290b(view.getContext());
        this.f22248am = C5292d.m1044a();
        this.f22246ak = view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f22245aj = C2343k.m14720a(view.getContext());
        this.f22245aj.mo7251a(this);
        this.f22245aj.mo7250a("ca-app-pub-4660838923216567/8186769912", new C2282d.C2283a().m14841a());
        this.f22255at.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.m971a(false);
            }
        });
        this.f22252aq.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.m971a(true);
            }
        });
        this.f22253ar.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.m971a(true);
            }
        });
        this.f22251ap.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.m971a(true);
            }
        });
        this.f22262f.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.m960g();
            }
        });
        this.f22263g.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.m960g();
            }
        });
        this.f22264h.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.f22246ak.edit().putBoolean("block_spam_calls", true).apply();
                C5330a.this.f22246ak.edit().putBoolean("identify_spam_calls", false).apply();
                C5330a.this.m969b(view2.getContext());
            }
        });
        this.f22260d.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.f22246ak.edit().putBoolean("block_spam_calls", false).apply();
                C5330a.this.f22246ak.edit().putBoolean("identify_spam_calls", true).apply();
                C5330a.this.m969b(view2.getContext());
            }
        });
        this.f22249an.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5330a.this.f22246ak.contains("subscription_ends_at")) {
                    C5330a.this.m970as();
                } else if (C5330a.this.f22246ak.getInt("credits", 0) < 5) {
                    C5330a.this.startActivityForResult(new Intent(C5330a.this.m19922r(), NoCreditsActivity.class), 174);
                } else if (C5330a.this.f22245aj.mo7252a()) {
                    C5330a.this.f22246ak.edit().putInt("credits", C5330a.this.f22246ak.getInt("credits", 0) - 5).apply();
                    C5330a.this.m969b(view2.getContext());
                    C5330a.this.f22245aj.mo7248b();
                } else if (!C5287g.m1077c(view2.getContext())) {
                    Snackbar.m2494a(view2, C5330a.this.m19959b(2131755298), 0).mo2491d();
                } else {
                    Snackbar.m2494a(view2, C5330a.this.m19959b(2131755612), 0).mo2491d();
                }
            }
        });
        this.f22239a.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (!C5330a.this.f22246ak.contains("subscription_ends_at")) {
                    C5330a.this.m971a(true);
                }
            }
        });
        this.f22244ai.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.h.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5330a.this.startActivityForResult(new Intent(C5330a.this.m19922r(), PermissionActivity.class), 1234);
            }
        });
        this.f22256au.setClickable(true);
        m969b(view.getContext());
        if (!C5287g.m1071e(view.getContext()).isEmpty()) {
            this.f22243ah.setView(1);
        }
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: a */
    public void mo976a(AbstractC2392b abstractC2392b) {
        m970as();
        if (m19924p() != null) {
            m969b(m19924p());
        }
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: b_ */
    public void mo967b_(int i) {
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: d */
    public void mo965d() {
        this.f22245aj.mo7250a("ca-app-pub-4660838923216567/8186769912", new C2282d.C2283a().m14841a());
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2394d
    /* renamed from: f */
    public void mo962f() {
    }
}
