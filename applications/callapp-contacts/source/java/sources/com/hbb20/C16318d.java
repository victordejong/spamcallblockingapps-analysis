package com.hbb20;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.AbstractC10580b;
import com.hbb20.C16330h;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.hbb20.d */
/* loaded from: classes4-dex2jar.jar:com/hbb20/d.class */
public final class C16318d extends RecyclerView.AbstractC2626a<C16323a> implements AbstractC10580b {

    /* renamed from: a */
    List<C16315a> f57715a;

    /* renamed from: b */
    List<C16315a> f57716b;

    /* renamed from: c */
    TextView f57717c;

    /* renamed from: d */
    CountryCodePicker f57718d;

    /* renamed from: e */
    LayoutInflater f57719e;

    /* renamed from: f */
    EditText f57720f;

    /* renamed from: g */
    Dialog f57721g;

    /* renamed from: h */
    Context f57722h;

    /* renamed from: i */
    RelativeLayout f57723i;

    /* renamed from: j */
    ImageView f57724j;

    /* renamed from: k */
    int f57725k = 0;

    /* renamed from: com.hbb20.d$a */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/d$a.class */
    final class C16323a extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        RelativeLayout f57731r;

        /* renamed from: s */
        TextView f57732s;

        /* renamed from: t */
        TextView f57733t;

        /* renamed from: u */
        ImageView f57734u;

        /* renamed from: v */
        LinearLayout f57735v;

        /* renamed from: w */
        View f57736w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16323a(View view) {
            super(view);
            C16318d.this = r5;
            RelativeLayout relativeLayout = (RelativeLayout) view;
            this.f57731r = relativeLayout;
            this.f57732s = (TextView) relativeLayout.findViewById(C16330h.C16336f.textView_countryName);
            this.f57733t = (TextView) this.f57731r.findViewById(C16330h.C16336f.textView_code);
            this.f57734u = (ImageView) this.f57731r.findViewById(C16330h.C16336f.image_flag);
            this.f57735v = (LinearLayout) this.f57731r.findViewById(C16330h.C16336f.linear_flag_holder);
            this.f57736w = this.f57731r.findViewById(C16330h.C16336f.preferenceDivider);
            if (r5.f57718d.f57613aD != 0) {
                this.f57732s.setTextColor(r5.f57718d.f57613aD);
                this.f57733t.setTextColor(r5.f57718d.f57613aD);
                this.f57736w.setBackgroundColor(r5.f57718d.f57613aD);
            }
            try {
                if (r5.f57718d.f57609W == null) {
                    return;
                }
                if (r5.f57718d.f57624aa != -99) {
                    this.f57733t.setTypeface(r5.f57718d.f57609W, r5.f57718d.f57624aa);
                    this.f57732s.setTypeface(r5.f57718d.f57609W, r5.f57718d.f57624aa);
                    return;
                }
                this.f57733t.setTypeface(r5.f57718d.f57609W);
                this.f57732s.setTypeface(r5.f57718d.f57609W);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public C16318d(Context context, List<C16315a> list, CountryCodePicker countryCodePicker, RelativeLayout relativeLayout, EditText editText, TextView textView, Dialog dialog, ImageView imageView) {
        this.f57715a = null;
        this.f57716b = null;
        this.f57722h = context;
        this.f57716b = list;
        this.f57718d = countryCodePicker;
        this.f57721g = dialog;
        this.f57717c = textView;
        this.f57720f = editText;
        this.f57723i = relativeLayout;
        this.f57724j = imageView;
        this.f57719e = LayoutInflater.from(context);
        this.f57715a = m7393a("");
        if (!this.f57718d.f57594H) {
            this.f57723i.setVisibility(8);
            return;
        }
        this.f57724j.setVisibility(8);
        EditText editText2 = this.f57720f;
        if (editText2 != null) {
            editText2.addTextChangedListener(new TextWatcher() { // from class: com.hbb20.d.2
                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    C16318d c16318d = C16318d.this;
                    String charSequence2 = charSequence.toString();
                    c16318d.f57717c.setVisibility(8);
                    String lowerCase = charSequence2.toLowerCase();
                    String str = lowerCase;
                    if (lowerCase.length() > 0) {
                        str = lowerCase;
                        if (lowerCase.charAt(0) == '+') {
                            str = lowerCase.substring(1);
                        }
                    }
                    c16318d.f57715a = c16318d.m7393a(str);
                    if (c16318d.f57715a.size() == 0) {
                        c16318d.f57717c.setVisibility(0);
                    }
                    c16318d.notifyDataSetChanged();
                    if (charSequence.toString().trim().equals("")) {
                        C16318d.this.f57724j.setVisibility(8);
                    } else {
                        C16318d.this.f57724j.setVisibility(0);
                    }
                }
            });
            this.f57720f.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.hbb20.d.3
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                    boolean z = false;
                    if (i == 3) {
                        ((InputMethodManager) C16318d.this.f57722h.getSystemService("input_method")).hideSoftInputFromWindow(C16318d.this.f57720f.getWindowToken(), 0);
                        z = true;
                    }
                    return z;
                }
            });
        }
        this.f57724j.setOnClickListener(new View.OnClickListener() { // from class: com.hbb20.d.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C16318d.this.f57720f.setText("");
            }
        });
    }

    @Override // com.futuremind.recyclerviewfastscroll.AbstractC10580b
    /* renamed from: a */
    public final String mo7394a(int i) {
        C16315a c16315a = this.f57715a.get(i);
        return this.f57725k > i ? "★" : c16315a != null ? c16315a.f57708j.substring(0, 1) : "☺";
    }

    /* renamed from: a */
    final List<C16315a> m7393a(String str) {
        ArrayList arrayList = new ArrayList();
        this.f57725k = 0;
        if (this.f57718d.f57625ab != null && this.f57718d.f57625ab.size() > 0) {
            for (C16315a c16315a : this.f57718d.f57625ab) {
                if (c16315a.m7400c(str)) {
                    arrayList.add(c16315a);
                    this.f57725k++;
                }
            }
            if (arrayList.size() > 0) {
                arrayList.add(null);
                this.f57725k++;
            }
        }
        for (C16315a c16315a2 : this.f57716b) {
            if (c16315a2.m7400c(str)) {
                arrayList.add(c16315a2);
            }
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f57715a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ void onBindViewHolder(C16323a c16323a, final int i) {
        C16323a c16323a2 = c16323a;
        C16315a c16315a = this.f57715a.get(i);
        if (c16315a != null) {
            c16323a2.f57736w.setVisibility(8);
            c16323a2.f57732s.setVisibility(0);
            c16323a2.f57733t.setVisibility(0);
            if (C16318d.this.f57718d.f57588B) {
                c16323a2.f57733t.setVisibility(0);
            } else {
                c16323a2.f57733t.setVisibility(8);
            }
            String str = "";
            if (C16318d.this.f57718d.f57593G) {
                str = "";
                if (C16318d.this.f57718d.f57601O) {
                    str = "" + C16315a.m7410a(c16315a) + "   ";
                }
            }
            String str2 = str + c16315a.f57708j;
            String str3 = str2;
            if (C16318d.this.f57718d.f57599M) {
                str3 = str2 + " (" + c16315a.f57706h.toUpperCase() + ")";
            }
            c16323a2.f57732s.setText(str3);
            c16323a2.f57733t.setText("+" + c16315a.f57707i);
            if (!C16318d.this.f57718d.f57593G || C16318d.this.f57718d.f57601O) {
                c16323a2.f57735v.setVisibility(8);
            } else {
                c16323a2.f57735v.setVisibility(0);
                c16323a2.f57734u.setImageResource(c16315a.m7417a());
            }
        } else {
            c16323a2.f57736w.setVisibility(0);
            c16323a2.f57732s.setVisibility(8);
            c16323a2.f57733t.setVisibility(8);
            c16323a2.f57735v.setVisibility(8);
        }
        if (this.f57715a.size() <= i || this.f57715a.get(i) == null) {
            c16323a2.f57731r.setOnClickListener(null);
        } else {
            c16323a2.f57731r.setOnClickListener(new View.OnClickListener() { // from class: com.hbb20.d.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C16318d.this.f57715a != null && C16318d.this.f57715a.size() > i) {
                        CountryCodePicker countryCodePicker = C16318d.this.f57718d;
                        C16315a c16315a2 = C16318d.this.f57715a.get(i);
                        if (countryCodePicker.f57666t.f57597K) {
                            CountryCodePicker countryCodePicker2 = countryCodePicker.f57666t;
                            String str4 = c16315a2.f57706h;
                            SharedPreferences.Editor edit = countryCodePicker2.f57653g.getSharedPreferences(countryCodePicker2.f57650d, 0).edit();
                            edit.putString(countryCodePicker2.f57605S, str4);
                            edit.apply();
                        }
                        countryCodePicker.m7455a(c16315a2);
                    }
                    if (view == null || C16318d.this.f57715a == null || C16318d.this.f57715a.size() <= i || C16318d.this.f57715a.get(i) == null) {
                        return;
                    }
                    ((InputMethodManager) C16318d.this.f57722h.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
                    C16318d.this.f57721g.dismiss();
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ C16323a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C16323a(this.f57719e.inflate(C16330h.C16337g.layout_recycler_country_tile, viewGroup, false));
    }
}
