package com.unknownphone.callblocker.p180a.p181a.p182a;

import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.unknownphone.callblocker.p180a.p181a.p182a.C5163d;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.unknownphone.callblocker.a.a.a.e */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/e.class */
public class C5165e extends Fragment {

    /* renamed from: a */
    private AbstractC5328a f21780a;

    /* renamed from: ae */
    private boolean f21781ae;

    /* renamed from: af */
    private List<C5151a> f21782af;

    /* renamed from: ag */
    private String f21783ag;

    /* renamed from: ah */
    private String f21784ah;

    /* renamed from: b */
    private AsyncTaskC5170a f21785b;

    /* renamed from: c */
    private ViewSwitchLayout f21786c;

    /* renamed from: d */
    private LinearLayoutManager f21787d;

    /* renamed from: e */
    private AppCompatImageButton f21788e;

    /* renamed from: f */
    private AppCompatEditText f21789f;

    /* renamed from: g */
    private RecyclerView f21790g;

    /* renamed from: h */
    private C5152b f21791h;

    /* renamed from: i */
    private List<C5151a> f21792i;

    /* renamed from: com.unknownphone.callblocker.a.a.a.e$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/e$a.class */
    public static class AsyncTaskC5170a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<C5165e> f21798a;

        /* renamed from: b */
        private boolean f21799b;

        /* renamed from: c */
        private String f21800c;

        /* renamed from: d */
        private String f21801d;

        AsyncTaskC5170a(C5165e c5165e, String str, String str2, boolean z) {
            this.f21798a = new WeakReference<>(c5165e);
            this.f21799b = z;
            this.f21800c = str;
            this.f21801d = str2;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            C5165e c5165e = this.f21798a.get();
            if (c5165e == null || c5165e.m20021B() || c5165e.m20022A() || c5165e.m19924p() == null) {
                return null;
            }
            try {
                if (this.f21799b) {
                    Cursor query = c5165e.m19924p().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, "display_name ASC");
                    if (isCancelled()) {
                        return null;
                    }
                    if (query != null && query.moveToFirst()) {
                        while (!query.isAfterLast()) {
                            try {
                                c5165e.f21792i.add(new C5151a(query, this.f21800c));
                            } catch (CursorIndexOutOfBoundsException | IllegalStateException e) {
                                e.printStackTrace();
                            }
                            query.moveToNext();
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                    c5165e.f21781ae = false;
                }
                if (this.f21801d == null || this.f21801d.isEmpty()) {
                    c5165e.f21782af.addAll(c5165e.f21792i);
                    return null;
                }
                for (C5151a c5151a : c5165e.f21792i) {
                    if (c5151a.m1312a(c5165e.m19924p()).toLowerCase().contains(this.f21801d.toLowerCase()) || c5151a.m1310b().toLowerCase().contains(this.f21801d.toLowerCase())) {
                        c5165e.f21782af.add(c5151a);
                    }
                }
                return null;
            } catch (NullPointerException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Void r4) {
            C5165e c5165e = this.f21798a.get();
            if (c5165e == null || c5165e.m20021B() || c5165e.m20022A()) {
                return;
            }
            try {
                c5165e.f21791h.m19041d();
                c5165e.f21786c.setView(c5165e.f21782af.size() == 0 ? 1 : 0);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            C5165e c5165e = this.f21798a.get();
            if (c5165e == null || c5165e.m20021B() || c5165e.m20022A()) {
                return;
            }
            try {
                c5165e.f21786c.setView(2);
                c5165e.f21787d.m18912w();
                c5165e.f21782af.clear();
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    private C5163d.AbstractC5164a m1293a(final List<C5151a> list) {
        return new C5163d.AbstractC5164a() { // from class: com.unknownphone.callblocker.a.a.a.e.4
            @Override // com.unknownphone.callblocker.p180a.p181a.p182a.C5163d.AbstractC5164a
            /* renamed from: a */
            public boolean mo1286a(int i) {
                return i == 0 || ((C5151a) list.get(i)).m1312a(C5165e.this.m19924p()).toUpperCase().charAt(0) != ((C5151a) list.get(i - 1)).m1312a(C5165e.this.m19924p()).toUpperCase().charAt(0);
            }

            @Override // com.unknownphone.callblocker.p180a.p181a.p182a.C5163d.AbstractC5164a
            /* renamed from: b */
            public CharSequence mo1285b(int i) {
                return ((C5151a) list.get(i)).m1312a(C5165e.this.m19924p()).toUpperCase().subSequence(0, 1);
            }
        };
    }

    /* renamed from: a */
    public static C5165e m1294a(AbstractC5328a abstractC5328a) {
        C5165e c5165e = new C5165e();
        c5165e.f21780a = abstractC5328a;
        c5165e.f21781ae = true;
        c5165e.f21792i = new ArrayList();
        c5165e.f21782af = new ArrayList();
        return c5165e;
    }

    /* renamed from: a */
    public void m1298a() {
        if (this.f21785b != null) {
            this.f21785b.cancel(true);
        }
        this.f21785b = new AsyncTaskC5170a(this, this.f21783ag, this.f21784ah, this.f21781ae);
        this.f21785b.execute(new Void[0]);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        if (this.f21785b != null) {
            this.f21785b.cancel(true);
        }
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492941, viewGroup, false);
        this.f21786c = (ViewSwitchLayout) inflate.findViewById(2131296747);
        this.f21790g = (RecyclerView) inflate.findViewById(2131296611);
        this.f21788e = (AppCompatImageButton) inflate.findViewById(2131296392);
        this.f21789f = (AppCompatEditText) inflate.findViewById(2131296636);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f21791h = new C5152b(this.f21782af, new AbstractC5286f() { // from class: com.unknownphone.callblocker.a.a.a.e.1
            @Override // com.unknownphone.callblocker.custom.AbstractC5286f
            /* renamed from: a */
            public void mo999a(int i) {
                C5165e.this.f21780a.mo985b(C5155c.m1306a(C5165e.this.f21780a, (C5151a) C5165e.this.f21782af.get(i)));
            }
        });
        this.f21787d = new LinearLayoutManager(view.getContext());
        this.f21790g.addItemDecoration(new C0975d(view.getContext(), 1));
        this.f21790g.addItemDecoration(new C5163d(C5287g.m1094a(view.getContext(), 36.0f), true, m1293a(this.f21782af)));
        this.f21790g.setLayoutManager(this.f21787d);
        this.f21790g.setHasFixedSize(true);
        this.f21790g.setAdapter(this.f21791h);
        TelephonyManager telephonyManager = (TelephonyManager) view.getContext().getSystemService("phone");
        this.f21783ag = telephonyManager == null ? null : telephonyManager.getNetworkCountryIso();
        this.f21789f.addTextChangedListener(new AbstractC5283c() { // from class: com.unknownphone.callblocker.a.a.a.e.2
            @Override // com.unknownphone.callblocker.custom.AbstractC5283c
            /* renamed from: a */
            public void mo1099a(Editable editable) {
                C5165e.this.f21784ah = editable.toString();
                C5165e.this.m1298a();
            }
        });
        this.f21788e.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.e.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5165e.this.m19922r() != null) {
                    C5165e.this.m19922r().onBackPressed();
                }
            }
        });
        m1298a();
    }
}
