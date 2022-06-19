package com.unknownphone.callblocker.p185c;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.core.app.C0456a;
import androidx.core.p017a.C0438a;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.C2282d;
import com.google.android.material.bottomsheet.DialogC4570a;
import com.unknownphone.callblocker.activity.MainActivity;
import com.unknownphone.callblocker.activity.PremiumActivity;
import com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import com.unknownphone.callblocker.custom.ViewSwitchLayout;
import com.unknownphone.callblocker.p187e.C5302c;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import java.util.ArrayList;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.c.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/c/a.class */
public class C5264a extends Fragment {

    /* renamed from: a */
    private ViewSwitchLayout f22078a;

    /* renamed from: b */
    private SharedPreferences f22079b;

    /* renamed from: c */
    private AbstractC5328a f22080c;

    /* renamed from: d */
    private C5275a f22081d;

    /* renamed from: e */
    private C5275a f22082e;

    /* renamed from: f */
    private C5275a f22083f;

    /* renamed from: g */
    private C5275a f22084g;

    /* renamed from: h */
    private Handler f22085h;

    /* renamed from: i */
    private AdView f22086i;

    /* renamed from: com.unknownphone.callblocker.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/c/a$a.class */
    public static class C5275a {

        /* renamed from: a */
        private CardView f22102a;

        /* renamed from: b */
        private AppCompatCheckBox f22103b;

        /* renamed from: c */
        private AppCompatTextView f22104c;

        /* renamed from: d */
        private AppCompatImageView f22105d;

        /* renamed from: e */
        private AppCompatTextView f22106e;

        /* renamed from: f */
        private AppCompatImageView f22107f;

        C5275a(CardView cardView, AppCompatCheckBox appCompatCheckBox, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView2, AppCompatImageView appCompatImageView2) {
            this.f22102a = cardView;
            this.f22103b = appCompatCheckBox;
            this.f22104c = appCompatTextView;
            this.f22105d = appCompatImageView;
            this.f22106e = appCompatTextView2;
            this.f22107f = appCompatImageView2;
        }
    }

    /* renamed from: a */
    public static C5264a m1133a(AbstractC5328a abstractC5328a) {
        C5264a c5264a = new C5264a();
        c5264a.f22080c = abstractC5328a;
        return c5264a;
    }

    /* renamed from: a */
    public void m1139a() {
        if (!m1132as() || this.f22079b == null) {
            return;
        }
        m1137a(this.f22082e, true);
        m1130b(this.f22082e);
        this.f22079b.edit().putBoolean("block_strange_calls", true).apply();
        CustomApplication.m1110a("\"Block calls not from contacts\" was activated by user.");
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    private void m1138a(C5275a c5275a) {
        int parseColor = Color.parseColor("#ededed");
        int parseColor2 = Color.parseColor("#ababab");
        c5275a.f22102a.setClickable(false);
        c5275a.f22102a.setCardBackgroundColor(parseColor);
        c5275a.f22104c.setTextColor(parseColor2);
        c5275a.f22103b.setSupportButtonTintList(ColorStateList.valueOf(parseColor2));
        c5275a.f22105d.setSupportImageTintList(ColorStateList.valueOf(parseColor2));
        c5275a.f22106e.setTextColor(parseColor2);
        c5275a.f22107f.setSupportImageTintList(ColorStateList.valueOf(parseColor2));
    }

    /* renamed from: a */
    public void m1137a(final C5275a c5275a, final boolean z) {
        c5275a.f22103b.post(new Runnable() { // from class: com.unknownphone.callblocker.c.a.2
            @Override // java.lang.Runnable
            public void run() {
                c5275a.f22103b.setChecked(z);
            }
        });
    }

    /* renamed from: as */
    private boolean m1132as() {
        boolean z = false;
        if (m19924p() != null) {
            boolean z2 = C0456a.m20898a(m19924p(), "android.permission.READ_CONTACTS") == 0;
            ArrayList arrayList = new ArrayList();
            if (!z2) {
                arrayList.add("android.permission.READ_CONTACTS");
            }
            if (arrayList.size() != 0) {
                this.f22079b.edit().putBoolean("asked_for_read_contacts_permission", true).apply();
                m19978a((String[]) arrayList.toArray(new String[0]), 265);
            } else {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m1131b(Context context) {
        Cursor query = context.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
        int count = query == null ? 0 : query.getCount();
        if (query != null) {
            query.close();
        }
        this.f22082e.f22104c.setText(String.format(Locale.US, "%s (%d)", m19959b(2131755200), Integer.valueOf(count)));
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: b */
    private void m1130b(C5275a c5275a) {
        int m20892c = m19924p() != null ? C0438a.m20892c(m19924p(), 2131099852) : Color.parseColor("#004f4d");
        c5275a.f22102a.setClickable(true);
        c5275a.f22102a.setCardBackgroundColor(-1);
        c5275a.f22104c.setTextColor(m20892c);
        c5275a.f22103b.setSupportButtonTintList(ColorStateList.valueOf(m20892c));
        c5275a.f22105d.setSupportImageTintList(null);
        c5275a.f22106e.setTextColor(m20892c);
        c5275a.f22107f.setSupportImageTintList(null);
    }

    /* renamed from: d */
    public void m1127d() {
        m1137a(this.f22081d, this.f22079b.getBoolean("block_international_calls", false));
        if (m19924p() == null || C0456a.m20898a(m19924p(), "android.permission.READ_CONTACTS") == 0) {
            m1137a(this.f22082e, this.f22079b.getBoolean("block_strange_calls", false));
        } else {
            m1137a(this.f22082e, false);
            this.f22079b.edit().putBoolean("block_strange_calls", false).apply();
        }
        if (!this.f22079b.contains("subscription_ends_at")) {
            m1137a(this.f22083f, false);
            this.f22079b.edit().putBoolean("block_unknown_calls", false).apply();
        } else {
            m1137a(this.f22083f, this.f22079b.getBoolean("block_unknown_calls", false));
        }
        m1130b(this.f22081d);
        m1130b(this.f22082e);
        m1130b(this.f22083f);
    }

    /* renamed from: f */
    public void m1124f() {
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
        AppCompatImageView appCompatImageView = (AppCompatImageView) dialog.findViewById(2131296492);
        AppCompatButton appCompatButton = (AppCompatButton) dialog.findViewById(2131296566);
        AppCompatButton appCompatButton2 = (AppCompatButton) dialog.findViewById(2131296599);
        appCompatTextView.setText(m19998a(2131755156));
        appCompatImageView.setImageResource(2131230912);
        appCompatButton.setText(2131755297);
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.c.a.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.cancel();
            }
        });
        appCompatButton2.setText(2131755617);
        appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.c.a.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C5264a.this.f22079b != null) {
                    C5264a.this.m1137a(C5264a.this.f22084g, true);
                    C5264a.this.m1122g();
                    C5264a.this.f22079b.edit().putBoolean("block_all_calls", true).apply();
                    CustomApplication.m1110a("\"Block all incoming calls\" was activated by user.");
                    View inflate = C5264a.this.m20017F().inflate(2131492937, (ViewGroup) null);
                    ((AppCompatTextView) inflate.findViewById(2131296708)).setText(C5264a.this.m19998a(2131755611));
                    DialogC4570a dialogC4570a = new DialogC4570a(view.getContext());
                    dialogC4570a.setContentView(inflate);
                    dialogC4570a.show();
                }
                dialog.dismiss();
            }
        });
        ((AppCompatImageButton) dialog.findViewById(2131296392)).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.c.a.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    /* renamed from: g */
    public void m1122g() {
        m1137a(this.f22081d, false);
        m1137a(this.f22082e, false);
        m1137a(this.f22083f, false);
        m1138a(this.f22081d);
        m1138a(this.f22082e);
        m1138a(this.f22083f);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        if (this.f22085h != null) {
            this.f22085h.removeCallbacksAndMessages(null);
        }
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22078a = (ViewSwitchLayout) layoutInflater.inflate(2131492942, viewGroup, false);
        this.f22081d = new C5275a((CardView) this.f22078a.findViewById(2131296344), (AppCompatCheckBox) this.f22078a.findViewById(2131296345), (AppCompatTextView) this.f22078a.findViewById(2131296349), (AppCompatImageView) this.f22078a.findViewById(2131296346), (AppCompatTextView) this.f22078a.findViewById(2131296348), (AppCompatImageView) this.f22078a.findViewById(2131296347));
        this.f22082e = new C5275a((CardView) this.f22078a.findViewById(2131296351), (AppCompatCheckBox) this.f22078a.findViewById(2131296352), (AppCompatTextView) this.f22078a.findViewById(2131296356), (AppCompatImageView) this.f22078a.findViewById(2131296353), (AppCompatTextView) this.f22078a.findViewById(2131296355), (AppCompatImageView) this.f22078a.findViewById(2131296354));
        this.f22083f = new C5275a((CardView) this.f22078a.findViewById(2131296357), (AppCompatCheckBox) this.f22078a.findViewById(2131296358), (AppCompatTextView) this.f22078a.findViewById(2131296362), (AppCompatImageView) this.f22078a.findViewById(2131296359), (AppCompatTextView) this.f22078a.findViewById(2131296361), (AppCompatImageView) this.f22078a.findViewById(2131296360));
        this.f22084g = new C5275a((CardView) this.f22078a.findViewById(2131296337), (AppCompatCheckBox) this.f22078a.findViewById(2131296338), (AppCompatTextView) this.f22078a.findViewById(2131296342), (AppCompatImageView) this.f22078a.findViewById(2131296339), (AppCompatTextView) this.f22078a.findViewById(2131296341), (AppCompatImageView) this.f22078a.findViewById(2131296340));
        this.f22086i = (AdView) this.f22078a.findViewById(2131296321);
        return this.f22078a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo952a(int i, int i2, Intent intent) {
        if (i != 174) {
            super.mo952a(i, i2, intent);
        } else if (i2 != -1 || m19924p() == null) {
        } else {
            this.f22079b.edit().putBoolean("block_unknown_calls", true).apply();
            CustomApplication.m1110a("\"Block hidden calls\" was activated by user.");
            Intent intent2 = new Intent(m19924p().getApplicationContext(), MainActivity.class);
            intent2.putExtra("purchase_source", "purchase_source_global");
            intent2.addFlags(268468224);
            m19989a(intent2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo950a(int i, String[] strArr, int[] iArr) {
        boolean z;
        if (i == 763) {
            this.f22078a.setView(0);
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
            m1139a();
            this.f22085h.post(new Runnable() { // from class: com.unknownphone.callblocker.c.a.7
                @Override // java.lang.Runnable
                public void run() {
                    if (C5264a.this.m19924p() != null) {
                        try {
                            C5264a.this.m1131b(C5264a.this.m19924p());
                        } catch (SecurityException e) {
                            e.printStackTrace();
                        }
                    }
                }
            });
            try {
                this.f22080c.mo986a(2131296530, C5302c.m1021a(this.f22080c), false);
            } catch (NullPointerException e) {
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22079b = view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f22081d.f22103b.setClickable(false);
        this.f22082e.f22103b.setClickable(false);
        this.f22083f.f22103b.setClickable(false);
        this.f22084g.f22103b.setClickable(false);
        this.f22084g.f22102a.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.c.a.1
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view2) {
                if (!C5264a.this.f22084g.f22103b.isChecked()) {
                    C5264a.this.m1124f();
                } else if (C5264a.this.f22079b == null) {
                } else {
                    C5264a.this.m1137a(C5264a.this.f22084g, false);
                    C5264a.this.m1127d();
                    C5264a.this.f22079b.edit().putBoolean("block_all_calls", false).apply();
                }
            }
        });
        this.f22083f.f22102a.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.c.a.3
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view2) {
                if (C5264a.this.f22079b != null) {
                    if (C5264a.this.f22083f.f22103b.isChecked()) {
                        C5264a.this.m1137a(C5264a.this.f22083f, false);
                        C5264a.this.f22079b.edit().putBoolean("block_unknown_calls", false).apply();
                    } else if (C5264a.this.f22079b.contains("subscription_ends_at")) {
                        C5264a.this.m1137a(C5264a.this.f22083f, true);
                        C5264a.this.f22079b.edit().putBoolean("block_unknown_calls", true).apply();
                        CustomApplication.m1110a("\"Block hidden calls\" was activated by user.");
                    } else {
                        Intent intent = new Intent(C5264a.this.m19922r(), PremiumActivity.class);
                        intent.putExtra("show_premium_tab", true);
                        C5264a.this.startActivityForResult(intent, 174);
                    }
                }
            }
        });
        this.f22082e.f22102a.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.c.a.4
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view2) {
                if (!C5264a.this.f22082e.f22103b.isChecked()) {
                    C5264a.this.m1139a();
                } else if (C5264a.this.f22079b == null) {
                } else {
                    C5264a.this.m1137a(C5264a.this.f22082e, false);
                    C5264a.this.f22079b.edit().putBoolean("block_strange_calls", false).apply();
                }
            }
        });
        this.f22081d.f22102a.setOnClickListener(new AbstractView$OnClickListenerC5284d() { // from class: com.unknownphone.callblocker.c.a.5
            @Override // com.unknownphone.callblocker.custom.AbstractView$OnClickListenerC5284d
            /* renamed from: a */
            public void mo996a(View view2) {
                if (C5264a.this.f22079b != null) {
                    C5264a.this.f22081d.f22103b.toggle();
                    C5264a.this.f22079b.edit().putBoolean("block_international_calls", C5264a.this.f22081d.f22103b.isChecked()).apply();
                    if (!C5264a.this.f22081d.f22103b.isChecked()) {
                        return;
                    }
                    CustomApplication.m1110a("\"Block international calls\" was activated by user.");
                }
            }
        });
        this.f22085h = new Handler();
        this.f22085h.post(new Runnable() { // from class: com.unknownphone.callblocker.c.a.6
            @Override // java.lang.Runnable
            public void run() {
                if (C5264a.this.m19924p() != null) {
                    try {
                        C5264a.this.m1131b(C5264a.this.m19924p());
                    } catch (SecurityException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        boolean z = this.f22079b.getBoolean("block_all_calls", false);
        m1137a(this.f22084g, z);
        if (z) {
            m1122g();
        } else if (this.f22079b != null) {
            m1137a(this.f22083f, this.f22079b.getBoolean("block_unknown_calls", false));
            m1137a(this.f22081d, this.f22079b.getBoolean("block_international_calls", false));
            if (m19924p() == null || C0456a.m20898a(m19924p(), "android.permission.READ_CONTACTS") == 0) {
                m1137a(this.f22082e, this.f22079b.getBoolean("block_strange_calls", false));
            } else {
                m1137a(this.f22082e, false);
                this.f22079b.edit().putBoolean("block_strange_calls", false).apply();
            }
        }
        boolean z2 = this.f22079b != null && this.f22079b.contains("subscription_ends_at");
        if (!z2) {
            m1137a(this.f22083f, false);
            this.f22079b.edit().putBoolean("block_unknown_calls", false).apply();
        }
        if (z2) {
            this.f22086i.setVisibility(8);
        } else {
            this.f22086i.mo14816a(new C2282d.C2283a().m14841a());
        }
        if (!C5287g.m1071e(view.getContext()).isEmpty()) {
            this.f22078a.setView(1);
        }
    }
}
