package com.callerid.block.p038f;

import android.os.AsyncTask;
import android.widget.TextView;
import com.callerid.block.R$drawable;
import com.callerid.block.R$string;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1177f0;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1236z;
import com.phone.libphone.C2800i;
/* renamed from: com.callerid.block.f.c$j */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/c$j.class */
class c$j extends AsyncTask<Object, Void, Object> {

    /* renamed from: a */
    String f4326a;

    /* renamed from: b */
    private String f4327b;

    /* renamed from: c */
    private String f4328c;

    /* renamed from: d */
    private String f4329d;

    /* renamed from: e */
    private String f4330e;

    /* renamed from: f */
    private String f4331f;

    /* renamed from: g */
    private String f4332g;

    /* renamed from: h */
    private String f4333h;

    /* renamed from: i */
    private EZSearchContacts f4334i;

    c$j(String str, String str2) {
        this.f4326a = str;
        this.f4333h = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public EZSearchContacts doInBackground(Object[] objArr) {
        C1186k c;
        String str;
        C1186k c2;
        String str2;
        try {
            EZCallApplication c3 = EZCallApplication.m10163c();
            String country_code = C1184j.m9826d(c3).getCountry_code();
            if (country_code != null && !"".equals(country_code)) {
                String str3 = this.f4333h;
                String d = (str3 == null || "".equals(str3)) ? C1216t0.m9579d(c3, this.f4326a, country_code) : this.f4333h;
                if (d != null && !"".equals(d) && C2800i.m1644c()) {
                    C1186k.m9816c().m9812g("search_offline_db");
                    if (C1199n0.m9662u(c3)) {
                        c = C1186k.m9816c();
                        str = "search_offline_db_base";
                    } else {
                        c = C1186k.m9816c();
                        str = "search_offline_db_full";
                    }
                    c.m9812g(str);
                    C1186k.m9816c().m9808k();
                    String iso_code = C1184j.m9826d(EZCallApplication.m10163c()).getIso_code();
                    if (iso_code != null && iso_code.equals("US/USA")) {
                        C1186k.m9816c().m9812g("us_search_db_count");
                    }
                    if (iso_code != null && iso_code.equals("IN/IND")) {
                        C1186k.m9816c().m9812g("in_search_db_count");
                    }
                    if (iso_code != null && iso_code.equals("CA/CAN")) {
                        C1186k.m9816c().m9812g("can_search_db_count");
                    }
                    C1236z.m9478m(c3);
                    EZSearchContacts a = new C1177f0(c3).m9849a(d, this.f4326a);
                    this.f4334i = a;
                    if (a != null) {
                        C1186k.m9816c().m9812g("search_offline_db_success");
                        if (C1199n0.m9662u(c3)) {
                            c2 = C1186k.m9816c();
                            str2 = "search_offline_db_success_base";
                        } else {
                            c2 = C1186k.m9816c();
                            str2 = "search_offline_db_success_full";
                        }
                        c2.m9812g(str2);
                        C1186k.m9816c().m9807l();
                        if (iso_code != null && iso_code.equals("US/USA")) {
                            C1186k.m9816c().m9812g("us_search_db_ok_count");
                        }
                        if (iso_code != null && iso_code.equals("IN/IND")) {
                            C1186k.m9816c().m9812g("in_search_db_ok_count");
                        }
                        if (iso_code != null && iso_code.equals("CA/CAN")) {
                            C1186k.m9816c().m9812g("can_search_db_ok_count");
                        }
                        C1236z.m9477n(c3);
                        this.f4327b = this.f4334i.getOld_tel_number();
                        this.f4328c = this.f4334i.getType_label();
                        this.f4329d = this.f4334i.getName();
                        this.f4334i.getOld_tel_number();
                        this.f4330e = this.f4334i.getReport_count();
                        this.f4331f = this.f4334i.getOperator();
                        this.f4334i.getType();
                        this.f4332g = this.f4334i.getBelong_area();
                        C0947d.m10470b().m10469c(this.f4334i);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.f4334i;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        String str;
        TextView textView;
        String str2;
        super.onPostExecute(obj);
        if (obj != null) {
            String str3 = this.f4327b;
            if (str3 != null && !"".equals(str3)) {
                c.Q().setText(this.f4327b);
            }
            if ((c.B() == null || "".equals(c.B())) && (str2 = this.f4329d) != null && !"".equals(str2)) {
                c.C(this.f4329d);
                c.P().setText(this.f4329d);
            }
            String str4 = this.f4330e;
            int parseInt = (str4 == null || "".equals(str4)) ? 0 : Integer.parseInt(this.f4330e);
            String str5 = this.f4331f;
            if (str5 == null || str5.equals("")) {
                c.R().setVisibility(8);
                if (!C1216t0.m9585a(c.c())) {
                    c.R().setVisibility(0);
                    c.R().setText(c.c().getResources().getString(R$string.no_net_tip));
                }
            } else {
                c.R().setVisibility(0);
                c.R().setText(this.f4331f);
            }
            String str6 = this.f4332g;
            if (str6 == null || "".equals(str6)) {
                c.J().setVisibility(8);
            } else {
                c.J().setVisibility(0);
                c.J().setText(this.f4332g);
            }
            String str7 = this.f4328c;
            if (str7 != null && !"".equals(str7) && parseInt == 0) {
                c.S().setImageResource(R$drawable.avatar_spam);
                c.I();
                c.K().setVisibility(0);
                c.K().setText(C1216t0.m9559r(c.c(), this.f4328c));
            }
            String str8 = this.f4328c;
            if (str8 != null && !"".equals(str8) && parseInt > 0) {
                c.S().setImageResource(R$drawable.avatar_spam);
                c.I();
                c.K().setVisibility(0);
                textView = c.K();
                str = C1216t0.m9559r(c.c(), this.f4328c);
            } else {
                return;
            }
        } else if (c.J().getText().toString() == null || "".equals(c.J().getText().toString())) {
            c.J().setTextSize(12.0f);
            c.J().setVisibility(0);
            textView = c.J();
            str = c.c().getResources().getString(R$string.no_net_tip);
        } else {
            return;
        }
        textView.setText(str);
    }
}
