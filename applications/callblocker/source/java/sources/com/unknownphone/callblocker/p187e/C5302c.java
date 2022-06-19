package com.unknownphone.callblocker.p187e;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.C0456a;
import androidx.core.p017a.C0438a;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0975d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.google.android.material.bottomsheet.DialogC4570a;
import com.google.android.material.snackbar.Snackbar;
import com.unknownphone.callblocker.activity.MainActivity;
import com.unknownphone.callblocker.activity.SettingsActivity;
import com.unknownphone.callblocker.custom.AbstractC5285e;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p180a.C5181b;
import com.unknownphone.callblocker.p180a.C5207c;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import com.unknownphone.callblocker.p191i.C5347b;
import com.unknownphone.callblocker.tutorial_other.OtherTutorialActivity;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.AbstractC5586b;
/* renamed from: com.unknownphone.callblocker.e.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/c.class */
public class C5302c extends Fragment {

    /* renamed from: a */
    private AsyncTaskC5327e f22172a;

    /* renamed from: ae */
    private LinearLayoutManager f22173ae;

    /* renamed from: af */
    private AppCompatImageView f22174af;

    /* renamed from: ag */
    private AppCompatTextView f22175ag;

    /* renamed from: ah */
    private AppCompatButton f22176ah;

    /* renamed from: ai */
    private C5290b f22177ai;

    /* renamed from: aj */
    private SharedPreferences f22178aj;

    /* renamed from: ak */
    private AppCompatImageView f22179ak;

    /* renamed from: al */
    private AppCompatEditText f22180al;

    /* renamed from: am */
    private AtomicBoolean f22181am;

    /* renamed from: an */
    private RecyclerView f22182an;

    /* renamed from: ao */
    private ProgressBar f22183ao;

    /* renamed from: ap */
    private View f22184ap;

    /* renamed from: aq */
    private C5297b f22185aq;

    /* renamed from: ar */
    private List<C5296a> f22186ar;

    /* renamed from: as */
    private Handler f22187as;

    /* renamed from: at */
    private AbstractC5586b f22188at;

    /* renamed from: au */
    private int f22189au;

    /* renamed from: b */
    private AsyncTaskC5324c f22190b;

    /* renamed from: c */
    private AppCompatTextView f22191c;

    /* renamed from: d */
    private DialogC4570a f22192d;

    /* renamed from: e */
    private AppCompatImageButton f22193e;

    /* renamed from: f */
    private List<C5323b> f22194f;

    /* renamed from: g */
    private AppCompatImageButton f22195g;

    /* renamed from: h */
    private AbstractC5328a f22196h;

    /* renamed from: i */
    private ViewSwitchLayout f22197i;

    /* renamed from: com.unknownphone.callblocker.e.c$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/c$a.class */
    private static class AsyncTaskC5322a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<C5302c> f22223a;

        /* renamed from: b */
        private C5296a f22224b;

        AsyncTaskC5322a(C5302c c5302c, C5296a c5296a) {
            this.f22223a = new WeakReference<>(c5302c);
            this.f22224b = c5296a;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            C5302c c5302c = this.f22223a.get();
            if (c5302c == null || c5302c.m20021B() || c5302c.m20022A()) {
                return null;
            }
            try {
                new C5290b(c5302c.m19924p()).m1054b(this.f22224b);
                return null;
            } catch (NullPointerException e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Void r2) {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
        }
    }

    /* renamed from: com.unknownphone.callblocker.e.c$b */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/c$b.class */
    public static class C5323b {

        /* renamed from: a */
        String f22225a;

        /* renamed from: b */
        String f22226b;

        C5323b(String str, String str2) {
            this.f22225a = str;
            this.f22226b = str2;
        }
    }

    /* renamed from: com.unknownphone.callblocker.e.c$c */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/c$c.class */
    public static class AsyncTaskC5324c extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<C5302c> f22227a;

        /* renamed from: b */
        private EnumC5325a f22228b;

        /* renamed from: com.unknownphone.callblocker.e.c$c$a */
        /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/c$c$a.class */
        public enum EnumC5325a {
            REFRESH,
            LOAD_MORE
        }

        AsyncTaskC5324c(C5302c c5302c, EnumC5325a enumC5325a) {
            this.f22227a = new WeakReference<>(c5302c);
            this.f22228b = enumC5325a;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            C5302c c5302c = this.f22227a.get();
            if (c5302c == null || c5302c.m20021B() || c5302c.m20022A()) {
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList(new C5290b(c5302c.m19924p()).m1064a(C5302c.m1001l(c5302c), 50));
                c5302c.f22186ar.remove((Object) null);
                c5302c.f22186ar.addAll(arrayList);
                c5302c.f22181am.set(arrayList.size() >= 50);
                return null;
            } catch (NullPointerException e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Void r4) {
            C5302c c5302c = this.f22227a.get();
            if (c5302c == null || c5302c.m20021B() || c5302c.m20022A()) {
                return;
            }
            try {
                if (c5302c.f22181am.get() && !c5302c.f22186ar.contains(null)) {
                    c5302c.f22186ar.add(null);
                }
                c5302c.f22185aq.m19041d();
                c5302c.f22197i.setView(c5302c.f22186ar.size() == 0 ? 1 : 0);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            C5302c c5302c = this.f22227a.get();
            if (c5302c == null || c5302c.m20021B() || c5302c.m20022A()) {
                return;
            }
            try {
                if (this.f22228b != EnumC5325a.REFRESH) {
                    return;
                }
                c5302c.f22197i.setView(2);
                c5302c.f22173ae.m18912w();
                c5302c.f22181am.set(false);
                c5302c.f22186ar.clear();
                c5302c.f22189au = 0;
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.unknownphone.callblocker.e.c$d */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/c$d.class */
    private static class AsyncTaskC5326d extends AsyncTask<Void, Void, Pair<Integer, Integer>> {

        /* renamed from: a */
        private WeakReference<C5302c> f22232a;

        /* renamed from: b */
        private Pair<String, String> f22233b;

        /* renamed from: c */
        private int f22234c;

        /* renamed from: d */
        private String f22235d;

        AsyncTaskC5326d(C5302c c5302c, Pair<String, String> pair, String str, int i) {
            this.f22234c = i;
            this.f22232a = new WeakReference<>(c5302c);
            this.f22233b = pair;
            this.f22235d = str;
        }

        /* renamed from: a */
        public Pair<Integer, Integer> doInBackground(Void... voidArr) {
            int i;
            C5302c c5302c;
            Pair<Integer, Integer> pair;
            int i2;
            if (!TextUtils.isEmpty(this.f22235d)) {
                C5292d m1044a = C5292d.m1044a();
                HashMap hashMap = new HashMap();
                hashMap.put("_action", "_get_system_info");
                hashMap.put("api_key", this.f22235d);
                hashMap.put("lang", C5282b.m1100a((String) this.f22233b.first));
                try {
                    i = new JSONObject((String) m1044a.m1043a(hashMap).first).getInt("total");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                c5302c = this.f22232a.get();
                if (c5302c != null || c5302c.m20021B() || c5302c.m20022A() || c5302c.m19924p() == null) {
                    pair = new Pair<>(-1, Integer.valueOf(i));
                } else {
                    try {
                        Cursor query = c5302c.m19924p().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
                        int count = query == null ? 0 : query.getCount();
                        i2 = count;
                        if (query != null) {
                            try {
                                query.close();
                                i2 = count;
                            } catch (NullPointerException e2) {
                                i2 = count;
                            } catch (SecurityException e3) {
                                i2 = count;
                            }
                        }
                    } catch (NullPointerException e4) {
                        i2 = -1;
                    } catch (SecurityException e5) {
                        i2 = -1;
                    }
                    pair = new Pair<>(Integer.valueOf(i2), Integer.valueOf(i));
                }
                return pair;
            }
            i = -1;
            c5302c = this.f22232a.get();
            if (c5302c != null) {
            }
            pair = new Pair<>(-1, Integer.valueOf(i));
            return pair;
        }

        /* renamed from: a */
        public void onPostExecute(Pair<Integer, Integer> pair) {
            int i = 394647;
            C5302c c5302c = this.f22232a.get();
            if (c5302c == null || c5302c.m20021B() || c5302c.m20022A()) {
                return;
            }
            try {
                if (((Integer) pair.first).intValue() == -1) {
                    AppCompatTextView appCompatTextView = c5302c.f22175ag;
                    Context p = c5302c.m19924p();
                    int i2 = ((String) this.f22233b.first).equals(C5287g.m1079b((String) C5282b.f22118b.first)) ? 2131755214 : 2131755213;
                    if (((Integer) pair.second).intValue() != -1) {
                        i = ((Integer) pair.second).intValue();
                    } else if (this.f22234c != -1) {
                        i = this.f22234c;
                    }
                    appCompatTextView.setText(C5287g.m1093a(p, i2, Integer.valueOf(i)));
                } else {
                    c5302c.f22175ag.setText(C5287g.m1093a(c5302c.m19924p(), ((String) this.f22233b.first).equals(C5287g.m1079b((String) C5282b.f22118b.first)) ? 2131755216 : 2131755215, pair.first, Integer.valueOf(((Integer) pair.second).intValue() == -1 ? this.f22234c == -1 ? 394647 : this.f22234c : ((Integer) pair.second).intValue())));
                }
                if (((Integer) pair.second).intValue() == -1) {
                    return;
                }
                c5302c.f22178aj.edit().putString("last_updated_number_of_spam_numbers", new SimpleDateFormat("ddMMyyyy", Locale.US).format(Calendar.getInstance().getTime())).putInt("number_of_spam_numbers", ((Integer) pair.second).intValue()).apply();
            } catch (IllegalStateException | NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.unknownphone.callblocker.e.c$e */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/c$e.class */
    public static class AsyncTaskC5327e extends AsyncTask<Void, Integer, List<C5296a>> {

        /* renamed from: a */
        private WeakReference<C5302c> f22236a;

        AsyncTaskC5327e(C5302c c5302c) {
            this.f22236a = new WeakReference<>(c5302c);
        }

        /* renamed from: a */
        private List<C5296a> m989a(Context context) {
            ArrayList arrayList;
            boolean z;
            if (!(C0456a.m20898a(context, "android.permission.READ_CALL_LOG") == 0)) {
                arrayList = new ArrayList();
            } else {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    telephonyManager.getNetworkCountryIso();
                }
                C5290b c5290b = new C5290b(context);
                ArrayList arrayList2 = new ArrayList();
                Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date", "number", "duration", "name"}, "type != 6", null, "_id DESC", null);
                if (query != null) {
                    query.moveToFirst();
                    while (!query.isAfterLast() && arrayList2.size() < 15) {
                        C5296a c5296a = new C5296a();
                        c5296a.m1034b(query.getLong(query.getColumnIndex("date")));
                        c5296a.m1036a((short) 2);
                        c5296a.m1037a(C5287g.m1075c(query.getString(query.getColumnIndex("name")), context.getString(2131755530)));
                        c5296a.m1033b(query.getString(query.getColumnIndex("number")));
                        c5296a.m1039a(1);
                        Iterator it = arrayList2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            } else if (((C5296a) it.next()).m1030e().equals(c5296a.m1030e())) {
                                z = true;
                                break;
                            }
                        }
                        if (!z) {
                            arrayList2.add(c5296a);
                        }
                        query.moveToNext();
                    }
                }
                ArrayList arrayList3 = new ArrayList(arrayList2);
                Collections.reverse(arrayList3);
                c5290b.m1057a(arrayList3);
                context.getSharedPreferences("com.unknownphone.callblocker.PREFS", 0).edit().putBoolean("syncing_done", true).apply();
                if (query != null) {
                    query.close();
                }
                arrayList = arrayList2;
            }
            return arrayList;
        }

        /* renamed from: a */
        public List<C5296a> doInBackground(Void... voidArr) {
            C5302c c5302c = this.f22236a.get();
            return (c5302c == null || c5302c.m20021B() || c5302c.m20022A() || c5302c.m19924p() == null) ? null : m989a(c5302c.m19924p());
        }

        /* renamed from: a */
        public void onPostExecute(List<C5296a> list) {
            C5302c c5302c = this.f22236a.get();
            if (c5302c == null || c5302c.m20021B() || c5302c.m20022A()) {
                return;
            }
            try {
                c5302c.m1020a(list);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            C5302c c5302c = this.f22236a.get();
            if (c5302c == null || c5302c.m20021B() || c5302c.m20022A()) {
                return;
            }
            try {
                c5302c.f22197i.setView(3);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static C5302c m1021a(AbstractC5328a abstractC5328a) {
        C5302c c5302c = new C5302c();
        c5302c.f22196h = abstractC5328a;
        return c5302c;
    }

    /* renamed from: a */
    public void m1026a(AsyncTaskC5324c.EnumC5325a enumC5325a) {
        Log.d("HomeFragment", enumC5325a.name() + ": " + this.f22189au);
        if (this.f22190b != null) {
            this.f22190b.cancel(true);
        }
        this.f22190b = new AsyncTaskC5324c(this, enumC5325a);
        this.f22190b.execute(new Void[0]);
    }

    /* renamed from: a */
    public void m1020a(List<C5296a> list) {
        try {
            m1026a(AsyncTaskC5324c.EnumC5325a.REFRESH);
            if (list.isEmpty()) {
                return;
            }
            String b = m19959b(2131755530);
            ArrayList arrayList = new ArrayList();
            for (C5296a c5296a : list) {
                if (c5296a.m1031d().equals(b)) {
                    arrayList.add(c5296a);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            m1016b(arrayList);
        } catch (IllegalStateException e) {
        }
    }

    /* renamed from: as */
    private void m1019as() {
        if (this.f22172a != null) {
            this.f22172a.cancel(true);
        }
        this.f22172a = new AsyncTaskC5327e(this);
        this.f22172a.execute(new Void[0]);
    }

    /* renamed from: b */
    private void m1016b(List<C5296a> list) {
        Pair<String, String> m1088a = C5287g.m1088a(this.f22178aj.getString("language_code", Locale.getDefault().getLanguage()));
        String string = this.f22178aj.getString("api_key", "");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        C5292d m1044a = C5292d.m1044a();
        HashMap hashMap = new HashMap();
        hashMap.put("_action", "_name_call_log");
        hashMap.put("api_key", C5287g.m1076c(string));
        hashMap.put("lang", C5282b.m1100a((String) m1088a.first));
        for (int i = 0; i < list.size(); i++) {
            hashMap.put(String.format(Locale.US, "%s[%d]", "phone_numbers", Integer.valueOf(i)), list.get(i).m1030e());
        }
        this.f22188at = m1044a.m1042a(hashMap, new C5292d.AbstractC5295b() { // from class: com.unknownphone.callblocker.e.c.6
            @Override // com.unknownphone.callblocker.p186d.C5292d.AbstractC5295b
            /* renamed from: a */
            public void mo951a(int i2, String str, boolean z) {
                JSONArray jSONArray;
                C5302c.this.f22178aj.edit().putInt("review_condition_sync", 0).apply();
                if (TextUtils.isEmpty(str) || z) {
                    return;
                }
                try {
                    jSONArray = new JSONArray(str);
                } catch (JSONException e) {
                    jSONArray = null;
                }
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; jSONArray != null && i3 < jSONArray.length(); i3++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i3);
                    String optString = jSONObject.optString("phone_number", null);
                    String optString2 = jSONObject.optBoolean("owner", true) ? jSONObject.optString("owner", null) : null;
                    if (optString != null && optString2 != null) {
                        C5302c.this.f22177ai.m1059a(optString, optString2);
                        arrayList.add(new C5323b(optString2, optString));
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                C5302c.this.f22178aj.edit().putInt("review_condition_sync", 1).apply();
                C5302c.this.m1026a(AsyncTaskC5324c.EnumC5325a.REFRESH);
                C5302c.this.f22194f = arrayList;
                C5302c.this.m1027a();
            }
        });
    }

    /* renamed from: c */
    public void m1013c(List<C5323b> list) {
        for (C5323b c5323b : list) {
            C5207c c5207c = new C5207c();
            c5207c.m1225a((short) 3);
            c5207c.m1226a(c5323b.f22225a != null ? c5323b.f22225a : m19959b(2131755530));
            c5207c.m1223b(c5323b.f22226b);
            this.f22177ai.m1063a(c5207c);
        }
        if (this.f22196h != null) {
            this.f22196h.mo986a(2131296528, C5181b.m1256a(this.f22196h), true);
        }
        Context p = m19924p();
        if (p == null) {
            return;
        }
        final Dialog dialog = new Dialog(p);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492934);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296709);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) dialog.findViewById(2131296710);
        AppCompatImageView appCompatImageView = (AppCompatImageView) dialog.findViewById(2131296492);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296566);
        appCompatTextView.setText(C5287g.m1093a(p, 2131755244, Integer.valueOf(list.size())));
        appCompatTextView.setTextSize(2, 15.0f);
        appCompatTextView2.setText(m19998a(2131755245));
        appCompatTextView2.setTextSize(2, 15.0f);
        appCompatTextView2.setVisibility(0);
        appCompatImageView.setImageResource(2131230914);
        appCompatButton.setText(2131755089);
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.unknownphone.callblocker.e.c.11
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                MainActivity mainActivity = (MainActivity) C5302c.this.m19922r();
                if (mainActivity != null) {
                    mainActivity.m1207e(21);
                }
            }
        });
        dialog.show();
    }

    /* renamed from: f */
    public void m1009f() {
        Context p = m19924p();
        if (p == null) {
            return;
        }
        this.f22184ap.setVisibility(C5287g.m1071e(p).isEmpty() ? 8 : 0);
    }

    /* renamed from: g */
    public void m1007g() {
        Editable text = this.f22180al.getText();
        if (text == null || TextUtils.isEmpty(text)) {
            Snackbar.m2495a(this.f22195g, 2131755533, -1).mo2491d();
            return;
        }
        try {
            this.f22196h.mo986a(2131296532, C5347b.m948a(this.f22196h, text.toString()), true);
        } catch (NullPointerException e) {
        }
    }

    /* renamed from: l */
    static /* synthetic */ int m1001l(C5302c c5302c) {
        int i = c5302c.f22189au;
        c5302c.f22189au = i + 1;
        return i;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: I */
    public void mo875I() {
        super.mo875I();
        Log.d("HomeFragment", "onResume() was called.");
        Pair<String, String> m1088a = C5287g.m1088a(this.f22178aj.getString("language_code", Locale.getDefault().getLanguage()));
        String string = this.f22178aj.getString("api_key", "");
        if (m19924p() != null) {
            boolean equals = ((String) m1088a.first).equals(C5287g.m1079b((String) C5282b.f22118b.first));
            ComponentCallbacks2C1361c.m17302b(m19924p()).m16960a((Integer) 2131230887).m17051a((ImageView) this.f22179ak);
            ComponentCallbacks2C1361c.m17302b(m19924p()).m16960a(Integer.valueOf(equals ? 2131230889 : 2131230888)).m17051a((ImageView) this.f22174af);
        }
        Calendar calendar = Calendar.getInstance();
        boolean z = calendar.get(7) == 1;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyyyy", Locale.US);
        String string2 = this.f22178aj.getString("last_updated_number_of_spam_numbers", null);
        if (!(string2 == null ? true : z && !simpleDateFormat.format(calendar.getTime()).equals(string2))) {
            string = null;
        }
        new AsyncTaskC5326d(this, m1088a, string, this.f22178aj.getInt("number_of_spam_numbers", -1)).execute(new Void[0]);
        if (this.f22177ai.m1064a(0, 1).isEmpty()) {
            this.f22197i.setView(1);
            this.f22173ae.m18912w();
            this.f22181am.set(false);
            this.f22186ar.clear();
            this.f22189au = 0;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        if (this.f22188at != null) {
            this.f22188at.mo99b();
        }
        if (this.f22187as != null) {
            this.f22187as.removeCallbacksAndMessages(null);
        }
        if (this.f22190b != null) {
            this.f22190b.cancel(true);
        }
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492943, viewGroup, false);
        this.f22191c = (AppCompatTextView) inflate.findViewById(2131296596);
        this.f22184ap = inflate.findViewById(2131296595);
        this.f22197i = (ViewSwitchLayout) inflate.findViewById(2131296747);
        this.f22193e = (AppCompatImageButton) inflate.findViewById(2131296650);
        this.f22176ah = (AppCompatButton) inflate.findViewById(2131296610);
        this.f22183ao = (ProgressBar) inflate.findViewById(2131296688);
        this.f22175ag = (AppCompatTextView) inflate.findViewById(2131296440);
        this.f22174af = (AppCompatImageView) inflate.findViewById(2131296491);
        this.f22195g = (AppCompatImageButton) inflate.findViewById(2131296635);
        this.f22182an = (RecyclerView) inflate.findViewById(2131296611);
        this.f22179ak = (AppCompatImageView) inflate.findViewById(2131296492);
        this.f22180al = (AppCompatEditText) inflate.findViewById(2131296438);
        return inflate;
    }

    /* renamed from: a */
    public void m1027a() {
        if (m19924p() == null || this.f22194f == null || this.f22178aj.getInt("review_condition_deep_link", -1) == 0) {
            return;
        }
        final List<C5323b> list = this.f22194f;
        this.f22194f = null;
        final DialogC4570a dialogC4570a = new DialogC4570a(m19924p());
        View inflate = m20017F().inflate(2131492939, (ViewGroup) null);
        ((AppCompatTextView) inflate.findViewById(2131296708)).setText(C5287g.m1093a(m19924p(), 2131755243, Integer.valueOf(list.size())));
        inflate.findViewById(2131296392).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialogC4570a.dismiss();
            }
        });
        inflate.findViewById(2131296343).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialogC4570a.dismiss();
                C5302c.this.f22178aj.edit().putInt("review_condition_sync", 2).apply();
                C5302c.this.m1013c(list);
            }
        });
        dialogC4570a.setContentView(inflate);
        dialogC4570a.show();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo950a(int i, String[] strArr, int[] iArr) {
        if (i != 763) {
            super.mo950a(i, strArr, iArr);
            return;
        }
        if (this.f22192d != null && this.f22192d.isShowing()) {
            this.f22192d.dismiss();
        }
        this.f22184ap.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22177ai = new C5290b(view.getContext());
        this.f22181am = new AtomicBoolean(false);
        this.f22178aj = view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f22187as = new Handler();
        this.f22183ao.setProgressTintList(ColorStateList.valueOf(C0438a.m20892c(view.getContext(), 2131099851)));
        this.f22186ar = new ArrayList();
        this.f22185aq = new C5297b(this.f22186ar, new AbstractC5286f() { // from class: com.unknownphone.callblocker.e.c.1
            @Override // com.unknownphone.callblocker.custom.AbstractC5286f
            /* renamed from: a */
            public void mo999a(int i) {
                if (i < 0 || i >= C5302c.this.f22186ar.size()) {
                    return;
                }
                C5296a c5296a = (C5296a) C5302c.this.f22186ar.get(i);
                C5302c.this.f22186ar.remove(i);
                C5302c.this.f22185aq.m19040d(i);
                new AsyncTaskC5322a(C5302c.this, c5296a).execute(new Void[0]);
            }
        }, new AbstractC5286f() { // from class: com.unknownphone.callblocker.e.c.12
            @Override // com.unknownphone.callblocker.custom.AbstractC5286f
            /* renamed from: a */
            public void mo999a(int i) {
                if (i < 0 || i >= C5302c.this.f22186ar.size()) {
                    return;
                }
                try {
                    C5302c.this.f22196h.mo986a(2131296532, C5347b.m948a(C5302c.this.f22196h, ((C5296a) C5302c.this.f22186ar.get(i)).m1030e()), true);
                } catch (NullPointerException e) {
                }
            }
        });
        this.f22173ae = new LinearLayoutManager(view.getContext());
        this.f22182an.addItemDecoration(new C0975d(view.getContext(), 1));
        this.f22182an.setNestedScrollingEnabled(false);
        this.f22182an.setLayoutManager(this.f22173ae);
        this.f22182an.setHasFixedSize(true);
        this.f22182an.setAdapter(this.f22185aq);
        this.f22185aq.m19055a(new RecyclerView.AbstractC0916c() { // from class: com.unknownphone.callblocker.e.c.13
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0916c
            /* renamed from: b */
            public void mo998b(int i, int i2) {
                C5302c.this.f22197i.setView(C5302c.this.f22186ar.size() == 0 ? 1 : 0);
            }
        });
        this.f22182an.addOnScrollListener(new AbstractC5285e(this.f22173ae) { // from class: com.unknownphone.callblocker.e.c.14
            @Override // com.unknownphone.callblocker.custom.AbstractC5285e
            /* renamed from: a */
            public void mo997a() {
                if (!C5302c.this.f22181am.getAndSet(false)) {
                    return;
                }
                C5302c.this.m1026a(AsyncTaskC5324c.EnumC5325a.LOAD_MORE);
            }
        });
        this.f22193e.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5302c.this.m19989a(new Intent(C5302c.this.m19922r(), SettingsActivity.class));
            }
        });
        this.f22176ah.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.e.c.16
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view2) {
                C5302c.this.m19989a(new Intent(C5302c.this.m19922r(), OtherTutorialActivity.class));
            }
        });
        this.f22195g.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.e.c.17
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view2) {
                C5302c.this.m1007g();
            }
        });
        this.f22180al.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.unknownphone.callblocker.e.c.18
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean z;
                if (i == 3) {
                    if (C5302c.this.m19922r() != null) {
                        C5287g.m1097a((Activity) C5302c.this.m19922r());
                    }
                    C5302c.this.m1007g();
                    z = true;
                } else {
                    z = false;
                }
                return z;
            }
        });
        m1012d();
        this.f22191c.setText(m19998a(2131755308));
        this.f22184ap.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5302c.this.m19922r() == null || ((String[]) C5287g.m1071e(view2.getContext()).toArray(new String[0])).length == 0) {
                    return;
                }
                C0456a.m20820a(C5302c.this.m19922r(), (String[]) C5287g.m1071e(view2.getContext()).toArray(new String[0]), 763);
            }
        });
        final List<String> m1071e = C5287g.m1071e(view.getContext());
        if (m1071e.size() != 0) {
            this.f22192d = new DialogC4570a(view.getContext());
            View inflate = m20017F().inflate(2131492938, (ViewGroup) null);
            ((AppCompatTextView) inflate.findViewById(2131296708)).setText(m19998a(2131755306));
            inflate.findViewById(2131296392).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    C5302c.this.f22192d.dismiss();
                }
            });
            inflate.findViewById(2131296441).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.c.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (C5302c.this.m19922r() != null) {
                        C0456a.m20820a(C5302c.this.m19922r(), (String[]) m1071e.toArray(new String[0]), 763);
                    }
                    C5302c.this.f22192d.dismiss();
                }
            });
            this.f22192d.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.unknownphone.callblocker.e.c.4
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    C5302c.this.m1009f();
                }
            });
            this.f22192d.setContentView(inflate);
            this.f22192d.show();
            this.f22187as.postDelayed(new Runnable() { // from class: com.unknownphone.callblocker.e.c.5
                @Override // java.lang.Runnable
                public void run() {
                    C5302c.this.f22192d.dismiss();
                }
            }, 10000L);
        }
    }

    /* renamed from: d */
    public void m1012d() {
        if (m19924p() == null) {
            m1026a(AsyncTaskC5324c.EnumC5325a.REFRESH);
            return;
        }
        List<String> m1071e = C5287g.m1071e(m19924p());
        if (this.f22178aj.getBoolean("syncing_done", false) || this.f22177ai.m1048c("contact") != 0 || !m1071e.isEmpty()) {
            m1026a(AsyncTaskC5324c.EnumC5325a.REFRESH);
        } else {
            m1019as();
        }
    }
}
