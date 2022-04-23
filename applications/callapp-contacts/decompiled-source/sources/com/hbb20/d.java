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
import com.futuremind.recyclerviewfastscroll.b;
import com.hbb20.h;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/hbb20/d.class */
public final class d extends RecyclerView.a<a> implements b {

    /* renamed from: a  reason: collision with root package name */
    List<com.hbb20.a> f33215a;

    /* renamed from: b  reason: collision with root package name */
    List<com.hbb20.a> f33216b;

    /* renamed from: c  reason: collision with root package name */
    TextView f33217c;

    /* renamed from: d  reason: collision with root package name */
    CountryCodePicker f33218d;
    LayoutInflater e;
    EditText f;
    Dialog g;
    Context h;
    RelativeLayout i;
    ImageView j;
    int k = 0;

    /* loaded from: classes4-dex2jar.jar:com/hbb20/d$a.class */
    final class a extends RecyclerView.v {
        RelativeLayout r;
        TextView s;
        TextView t;
        ImageView u;
        LinearLayout v;
        View w;

        public a(View view) {
            super(view);
            RelativeLayout relativeLayout = (RelativeLayout) view;
            this.r = relativeLayout;
            this.s = (TextView) relativeLayout.findViewById(h.f.textView_countryName);
            this.t = (TextView) this.r.findViewById(h.f.textView_code);
            this.u = (ImageView) this.r.findViewById(h.f.image_flag);
            this.v = (LinearLayout) this.r.findViewById(h.f.linear_flag_holder);
            this.w = this.r.findViewById(h.f.preferenceDivider);
            if (d.this.f33218d.aD != 0) {
                this.s.setTextColor(d.this.f33218d.aD);
                this.t.setTextColor(d.this.f33218d.aD);
                this.w.setBackgroundColor(d.this.f33218d.aD);
            }
            try {
                if (d.this.f33218d.W == null) {
                    return;
                }
                if (d.this.f33218d.aa != -99) {
                    this.t.setTypeface(d.this.f33218d.W, d.this.f33218d.aa);
                    this.s.setTypeface(d.this.f33218d.W, d.this.f33218d.aa);
                    return;
                }
                this.t.setTypeface(d.this.f33218d.W);
                this.s.setTypeface(d.this.f33218d.W);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, List<com.hbb20.a> list, CountryCodePicker countryCodePicker, RelativeLayout relativeLayout, EditText editText, TextView textView, Dialog dialog, ImageView imageView) {
        this.f33215a = null;
        this.f33216b = null;
        this.h = context;
        this.f33216b = list;
        this.f33218d = countryCodePicker;
        this.g = dialog;
        this.f33217c = textView;
        this.f = editText;
        this.i = relativeLayout;
        this.j = imageView;
        this.e = LayoutInflater.from(context);
        this.f33215a = a("");
        if (this.f33218d.H) {
            this.j.setVisibility(8);
            EditText editText2 = this.f;
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
                        d dVar = d.this;
                        String charSequence2 = charSequence.toString();
                        dVar.f33217c.setVisibility(8);
                        String lowerCase = charSequence2.toLowerCase();
                        String str = lowerCase;
                        if (lowerCase.length() > 0) {
                            str = lowerCase;
                            if (lowerCase.charAt(0) == '+') {
                                str = lowerCase.substring(1);
                            }
                        }
                        dVar.f33215a = dVar.a(str);
                        if (dVar.f33215a.size() == 0) {
                            dVar.f33217c.setVisibility(0);
                        }
                        dVar.notifyDataSetChanged();
                        if (charSequence.toString().trim().equals("")) {
                            d.this.j.setVisibility(8);
                        } else {
                            d.this.j.setVisibility(0);
                        }
                    }
                });
                this.f.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.hbb20.d.3
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                        boolean z = false;
                        if (i == 3) {
                            ((InputMethodManager) d.this.h.getSystemService("input_method")).hideSoftInputFromWindow(d.this.f.getWindowToken(), 0);
                            z = true;
                        }
                        return z;
                    }
                });
            }
            this.j.setOnClickListener(new View.OnClickListener() { // from class: com.hbb20.d.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.this.f.setText("");
                }
            });
            return;
        }
        this.i.setVisibility(8);
    }

    @Override // com.futuremind.recyclerviewfastscroll.b
    public final String a(int i) {
        com.hbb20.a aVar = this.f33215a.get(i);
        return this.k > i ? "★" : aVar != null ? aVar.j.substring(0, 1) : "☺";
    }

    final List<com.hbb20.a> a(String str) {
        ArrayList arrayList = new ArrayList();
        this.k = 0;
        if (this.f33218d.ab != null && this.f33218d.ab.size() > 0) {
            for (com.hbb20.a aVar : this.f33218d.ab) {
                if (aVar.c(str)) {
                    arrayList.add(aVar);
                    this.k++;
                }
            }
            if (arrayList.size() > 0) {
                arrayList.add(null);
                this.k++;
            }
        }
        for (com.hbb20.a aVar2 : this.f33216b) {
            if (aVar2.c(str)) {
                arrayList.add(aVar2);
            }
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.f33215a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ void onBindViewHolder(a aVar, final int i) {
        a aVar2 = aVar;
        com.hbb20.a aVar3 = this.f33215a.get(i);
        if (aVar3 != null) {
            aVar2.w.setVisibility(8);
            aVar2.s.setVisibility(0);
            aVar2.t.setVisibility(0);
            if (d.this.f33218d.B) {
                aVar2.t.setVisibility(0);
            } else {
                aVar2.t.setVisibility(8);
            }
            String str = "";
            if (d.this.f33218d.G) {
                str = "";
                if (d.this.f33218d.O) {
                    str = "" + com.hbb20.a.a(aVar3) + "   ";
                }
            }
            String str2 = str + aVar3.j;
            String str3 = str2;
            if (d.this.f33218d.M) {
                str3 = str2 + " (" + aVar3.h.toUpperCase() + ")";
            }
            aVar2.s.setText(str3);
            aVar2.t.setText("+" + aVar3.i);
            if (!d.this.f33218d.G || d.this.f33218d.O) {
                aVar2.v.setVisibility(8);
            } else {
                aVar2.v.setVisibility(0);
                aVar2.u.setImageResource(aVar3.a());
            }
        } else {
            aVar2.w.setVisibility(0);
            aVar2.s.setVisibility(8);
            aVar2.t.setVisibility(8);
            aVar2.v.setVisibility(8);
        }
        if (this.f33215a.size() <= i || this.f33215a.get(i) == null) {
            aVar2.r.setOnClickListener(null);
        } else {
            aVar2.r.setOnClickListener(new View.OnClickListener() { // from class: com.hbb20.d.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (d.this.f33215a != null && d.this.f33215a.size() > i) {
                        CountryCodePicker countryCodePicker = d.this.f33218d;
                        com.hbb20.a aVar4 = d.this.f33215a.get(i);
                        if (countryCodePicker.t.K) {
                            CountryCodePicker countryCodePicker2 = countryCodePicker.t;
                            String str4 = aVar4.h;
                            SharedPreferences.Editor edit = countryCodePicker2.g.getSharedPreferences(countryCodePicker2.f33202d, 0).edit();
                            edit.putString(countryCodePicker2.S, str4);
                            edit.apply();
                        }
                        countryCodePicker.a(aVar4);
                    }
                    if (view != null && d.this.f33215a != null && d.this.f33215a.size() > i && d.this.f33215a.get(i) != null) {
                        ((InputMethodManager) d.this.h.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
                        d.this.g.dismiss();
                    }
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(this.e.inflate(h.g.layout_recycler_country_tile, viewGroup, false));
    }
}
