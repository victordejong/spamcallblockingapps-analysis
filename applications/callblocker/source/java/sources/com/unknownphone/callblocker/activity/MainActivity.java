package com.unknownphone.callblocker.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.ActivityC0116c;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.C0456a;
import androidx.fragment.app.AbstractC0695o;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.C2298i;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.bottomnavigation.C4554a;
import com.google.android.material.bottomnavigation.C4557c;
import com.google.android.material.bottomsheet.DialogC4570a;
import com.p064b.p065a.p066a.p067a.C1332c;
import com.p064b.p065a.p066a.p067a.C1342h;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p180a.C5181b;
import com.unknownphone.callblocker.p180a.C5207c;
import com.unknownphone.callblocker.p185c.C5264a;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import com.unknownphone.callblocker.p187e.C5302c;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import com.unknownphone.callblocker.p189g.C5329a;
import com.unknownphone.callblocker.p190h.C5330a;
import com.unknownphone.callblocker.p191i.C5347b;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONException;
import retrofit2.AbstractC5586b;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/MainActivity.class */
public class MainActivity extends ActivityC0116c implements C1332c.AbstractC1335b, AbstractC5328a {

    /* renamed from: k */
    static final /* synthetic */ boolean f21927k;

    /* renamed from: l */
    private static final String f21928l;

    /* renamed from: A */
    private Fragment f21929A;

    /* renamed from: B */
    private Fragment f21930B;

    /* renamed from: C */
    private Fragment f21931C;

    /* renamed from: D */
    private Handler f21932D;

    /* renamed from: E */
    private AbstractC5586b f21933E;

    /* renamed from: m */
    private BottomNavigationView f21934m;

    /* renamed from: n */
    private List<Short> f21935n;

    /* renamed from: o */
    private Stack<Fragment> f21936o;

    /* renamed from: p */
    private ViewSwitchLayout f21937p;

    /* renamed from: q */
    private C1332c f21938q;

    /* renamed from: r */
    private SharedPreferences f21939r;

    /* renamed from: s */
    private SharedPreferences f21940s;

    /* renamed from: t */
    private C2298i f21941t;

    /* renamed from: u */
    private C5290b f21942u;

    /* renamed from: v */
    private C5292d f21943v;

    /* renamed from: w */
    private boolean f21944w;

    /* renamed from: x */
    private Fragment f21945x;

    /* renamed from: y */
    private Fragment f21946y;

    /* renamed from: z */
    private Fragment f21947z;

    static {
        f21927k = !MainActivity.class.desiredAssertionStatus();
        f21928l = MainActivity.class.getSimpleName();
    }

    /* renamed from: a */
    private void m1212a(final String str) {
        this.f21940s.edit().putInt("review_condition_deep_link", 0).apply();
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492935);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296709);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) dialog.findViewById(2131296711);
        AppCompatImageView appCompatImageView = (AppCompatImageView) dialog.findViewById(2131296492);
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) dialog.findViewById(2131296597);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296566);
        AppCompatButton appCompatButton2 = (AppCompatButton) dialog.findViewById(2131296599);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) dialog.findViewById(2131296392);
        final String string = this.f21940s.getString("person_from_deep_link", null);
        String string2 = this.f21940s.getString("language_from_deep_link", null);
        boolean z = string2 != null && string2.toLowerCase().equals(C5282b.f22118b.first);
        if (!TextUtils.isEmpty(string)) {
            appCompatTextView3.setText(string);
            appCompatTextView3.setVisibility(0);
        }
        appCompatTextView.setText(str);
        appCompatTextView2.setText(C5287g.m1093a(this, 2131755182, str));
        appCompatImageView.setImageResource(z ? 2131230918 : 2131230916);
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.MainActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C5207c c5207c = new C5207c();
                c5207c.m1225a((short) 3);
                c5207c.m1226a(string == null ? MainActivity.this.getString(2131755530) : string);
                c5207c.m1223b(C5287g.m1076c(str));
                MainActivity.this.f21942u.m1063a(c5207c);
                MainActivity.this.f21940s.edit().putInt("review_condition_deep_link", 1).apply();
                MainActivity.this.m1207e(64);
                try {
                    MainActivity.this.mo986a(2131296528, (Fragment) C5181b.m1256a((AbstractC5328a) MainActivity.this), true);
                } catch (NullPointerException e) {
                }
                dialog.dismiss();
            }
        });
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.activity.MainActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.unknownphone.callblocker.activity.MainActivity.8
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                MainActivity.this.f21940s.edit().putInt("review_condition_deep_link", MainActivity.this.f21940s.getInt("review_condition_deep_link", -1) + 3).apply();
                MainActivity.this.m1191v();
            }
        });
        dialog.show();
    }

    /* renamed from: a */
    private boolean m1211a(List<Short> list) {
        return list.size() >= 2 && list.get(list.size() - 1).shortValue() == 10 && list.get(list.size() - 2).shortValue() == 0;
    }

    /* renamed from: o */
    private void m1198o() {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    /* renamed from: p */
    private void m1197p() {
        String m1073d = C5287g.m1073d(m1196q());
        if (TextUtils.isEmpty(m1073d) || C5287g.m1076c(this.f21940s.getString("last_copied", "")).equals(m1073d)) {
            return;
        }
        this.f21940s.edit().putString("last_copied", m1073d).apply();
        if (this.f21942u.m1053b(m1073d)) {
            return;
        }
        Intent intent = new Intent(this, ClipboardActivity.class);
        intent.putExtra("number", m1073d);
        startActivityForResult(intent, 1029);
    }

    /* renamed from: q */
    private String m1196q() {
        String str;
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
        if (clipboardManager != null && clipboardManager.hasPrimaryClip()) {
            ClipDescription primaryClipDescription = clipboardManager.getPrimaryClipDescription();
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            if (primaryClipDescription != null && primaryClip != null && primaryClipDescription.hasMimeType("text/plain")) {
                try {
                    str = primaryClip.getItemAt(0).getText().toString();
                } catch (NullPointerException e) {
                }
                return str;
            }
        }
        str = null;
        return str;
    }

    /* renamed from: r */
    public void m1195r() {
        this.f21946y = C5302c.m1021a((AbstractC5328a) this);
        this.f21947z = C5347b.m949a((AbstractC5328a) this);
        this.f21929A = C5181b.m1256a((AbstractC5328a) this);
        this.f21930B = C5264a.m1133a((AbstractC5328a) this);
        this.f21931C = C5330a.m975a((AbstractC5328a) this);
        this.f21945x = this.f21946y;
        m19874m().mo19803a().m19664a(2131296465, this.f21946y).m19664a(2131296465, this.f21947z).mo19654b(this.f21947z).m19664a(2131296465, this.f21929A).mo19654b(this.f21929A).m19664a(2131296465, this.f21930B).mo19654b(this.f21930B).m19664a(2131296465, this.f21931C).mo19654b(this.f21931C).mo19649e();
        C5287g.m1096a(this, this.f21937p);
        this.f21934m.setSelectedItemId(2131296530);
        this.f21937p.setView(0);
        long j = this.f21940s.getLong("spam_numbers_last_update", 0L);
        if (this.f21940s.getBoolean("just_became_premium", false) || this.f21940s.getBoolean("just_became_aware", false) || this.f21940s.getBoolean("just_became_free", false) || System.currentTimeMillis() - j > 604800000) {
            m1194s();
        }
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString("purchase_source");
            if (!TextUtils.isEmpty(string)) {
                if (!f21927k && string == null) {
                    throw new AssertionError();
                }
                boolean z = true;
                switch (string.hashCode()) {
                    case -2043967041:
                        if (string.equals("purchase_source_protection")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1244190089:
                        if (string.equals("purchase_source_global")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1580873614:
                        if (string.equals("purchase_source_search")) {
                            z = false;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        try {
                            mo986a(2131296532, (Fragment) C5347b.m948a(this, extras.getString("number")), true);
                            break;
                        } catch (NullPointerException e) {
                            break;
                        }
                    case true:
                        this.f21934m.setSelectedItemId(2131296529);
                        break;
                    case true:
                        this.f21934m.setSelectedItemId(2131296531);
                        break;
                }
            }
        }
        if (this.f21940s.getBoolean("block_all_calls", false)) {
            View inflate = getLayoutInflater().inflate(2131492937, (ViewGroup) null);
            ((AppCompatTextView) inflate.findViewById(2131296708)).setText(getText(2131755611));
            DialogC4570a dialogC4570a = new DialogC4570a(this);
            dialogC4570a.setContentView(inflate);
            dialogC4570a.show();
        }
        m1197p();
    }

    /* renamed from: s */
    private void m1194s() {
        HashMap hashMap = new HashMap();
        hashMap.put("_action", "_get_dangerous_phones_list");
        hashMap.put("api_key", C5287g.m1076c(this.f21940s.getString("api_key", "")));
        hashMap.put("region", C5287g.m1076c(this.f21940s.getString("region_code", C5287g.m1095a((Context) this))).toUpperCase());
        hashMap.put("lang", C5282b.m1100a((String) C5287g.m1088a(this.f21940s.getString("language_code", Locale.getDefault().getLanguage())).first));
        hashMap.put("user_type", this.f21940s.contains("subscription_ends_at") ? "premium" : "free");
        hashMap.put("device", "Android");
        hashMap.put("country_code", C5287g.m1075c(this.f21940s.getString("region_code", C5287g.m1095a((Context) this)), "O1"));
        this.f21933E = this.f21943v.m1042a(hashMap, new C5292d.AbstractC5295b() { // from class: com.unknownphone.callblocker.activity.MainActivity.4
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00b7 -> B:15:0x0049). Please submit an issue!!! */
            @Override // com.unknownphone.callblocker.p186d.C5292d.AbstractC5295b
            /* renamed from: a */
            public void mo951a(int i, String str, boolean z) {
                JSONArray jSONArray;
                if (TextUtils.isEmpty(str) || z) {
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
                try {
                    MainActivity.this.f21942u.m1051b(arrayList);
                    MainActivity.this.f21940s.edit().putLong("spam_numbers_last_update", System.currentTimeMillis()).putBoolean("just_became_premium", false).putBoolean("just_became_aware", false).putBoolean("just_became_free", false).apply();
                    try {
                        MainActivity.this.mo986a(2131296531, C5330a.m975a((AbstractC5328a) MainActivity.this), MainActivity.this.f21945x instanceof C5330a);
                    } catch (NullPointerException e3) {
                    }
                } catch (SQLiteDatabaseLockedException e4) {
                }
            }
        });
    }

    /* renamed from: t */
    private void m1193t() {
        Log.d("MainActivity", "showDots() was called.");
        C4557c c4557c = (C4557c) this.f21934m.getChildAt(0);
        for (int i = 0; i < 5; i++) {
            if (i != 1) {
                LayoutInflater.from(this).inflate(2131492961, (ViewGroup) ((C4554a) c4557c.getChildAt(i)), true);
            }
        }
    }

    /* renamed from: u */
    private void m1192u() {
        Log.d("MainActivity", "hideDots() was called.");
        C4557c c4557c = (C4557c) this.f21934m.getChildAt(0);
        for (int i = 0; i < 5; i++) {
            if (i != 1) {
                C4554a c4554a = (C4554a) c4557c.getChildAt(i);
                for (int childCount = c4554a.getChildCount(); childCount > 2; childCount--) {
                    c4554a.removeViewAt(childCount - 1);
                }
            }
        }
    }

    /* renamed from: v */
    public void m1191v() {
        if (this.f21946y != null) {
            try {
                ((C5302c) this.f21946y).m1027a();
            } catch (Exception e) {
            }
        }
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: B_ */
    public void mo845B_() {
        Log.d(f21928l, "onBillingInitialized() was called.");
        this.f21932D.removeCallbacksAndMessages(null);
        this.f21938q.m17444f();
        C1342h m17447d = this.f21938q.m17447d("inapp.unknownphone.callblocker1");
        C1342h m17447d2 = this.f21938q.m17447d("inapp.unknownphone.callblocker2");
        C1342h m17447d3 = this.f21938q.m17447d("inapp.unknownphone.callblocker3");
        boolean z = m17447d != null && m17447d.f4432e.f4422c.f4419h;
        boolean z2 = m17447d2 != null && m17447d2.f4432e.f4422c.f4419h;
        boolean z3 = m17447d3 != null && m17447d3.f4432e.f4422c.f4419h;
        boolean contains = this.f21940s.contains("subscription_ends_at");
        if (!z && !z2 && !z3) {
            this.f21940s.edit().putBoolean("just_became_free", contains).remove("subscription_ends_at").remove("block_unknown_calls").putBoolean("identify_spam_calls", false).putBoolean("block_spam_calls", true).apply();
        } else if (z2) {
            Date date = m17447d2.f4432e.f4422c.f4415d;
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(2, 3);
            this.f21940s.edit().putLong("subscription_ends_at", calendar.getTimeInMillis()).apply();
        } else if (z) {
            Date date2 = m17447d.f4432e.f4422c.f4415d;
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(date2);
            calendar2.add(2, 1);
            this.f21940s.edit().putLong("subscription_ends_at", calendar2.getTimeInMillis()).apply();
        } else {
            Date date3 = m17447d3.f4432e.f4422c.f4415d;
            Calendar calendar3 = Calendar.getInstance();
            calendar3.setTime(date3);
            calendar3.add(2, 3);
            calendar3.add(6, 7);
            this.f21940s.edit().putLong("subscription_ends_at", calendar3.getTimeInMillis()).apply();
        }
        m1195r();
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo844a() {
    }

    @Override // com.unknownphone.callblocker.p188f.AbstractC5328a
    /* renamed from: a */
    public void mo986a(int i, Fragment fragment, boolean z) {
        switch (i) {
            case 2131296528:
                AbstractC0695o mo19803a = m19874m().mo19803a();
                while (!this.f21936o.empty()) {
                    mo19803a.mo19661a(this.f21936o.pop());
                }
                mo19803a.mo19661a(this.f21929A);
                this.f21929A = fragment;
                mo19803a.m19664a(2131296465, this.f21929A).mo19654b(this.f21929A).mo19649e();
                break;
            case 2131296529:
                AbstractC0695o mo19803a2 = m19874m().mo19803a();
                while (!this.f21936o.empty()) {
                    mo19803a2.mo19661a(this.f21936o.pop());
                }
                mo19803a2.mo19661a(this.f21930B);
                this.f21930B = fragment;
                mo19803a2.m19664a(2131296465, this.f21930B).mo19654b(this.f21930B).mo19649e();
                break;
            case 2131296530:
                AbstractC0695o mo19803a3 = m19874m().mo19803a();
                while (!this.f21936o.empty()) {
                    mo19803a3.mo19661a(this.f21936o.pop());
                }
                mo19803a3.mo19661a(this.f21946y);
                this.f21946y = fragment;
                mo19803a3.m19664a(2131296465, this.f21946y).mo19654b(this.f21946y).mo19649e();
                break;
            case 2131296531:
                AbstractC0695o mo19803a4 = m19874m().mo19803a();
                while (!this.f21936o.empty()) {
                    mo19803a4.mo19661a(this.f21936o.pop());
                }
                mo19803a4.mo19661a(this.f21931C);
                this.f21931C = fragment;
                mo19803a4.m19664a(2131296465, this.f21931C).mo19654b(this.f21931C).mo19649e();
                break;
            case 2131296532:
                AbstractC0695o mo19803a5 = m19874m().mo19803a();
                while (!this.f21936o.empty()) {
                    mo19803a5.mo19661a(this.f21936o.pop());
                }
                mo19803a5.mo19661a(this.f21947z);
                this.f21947z = fragment;
                mo19803a5.m19664a(2131296465, this.f21947z).mo19654b(this.f21947z).mo19649e();
                break;
        }
        C5287g.m1096a(this, this.f21937p);
        if (z) {
            this.f21934m.setSelectedItemId(i);
        }
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo843a(int i, Throwable th) {
        Log.d(f21928l, "onBillingError() was called.");
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo842a(String str, C1342h c1342h) {
    }

    @Override // com.unknownphone.callblocker.p188f.AbstractC5328a
    /* renamed from: b */
    public void mo985b(Fragment fragment) {
        this.f21936o.add(fragment);
        m19874m().mo19803a().m19666a(2130772001, 2130772000).m19664a(2131296465, fragment).mo19649e();
    }

    @Override // com.unknownphone.callblocker.p188f.AbstractC5328a
    /* renamed from: d */
    public void mo984d(int i) {
        AbstractC0695o mo19803a = m19874m().mo19803a();
        mo19803a.m19666a(2130772001, 2130772000);
        for (int i2 = 0; i2 < i && !this.f21936o.empty(); i2++) {
            mo19803a.mo19661a(this.f21936o.pop());
        }
        mo19803a.mo19649e();
    }

    /* renamed from: e */
    public void m1207e(int i) {
        if (this.f21939r.contains("feedback") || this.f21940s.getBoolean("left_feedback", false)) {
            return;
        }
        boolean z = (this.f21940s.getInt("review_condition_deep_link", -1) == 1 || this.f21940s.getInt("review_condition_deep_link", -1) == 4) && this.f21940s.getInt("review_condition_sync", -1) != 1;
        boolean z2 = false;
        if (this.f21940s.getInt("review_condition_deep_link", -1) != 0) {
            z2 = false;
            if (this.f21940s.getInt("review_condition_deep_link", -1) != 3) {
                z2 = false;
                if (this.f21940s.getInt("review_condition_sync", -1) == 2) {
                    z2 = true;
                }
            }
        }
        if (!z && !z2) {
            return;
        }
        this.f21940s.edit().putBoolean("left_feedback", true).apply();
        Log.d("FeedbackActivity", "Came out of door #" + i + ".");
        startActivity(new Intent(this, FeedbackActivity.class));
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1029 || i2 != -1 || intent == null) {
            if (i != 1234) {
                super.onActivityResult(i, i2, intent);
                return;
            } else if (!(this.f21931C instanceof C5330a)) {
                return;
            } else {
                try {
                    this.f21931C.mo952a(i, i2, intent);
                    return;
                } catch (Exception e) {
                    return;
                }
            }
        }
        String stringExtra = intent.getStringExtra("number");
        String stringExtra2 = intent.getStringExtra("action");
        if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra2)) {
            return;
        }
        if (stringExtra2.equals("action_search")) {
            try {
                mo986a(2131296532, (Fragment) C5347b.m948a(this, stringExtra), true);
            } catch (NullPointerException e2) {
            }
        } else if (!stringExtra2.equals("action_block")) {
        } else {
            C5207c c5207c = new C5207c();
            c5207c.m1225a((short) 3);
            c5207c.m1226a(getString(2131755530));
            c5207c.m1223b(C5287g.m1076c(stringExtra));
            this.f21942u.m1063a(c5207c);
            try {
                mo986a(2131296528, (Fragment) C5181b.m1256a((AbstractC5328a) this), true);
            } catch (NullPointerException e3) {
            }
        }
    }

    @Override // androidx.activity.ActivityC0078b, android.app.Activity
    public void onBackPressed() {
        if (this.f21936o.empty()) {
            super.onBackPressed();
            return;
        }
        AbstractC0695o mo19803a = m19874m().mo19803a();
        mo19803a.m19666a(2130772001, 2130772000);
        mo19803a.mo19661a(this.f21936o.pop());
        mo19803a.mo19649e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0274, code lost:
        if (androidx.core.app.C0456a.m20821a((android.app.Activity) r10, "android.permission.ANSWER_PHONE_CALLS") == false) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0299  */
    @Override // androidx.appcompat.app.ActivityC0116c, androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unknownphone.callblocker.activity.MainActivity.onCreate(android.os.Bundle):void");
    }

    @Override // androidx.appcompat.app.ActivityC0116c, androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onDestroy() {
        if (this.f21933E != null) {
            this.f21933E.mo99b();
        }
        if (this.f21932D != null) {
            this.f21932D.removeCallbacksAndMessages(null);
        }
        if (this.f21938q != null) {
            this.f21938q.m17448d();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity, androidx.core.app.C0456a.AbstractC0458a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            } else if (iArr[i2] != 0) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (i != 763) {
            super.onRequestPermissionsResult(i, strArr, iArr);
            return;
        }
        this.f21935n.add(Short.valueOf((!C0456a.m20821a((Activity) this, "android.permission.CALL_PHONE") || !C0456a.m20821a((Activity) this, "android.permission.READ_CALL_LOG") || !C0456a.m20821a((Activity) this, "android.permission.READ_PHONE_STATE") || (Build.VERSION.SDK_INT >= 28 && !C0456a.m20821a((Activity) this, "android.permission.ANSWER_PHONE_CALLS"))) ? (short) 10 : (short) 11));
        if (z) {
            if (!m1211a(this.f21935n)) {
                return;
            }
            m1198o();
            return;
        }
        try {
            this.f21946y.mo950a(i, strArr, iArr);
            this.f21947z.mo950a(i, strArr, iArr);
            this.f21929A.mo950a(i, strArr, iArr);
            this.f21930B.mo950a(i, strArr, iArr);
            this.f21931C.mo950a(i, strArr, iArr);
            m1192u();
            ((C5302c) this.f21946y).m1012d();
        } catch (NullPointerException e) {
        }
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f21944w) {
            m1197p();
        } else {
            this.f21944w = true;
        }
        if (!C5287g.m1071e(this).isEmpty()) {
            m1193t();
        }
    }
}
