package com.unknownphone.callblocker.p180a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.C0456a;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0975d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.unknownphone.callblocker.custom.AbstractC5283c;
import com.unknownphone.callblocker.custom.AbstractC5285e;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p180a.p181a.p182a.C5165e;
import com.unknownphone.callblocker.p180a.p181a.p183b.C5175b;
import com.unknownphone.callblocker.p186d.C5289a;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.unknownphone.callblocker.a.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/b.class */
public class C5181b extends Fragment {

    /* renamed from: a */
    private static final String f21831a = C5181b.class.getSimpleName();

    /* renamed from: ae */
    private AtomicBoolean f21832ae;

    /* renamed from: af */
    private List<C5207c> f21833af;

    /* renamed from: ag */
    private RecyclerView f21834ag;

    /* renamed from: ah */
    private String f21835ah;

    /* renamed from: ai */
    private ViewSwitchLayout f21836ai;

    /* renamed from: aj */
    private C5147a f21837aj;

    /* renamed from: ak */
    private String f21838ak;

    /* renamed from: al */
    private String f21839al;

    /* renamed from: am */
    private String f21840am;

    /* renamed from: an */
    private int f21841an;

    /* renamed from: b */
    private AsyncTaskC5205b f21842b;

    /* renamed from: c */
    private ViewSwitchLayout f21843c;

    /* renamed from: d */
    private AbstractC5328a f21844d;

    /* renamed from: e */
    private LinearLayoutManager f21845e;

    /* renamed from: f */
    private FloatingActionButton f21846f;

    /* renamed from: g */
    private SharedPreferences f21847g;

    /* renamed from: h */
    private C5290b f21848h;

    /* renamed from: i */
    private AppCompatEditText f21849i;

    /* renamed from: com.unknownphone.callblocker.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/b$a.class */
    private static class AsyncTaskC5204a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<C5181b> f21894a;

        /* renamed from: b */
        private C5207c f21895b;

        AsyncTaskC5204a(C5181b c5181b, C5207c c5207c) {
            this.f21894a = new WeakReference<>(c5181b);
            this.f21895b = c5207c;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            C5181b c5181b = this.f21894a.get();
            if (c5181b == null || c5181b.m20021B() || c5181b.m20022A()) {
                return null;
            }
            try {
                new C5290b(c5181b.m19924p()).m1055b(this.f21895b);
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

    /* renamed from: com.unknownphone.callblocker.a.b$b */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/b$b.class */
    public static class AsyncTaskC5205b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<C5181b> f21896a;

        /* renamed from: b */
        private EnumC5206a f21897b;

        /* renamed from: com.unknownphone.callblocker.a.b$b$a */
        /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/b$b$a.class */
        public enum EnumC5206a {
            REFRESH,
            LOAD_MORE
        }

        AsyncTaskC5205b(C5181b c5181b, EnumC5206a enumC5206a) {
            this.f21896a = new WeakReference<>(c5181b);
            this.f21897b = enumC5206a;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            C5181b c5181b = this.f21896a.get();
            if (c5181b == null || c5181b.m20021B() || c5181b.m20022A()) {
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList(new C5290b(c5181b.m19924p()).m1060a(c5181b.f21840am, C5181b.m1232p(c5181b), 50));
                c5181b.f21833af.remove((Object) null);
                c5181b.f21833af.addAll(arrayList);
                c5181b.f21832ae.set(arrayList.size() >= 50);
                return null;
            } catch (NullPointerException e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Void r4) {
            C5181b c5181b = this.f21896a.get();
            if (c5181b == null || c5181b.m20021B() || c5181b.m20022A()) {
                return;
            }
            try {
                if (c5181b.f21832ae.get() && !c5181b.f21833af.contains(null)) {
                    c5181b.f21833af.add(null);
                }
                c5181b.f21837aj.m19041d();
                c5181b.f21843c.setView(c5181b.f21833af.size() == 0 ? TextUtils.isEmpty(c5181b.f21840am) ? 1 : 2 : 0);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            C5181b c5181b = this.f21896a.get();
            if (c5181b == null || c5181b.m20021B() || c5181b.m20022A()) {
                return;
            }
            try {
                if (this.f21897b != EnumC5206a.REFRESH) {
                    return;
                }
                c5181b.f21843c.setView(3);
                c5181b.f21845e.m18912w();
                c5181b.f21832ae.set(false);
                c5181b.f21833af.clear();
                c5181b.f21841an = 0;
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static C5181b m1256a(AbstractC5328a abstractC5328a) {
        C5181b c5181b = new C5181b();
        c5181b.f21844d = abstractC5328a;
        return c5181b;
    }

    /* renamed from: a */
    public static C5181b m1255a(AbstractC5328a abstractC5328a, String str) {
        C5181b c5181b = new C5181b();
        c5181b.f21844d = abstractC5328a;
        c5181b.f21838ak = str;
        return c5181b;
    }

    /* renamed from: a */
    public void m1262a() {
        boolean z = true;
        Context p = m19924p();
        if (p == null) {
            return;
        }
        final Dialog dialog = new Dialog(p);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492930);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setSoftInputMode(4);
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296471);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) dialog.findViewById(2131296446);
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) dialog.findViewById(2131296470);
        AppCompatTextView appCompatTextView4 = (AppCompatTextView) dialog.findViewById(2131296676);
        if (m19922r() == null || C0456a.m20898a(m19924p(), "android.permission.READ_CONTACTS") == 0 || C0456a.m20821a((Activity) m19922r(), "android.permission.READ_CONTACTS") || !this.f21847g.getBoolean("asked_for_read_contacts_permission", false)) {
            z = false;
        }
        if (z) {
            if (Build.VERSION.SDK_INT >= 23) {
                appCompatTextView3.setCompoundDrawableTintList(ColorStateList.valueOf(Color.parseColor("#ababab")));
            }
            appCompatTextView3.setTextColor(Color.parseColor("#ababab"));
        }
        appCompatTextView.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.a.b.20
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view) {
                C5181b.this.f21844d.mo985b(C5175b.m1277a(C5181b.this.f21844d));
                dialog.cancel();
            }
        });
        appCompatTextView2.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.a.b.21
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view) {
                C5181b.this.m1242g();
                dialog.cancel();
            }
        });
        final boolean z2 = z;
        appCompatTextView3.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.a.b.22
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view) {
                if (z2) {
                    return;
                }
                C5181b.this.m1248d();
                dialog.cancel();
            }
        });
        appCompatTextView4.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.a.b.2
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view) {
                C5181b.this.m1254as();
                dialog.cancel();
            }
        });
        dialog.show();
    }

    /* renamed from: a */
    public void m1261a(AsyncTaskC5205b.EnumC5206a enumC5206a) {
        Log.d(f21831a, enumC5206a.name() + ": " + this.f21841an);
        if (this.f21842b != null) {
            this.f21842b.cancel(true);
        }
        this.f21842b = new AsyncTaskC5205b(this, enumC5206a);
        this.f21842b.execute(new Void[0]);
    }

    /* renamed from: as */
    public void m1254as() {
        Context p = m19924p();
        if (p == null) {
            return;
        }
        final Dialog dialog = new Dialog(p);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492929);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setSoftInputMode(4);
        }
        final AppCompatEditText appCompatEditText = (AppCompatEditText) dialog.findViewById(2131296438);
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296724);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) dialog.findViewById(2131296430);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296599);
        AppCompatButton appCompatButton2 = (AppCompatButton) dialog.findViewById(2131296566);
        appCompatEditText.requestFocus();
        appCompatTextView.setText(m19998a(2131755085));
        appCompatTextView2.setText(m19998a(2131755082));
        ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(appCompatEditText.getText()) || appCompatEditText.length() <= 1) {
                    appCompatEditText.setError(C5181b.this.m19959b(2131755083));
                    return;
                }
                C5207c c5207c = new C5207c();
                c5207c.m1225a((short) 0);
                c5207c.m1226a(C5181b.this.m19959b(2131755530));
                c5207c.m1223b(appCompatEditText.getText().toString());
                new C5290b(view.getContext()).m1063a(c5207c);
                dialog.cancel();
                C5181b.this.m1261a(AsyncTaskC5205b.EnumC5206a.REFRESH);
            }
        });
        dialog.show();
    }

    /* renamed from: b */
    public void m1250b(final String str) {
        Context p = m19924p();
        if (p == null) {
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
        appCompatTextView.setText(str);
        appCompatTextView.setTypeface(null, 1);
        appCompatTextView.setTextSize(2, 18.0f);
        appCompatTextView2.setText(m19998a(2131755546));
        appCompatTextView2.setVisibility(0);
        appCompatImageView.setImageResource(2131230910);
        appCompatButton.setVisibility(0);
        appCompatButton.setText(2131755547);
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListIterator listIterator = C5181b.this.f21833af.listIterator();
                while (true) {
                    if (!listIterator.hasNext()) {
                        break;
                    }
                    int nextIndex = listIterator.nextIndex();
                    if (C5287g.m1085a(((C5207c) listIterator.next()).m1221d(), str, C5181b.this.f21835ah, C5181b.this.f21839al)) {
                        listIterator.remove();
                        C5181b.this.f21837aj.m19040d(nextIndex);
                        break;
                    }
                }
                dialog.cancel();
                C5181b.this.f21848h.m1058a(str, C5181b.this.f21835ah, C5181b.this.f21839al);
            }
        });
        appCompatButton2.setText(2131755093);
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton3.setVisibility(8);
        ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    /* renamed from: d */
    public void m1248d() {
        if (m1244f()) {
            this.f21844d.mo985b(C5165e.m1294a(this.f21844d));
        }
    }

    /* renamed from: e */
    public void m1246e(final int i) {
        Context p = m19924p();
        if (p != null && i >= 0 && i < this.f21833af.size()) {
            final C5207c c5207c = this.f21833af.get(i);
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
            appCompatTextView.setText(c5207c.m1221d());
            appCompatTextView.setTypeface(null, 1);
            appCompatTextView.setTextSize(2, 18.0f);
            appCompatTextView2.setText(m19998a(2131755546));
            appCompatTextView2.setVisibility(0);
            appCompatImageView.setImageResource(2131230910);
            appCompatButton.setVisibility(0);
            appCompatButton.setText(2131755547);
            appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (i < C5181b.this.f21833af.size()) {
                        C5181b.this.f21833af.remove(i);
                        C5181b.this.f21837aj.m19040d(i);
                    }
                    dialog.cancel();
                    new AsyncTaskC5204a(C5181b.this, c5207c).execute(new Void[0]);
                }
            });
            appCompatButton2.setText(2131755093);
            appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    dialog.cancel();
                }
            });
            appCompatButton3.setVisibility(8);
            ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    dialog.dismiss();
                }
            });
            dialog.show();
        }
    }

    /* renamed from: f */
    private boolean m1244f() {
        boolean z = false;
        if (m19924p() != null) {
            boolean z2 = C0456a.m20898a(m19924p(), "android.permission.READ_CONTACTS") == 0;
            ArrayList arrayList = new ArrayList();
            if (!z2) {
                arrayList.add("android.permission.READ_CONTACTS");
            }
            if (arrayList.size() != 0) {
                this.f21847g.edit().putBoolean("asked_for_read_contacts_permission", true).apply();
                m19978a((String[]) arrayList.toArray(new String[0]), 265);
            } else {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g */
    public void m1242g() {
        Context p = m19924p();
        if (p == null) {
            return;
        }
        final Dialog dialog = new Dialog(p);
        dialog.requestWindowFeature(1);
        dialog.setContentView(2131492929);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setSoftInputMode(4);
        }
        final AppCompatEditText appCompatEditText = (AppCompatEditText) dialog.findViewById(2131296438);
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(2131296724);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) dialog.findViewById(2131296430);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296599);
        AppCompatButton appCompatButton2 = (AppCompatButton) dialog.findViewById(2131296566);
        appCompatEditText.requestFocus();
        appCompatTextView.setText(m19998a(2131755076));
        appCompatTextView2.setText(m19998a(2131755075));
        ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.b.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(appCompatEditText.getText())) {
                    appCompatEditText.setError(C5181b.this.m19959b(2131755090));
                    return;
                }
                C5207c c5207c = new C5207c();
                c5207c.m1225a((short) 2);
                c5207c.m1226a(C5181b.this.m19959b(2131755530));
                c5207c.m1223b(appCompatEditText.getText().toString());
                new C5290b(view.getContext()).m1063a(c5207c);
                dialog.cancel();
                C5181b.this.m1261a(AsyncTaskC5205b.EnumC5206a.REFRESH);
            }
        });
        dialog.show();
    }

    /* renamed from: p */
    static /* synthetic */ int m1232p(C5181b c5181b) {
        int i = c5181b.f21841an;
        c5181b.f21841an = i + 1;
        return i;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        if (this.f21842b != null) {
            this.f21842b.cancel(true);
        }
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f21836ai = (ViewSwitchLayout) layoutInflater.inflate(2131492940, viewGroup, false);
        this.f21843c = (ViewSwitchLayout) this.f21836ai.findViewById(2131296747);
        this.f21834ag = (RecyclerView) this.f21836ai.findViewById(2131296611);
        this.f21849i = (AppCompatEditText) this.f21836ai.findViewById(2131296636);
        this.f21846f = (FloatingActionButton) this.f21836ai.findViewById(2131296323);
        return this.f21836ai;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo950a(int i, String[] strArr, int[] iArr) {
        boolean z;
        if (i == 763) {
            this.f21836ai.setView(0);
        } else if (i != 265) {
            super.mo950a(i, strArr, iArr);
        } else {
            int length = iArr.length;
            int i2 = 0;
            while (true) {
                z = false;
                if (i2 >= length) {
                    break;
                } else if (iArr[i2] != 0) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                return;
            }
            m1248d();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f21848h = new C5290b(view.getContext());
        this.f21832ae = new AtomicBoolean(false);
        this.f21847g = view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        TelephonyManager telephonyManager = (TelephonyManager) view.getContext().getSystemService("phone");
        this.f21839al = telephonyManager == null ? null : telephonyManager.getSimCountryIso();
        this.f21835ah = C5289a.m1069a(this.f21839al);
        this.f21833af = new ArrayList();
        this.f21837aj = new C5147a(this.f21833af, new AbstractC5286f() { // from class: com.unknownphone.callblocker.a.b.1
            @Override // com.unknownphone.callblocker.custom.AbstractC5286f
            /* renamed from: a */
            public void mo999a(int i) {
                C5181b.this.m1246e(i);
            }
        });
        this.f21845e = new LinearLayoutManager(view.getContext());
        this.f21834ag.addItemDecoration(new C0975d(view.getContext(), 1));
        this.f21834ag.setNestedScrollingEnabled(false);
        this.f21834ag.setLayoutManager(this.f21845e);
        this.f21834ag.setHasFixedSize(true);
        this.f21834ag.setAdapter(this.f21837aj);
        this.f21837aj.m19055a(new RecyclerView.AbstractC0916c() { // from class: com.unknownphone.callblocker.a.b.12
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0916c
            /* renamed from: b */
            public void mo998b(int i, int i2) {
                C5181b.this.f21843c.setView(C5181b.this.f21833af.size() == 0 ? TextUtils.isEmpty(C5181b.this.f21840am) ? 1 : 2 : 0);
            }
        });
        this.f21834ag.addOnScrollListener(new AbstractC5285e(this.f21845e) { // from class: com.unknownphone.callblocker.a.b.16
            @Override // com.unknownphone.callblocker.custom.AbstractC5285e
            /* renamed from: a */
            public void mo997a() {
                if (!C5181b.this.f21832ae.getAndSet(false)) {
                    return;
                }
                C5181b.this.m1261a(AsyncTaskC5205b.EnumC5206a.LOAD_MORE);
            }
        });
        this.f21849i.addTextChangedListener(new AbstractC5283c() { // from class: com.unknownphone.callblocker.a.b.17
            @Override // com.unknownphone.callblocker.custom.AbstractC5283c
            /* renamed from: a */
            public void mo1099a(Editable editable) {
                C5181b.this.f21840am = editable.toString();
                C5181b.this.m1261a(AsyncTaskC5205b.EnumC5206a.REFRESH);
            }
        });
        this.f21846f.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.a.b.18
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view2) {
                C5181b.this.m1262a();
            }
        });
        m1261a(AsyncTaskC5205b.EnumC5206a.REFRESH);
        if (!C5287g.m1071e(view.getContext()).isEmpty()) {
            this.f21836ai.setView(1);
        }
        if (!TextUtils.isEmpty(this.f21838ak)) {
            this.f21836ai.post(new Runnable() { // from class: com.unknownphone.callblocker.a.b.19
                @Override // java.lang.Runnable
                public void run() {
                    C5181b.this.m1250b(C5181b.this.f21838ak);
                }
            });
        }
    }
}
