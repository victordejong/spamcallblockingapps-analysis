package com.unknownphone.callblocker.p180a.p181a.p183b;

import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.CallLog;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0975d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.unknownphone.callblocker.custom.AbstractC5283c;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p180a.C5181b;
import com.unknownphone.callblocker.p180a.C5207c;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p187e.C5296a;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.a.a.b.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/b/b.class */
public class C5175b extends Fragment {

    /* renamed from: a */
    private AbstractC5328a f21810a;

    /* renamed from: ae */
    private List<Long> f21811ae;

    /* renamed from: af */
    private C5171a f21812af;

    /* renamed from: ag */
    private RecyclerView f21813ag;

    /* renamed from: ah */
    private List<C5296a> f21814ah;

    /* renamed from: ai */
    private List<C5296a> f21815ai;

    /* renamed from: aj */
    private String f21816aj;

    /* renamed from: b */
    private AsyncTaskC5180a f21817b;

    /* renamed from: c */
    private ViewSwitchLayout f21818c;

    /* renamed from: d */
    private LinearLayoutManager f21819d;

    /* renamed from: e */
    private AppCompatImageButton f21820e;

    /* renamed from: f */
    private C5290b f21821f;

    /* renamed from: g */
    private AppCompatEditText f21822g;

    /* renamed from: h */
    private AppCompatButton f21823h;

    /* renamed from: i */
    private List<C5296a> f21824i;

    /* renamed from: com.unknownphone.callblocker.a.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/b/b$a.class */
    public static class AsyncTaskC5180a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<C5175b> f21829a;

        /* renamed from: b */
        private String f21830b;

        AsyncTaskC5180a(C5175b c5175b, String str) {
            this.f21829a = new WeakReference<>(c5175b);
            this.f21830b = str;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            C5175b c5175b = this.f21829a.get();
            if (c5175b == null || c5175b.m20021B() || c5175b.m20022A() || c5175b.m19924p() == null) {
                return null;
            }
            try {
                Cursor query = c5175b.m19924p().getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date", "number", "duration", "name"}, "type != 6", null, "_id DESC", null);
                if (query != null) {
                    query.moveToFirst();
                    int i = 0;
                    while (!query.isAfterLast() && c5175b.f21814ah.size() < 50) {
                        C5296a c5296a = new C5296a();
                        c5296a.m1038a(i);
                        c5296a.m1034b(query.getLong(query.getColumnIndex("date")));
                        c5296a.m1036a((short) 2);
                        c5296a.m1037a(C5287g.m1075c(query.getString(query.getColumnIndex("name")), c5175b.m19924p().getString(2131755530)));
                        c5296a.m1033b(query.getString(query.getColumnIndex("number")));
                        c5296a.m1039a(1);
                        boolean z = false;
                        for (C5296a c5296a2 : c5175b.f21814ah) {
                            if (c5296a2.m1030e().equals(c5296a.m1030e())) {
                                z = true;
                            }
                        }
                        if (!z) {
                            c5175b.f21814ah.add(c5296a);
                        }
                        query.moveToNext();
                        i++;
                    }
                }
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (NullPointerException | SecurityException e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Void r4) {
            int i = 1;
            C5175b c5175b = this.f21829a.get();
            if (c5175b == null || c5175b.m20021B() || c5175b.m20022A()) {
                return;
            }
            try {
                c5175b.f21812af.m19041d();
                c5175b.f21815ai.addAll(c5175b.f21814ah);
                ViewSwitchLayout viewSwitchLayout = c5175b.f21818c;
                if (c5175b.f21814ah.size() != 0) {
                    i = 0;
                }
                viewSwitchLayout.setView(i);
                c5175b.f21822g.setEnabled(true);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            C5175b c5175b = this.f21829a.get();
            if (c5175b == null || c5175b.m20021B() || c5175b.m20022A()) {
                return;
            }
            try {
                c5175b.f21818c.setView(3);
                c5175b.f21819d.m18912w();
                c5175b.f21814ah.clear();
                c5175b.f21815ai.clear();
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static C5175b m1277a(AbstractC5328a abstractC5328a) {
        C5175b c5175b = new C5175b();
        c5175b.f21810a = abstractC5328a;
        return c5175b;
    }

    /* renamed from: a */
    private void m1282a() {
        if (this.f21817b != null) {
            this.f21817b.cancel(true);
        }
        this.f21817b = new AsyncTaskC5180a(this, this.f21816aj);
        this.f21817b.execute(new Void[0]);
    }

    /* renamed from: a */
    public void m1278a(C5296a c5296a) {
        Iterator<C5296a> it = this.f21824i.iterator();
        while (it.hasNext()) {
            if (it.next().m1040a() == c5296a.m1040a()) {
                it.remove();
            }
        }
    }

    /* renamed from: b */
    public void m1275b(String str) {
        int i = 0;
        this.f21818c.setView(3);
        this.f21819d.m18912w();
        this.f21815ai.clear();
        if (TextUtils.isEmpty(str)) {
            this.f21815ai.addAll(this.f21814ah);
            this.f21812af.m19041d();
            this.f21818c.setView(this.f21815ai.size() == 0 ? 1 : 0);
            return;
        }
        for (C5296a c5296a : this.f21814ah) {
            if (c5296a.m1031d().toLowerCase().contains(str.toLowerCase()) || c5296a.m1030e().toLowerCase().contains(str.toLowerCase())) {
                this.f21815ai.add(c5296a);
            }
        }
        this.f21812af.m19041d();
        ViewSwitchLayout viewSwitchLayout = this.f21818c;
        if (this.f21815ai.size() == 0) {
            i = 2;
        }
        viewSwitchLayout.setView(i);
    }

    /* renamed from: d */
    public void m1273d() {
        if (this.f21811ae.isEmpty()) {
            this.f21823h.setText(2131755450);
        } else {
            this.f21823h.setText(String.format(Locale.US, "%s (%d)", m19959b(2131755092), Integer.valueOf(this.f21811ae.size())));
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        if (this.f21817b != null) {
            this.f21817b.cancel(true);
        }
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492948, viewGroup, false);
        this.f21818c = (ViewSwitchLayout) inflate.findViewById(2131296747);
        this.f21813ag = (RecyclerView) inflate.findViewById(2131296611);
        this.f21823h = (AppCompatButton) inflate.findViewById(2131296684);
        this.f21820e = (AppCompatImageButton) inflate.findViewById(2131296392);
        this.f21822g = (AppCompatEditText) inflate.findViewById(2131296636);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        TelephonyManager telephonyManager = (TelephonyManager) view.getContext().getSystemService("phone");
        this.f21816aj = telephonyManager == null ? null : telephonyManager.getSimCountryIso();
        this.f21821f = new C5290b(view.getContext());
        this.f21814ah = new ArrayList();
        this.f21815ai = new ArrayList();
        this.f21824i = new ArrayList();
        this.f21811ae = new ArrayList();
        this.f21812af = new C5171a(this.f21815ai, this.f21811ae, new AbstractC5286f() { // from class: com.unknownphone.callblocker.a.a.b.b.1
            @Override // com.unknownphone.callblocker.custom.AbstractC5286f
            /* renamed from: a */
            public void mo999a(int i) {
                C5296a c5296a = (C5296a) C5175b.this.f21815ai.get(i);
                if (C5175b.this.f21811ae.contains(Long.valueOf(c5296a.m1040a()))) {
                    C5175b.this.f21811ae.remove(Long.valueOf(c5296a.m1040a()));
                    C5175b.this.m1278a(c5296a);
                } else {
                    C5175b.this.f21811ae.add(Long.valueOf(c5296a.m1040a()));
                    C5175b.this.f21824i.add(c5296a);
                }
                C5175b.this.f21812af.m19043c(i);
                C5175b.this.m1273d();
            }
        });
        this.f21819d = new LinearLayoutManager(view.getContext());
        this.f21813ag.addItemDecoration(new C0975d(view.getContext(), 1));
        this.f21813ag.setNestedScrollingEnabled(false);
        this.f21813ag.setLayoutManager(this.f21819d);
        this.f21813ag.setHasFixedSize(true);
        this.f21813ag.setAdapter(this.f21812af);
        this.f21822g.setEnabled(false);
        this.f21822g.addTextChangedListener(new AbstractC5283c() { // from class: com.unknownphone.callblocker.a.a.b.b.2
            @Override // com.unknownphone.callblocker.custom.AbstractC5283c
            /* renamed from: a */
            public void mo1099a(Editable editable) {
                C5175b.this.m1275b(C5287g.m1090a(editable));
            }
        });
        this.f21820e.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.b.b.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5175b.this.f21810a.mo984d(1);
            }
        });
        this.f21823h.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.b.b.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5175b.this.f21811ae.isEmpty()) {
                    C5175b.this.f21810a.mo984d(1);
                    return;
                }
                for (C5296a c5296a : C5175b.this.f21824i) {
                    C5207c c5207c = new C5207c();
                    c5207c.m1225a((short) 3);
                    c5207c.m1226a(c5296a.m1031d());
                    c5207c.m1223b(c5296a.m1030e());
                    C5175b.this.f21821f.m1063a(c5207c);
                }
                C5175b.this.f21810a.mo984d(1);
                C5175b.this.f21810a.mo986a(2131296528, C5181b.m1256a(C5175b.this.f21810a), true);
            }
        });
        m1282a();
        m1273d();
    }
}
