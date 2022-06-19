package com.callerid.block.fragment;

import android.os.AsyncTask;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.p056k.p057a.C1084e;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1170d;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1195m0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$q.class */
class EZCallLogFragment$q extends AsyncTask<Object, Void, Object> {

    /* renamed from: a */
    WeakReference<EZCallLogFragment> f4345a;

    /* renamed from: b */
    private List<String> f4346b;

    /* renamed from: c */
    private boolean f4347c;

    EZCallLogFragment$q(EZCallLogFragment eZCallLogFragment, List<String> list, boolean z) {
        this.f4345a = new WeakReference<>(eZCallLogFragment);
        this.f4346b = list;
        this.f4347c = z;
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        String str;
        Exception e;
        EZSearchContacts m9626c;
        String m9607E;
        String m9605G;
        List<String> list;
        Exception e2;
        Exception e3;
        String str2;
        Exception e4;
        Exception e5;
        String str3;
        String str4;
        EZCallLogFragment eZCallLogFragment = this.f4345a.get();
        if (eZCallLogFragment != null) {
            EZCallApplication m10163c = EZCallApplication.m10163c();
            String country_code = C1184j.m9826d(m10163c).getCountry_code();
            String str5 = "";
            if (!C1170d.m9898d(EZCallApplication.m10163c())) {
                C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
                return "";
            }
            try {
                String jSONArray = new JSONArray((Collection) this.f4346b).toString();
                if (C1227w.f5084a) {
                    C1227w.m9525c("searchList", "tel_number_list:" + jSONArray);
                }
                m9626c = C1209r.m9626c(jSONArray);
                m9607E = C1216t0.m9607E(m10163c);
                m9605G = C1216t0.m9605G(m10163c);
                list = this.f4346b;
            } catch (Exception e6) {
                e = e6;
            }
            try {
                String m9611A = C1216t0.m9611A(m10163c, list.get(list.size() - 1));
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number_list", m9626c);
                hashMap.put("device", "android");
                hashMap.put("uid", m9607E);
                hashMap.put("version", m9605G);
                hashMap.put("default_cc", country_code);
                hashMap.put("cc", country_code);
                hashMap.put("stamp", m9611A);
                str = C1209r.m9627b(C1215t.m9615b("https://app.ayamote.com/api/v1/sealis.php", hashMap, "utf-8"));
                try {
                    if (C1227w.f5084a) {
                        str3 = country_code;
                        str4 = str;
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("enlode_result:");
                            sb.append(str);
                            str5 = country_code;
                            m9626c = str;
                            C1227w.m9525c("searchList", sb.toString());
                        } catch (Exception e7) {
                            country_code = str3;
                            String str6 = str4;
                            e = e7;
                            str = str6;
                            e.printStackTrace();
                            EZCallLogFragment.h2(eZCallLogFragment);
                            C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
                            return str;
                        }
                    }
                    try {
                        if (str == null || "".equals(str)) {
                            str5 = country_code;
                            m9626c = str;
                            EZCallLogFragment.h2(eZCallLogFragment);
                        } else {
                            ArrayList arrayList = new ArrayList();
                            JSONObject jSONObject = new JSONObject(str.toString());
                            try {
                                if (jSONObject.getInt("status") == 1) {
                                    String str7 = country_code;
                                    m9626c = str;
                                    try {
                                        JSONArray jSONArray2 = new JSONArray(jSONObject.getString("list"));
                                        int i = 0;
                                        while (true) {
                                            str7 = country_code;
                                            m9626c = str;
                                            if (i >= jSONArray2.length()) {
                                                break;
                                            }
                                            String str8 = country_code;
                                            JSONObject jSONObject2 = jSONArray2.getJSONObject(i);
                                            String str9 = country_code;
                                            String str10 = country_code;
                                            EZSearchContacts eZSearchContacts = new EZSearchContacts();
                                            String str11 = country_code;
                                            if (jSONObject2.getInt("faild_error_log") == 1) {
                                                str3 = country_code;
                                                str4 = str;
                                                eZSearchContacts.setSearched(true);
                                            } else {
                                                eZSearchContacts.setSearch_time(System.currentTimeMillis());
                                            }
                                            String str12 = country_code;
                                            eZSearchContacts.setOld_tel_number(jSONObject2.getString("old_tel_number"));
                                            String str13 = country_code;
                                            eZSearchContacts.setTel_number(jSONObject2.getString("tel_number"));
                                            String str14 = country_code;
                                            eZSearchContacts.setT_p(jSONObject2.getString("t_p"));
                                            String str15 = country_code;
                                            eZSearchContacts.setFormat_tel_number(jSONObject2.getString("format_tel_number"));
                                            String str16 = country_code;
                                            eZSearchContacts.setOperator(jSONObject2.getString("operator"));
                                            String str17 = country_code;
                                            eZSearchContacts.setType(jSONObject2.getString("type"));
                                            String str18 = country_code;
                                            eZSearchContacts.setType_label(jSONObject2.getString("type_label"));
                                            try {
                                                eZSearchContacts.setReport_count(jSONObject2.getString("report_count"));
                                                eZSearchContacts.setName(jSONObject2.getString(EZBlackList.NAME));
                                                String str19 = country_code;
                                                eZSearchContacts.setAddress(jSONObject2.getString("address"));
                                                eZSearchContacts.setBelong_area(jSONObject2.getString("belong_area"));
                                                eZSearchContacts.setAvatar(jSONObject2.getString("avatar"));
                                                eZSearchContacts.setFaild_error_log(jSONObject2.getInt("faild_error_log"));
                                                eZSearchContacts.setE164_tel_number(jSONObject2.getString("e164_tel_number"));
                                                eZSearchContacts.setCc(jSONObject2.getString("cc"));
                                                arrayList.add(eZSearchContacts);
                                                try {
                                                    EZSearchContacts m10468d = C0947d.m10470b().m10468d(eZSearchContacts.getOld_tel_number());
                                                    if (m10468d != null) {
                                                        if (m10468d.getSearch_time() != 0) {
                                                            m10468d.setIs_can_search(false);
                                                        }
                                                        m10468d.setSearched(eZSearchContacts.isSearched());
                                                        m10468d.setType_label(eZSearchContacts.getType_label());
                                                        m10468d.setReport_count(eZSearchContacts.getReport_count());
                                                        m10468d.setBelong_area(eZSearchContacts.getBelong_area());
                                                        m10468d.setName(eZSearchContacts.getName());
                                                        m10468d.setType(eZSearchContacts.getType());
                                                        m10468d.setFormat_tel_number(eZSearchContacts.getFormat_tel_number());
                                                        m10468d.setOperator(eZSearchContacts.getOperator());
                                                        m10468d.setAddress(eZSearchContacts.getAddress());
                                                        m10468d.setAvatar(eZSearchContacts.getAvatar());
                                                        m10468d.setTel_number(eZSearchContacts.getTel_number());
                                                        m10468d.setT_p(eZSearchContacts.getT_p());
                                                        try {
                                                            m10468d.setSearch_time(eZSearchContacts.getSearch_time());
                                                            m10468d.setE164_tel_number(eZSearchContacts.getE164_tel_number());
                                                            m10468d.setCc(eZSearchContacts.getCc());
                                                        } catch (Exception e8) {
                                                            e5 = e8;
                                                            e4 = e5;
                                                            e4.printStackTrace();
                                                            country_code = str19;
                                                            i++;
                                                        }
                                                        try {
                                                            C0947d.m10470b().m10466f(m10468d, "is_can_search", "isSearched", "type_label", "report_count", "belong_area", EZBlackList.NAME, "type", "format_tel_number", "operator", "address", "avatar", "tel_number", "t_p", "search_time", "e164_tel_number", "cc");
                                                        } catch (Exception e9) {
                                                            e4 = e9;
                                                            e4.printStackTrace();
                                                            country_code = str19;
                                                            i++;
                                                        }
                                                    } else {
                                                        C0947d.m10470b().m10469c(eZSearchContacts);
                                                    }
                                                } catch (Exception e10) {
                                                    e5 = e10;
                                                }
                                                country_code = str19;
                                                i++;
                                            } catch (Exception e11) {
                                                e3 = e11;
                                                m9626c = str;
                                                e2 = e3;
                                                String str20 = m9626c == 1 ? 1 : 0;
                                                e = e2;
                                                str = str20;
                                                e.printStackTrace();
                                                EZCallLogFragment.h2(eZCallLogFragment);
                                                C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
                                                return str;
                                            }
                                        }
                                        String str21 = country_code;
                                        str2 = str21;
                                        country_code = str;
                                        try {
                                            if (EZCallLogFragment.E1(eZCallLogFragment) != null) {
                                                str2 = str21;
                                                country_code = str;
                                                if (EZCallLogFragment.E1(eZCallLogFragment).size() != 0) {
                                                    int i2 = 0;
                                                    m9626c = m9626c;
                                                    while (true) {
                                                        str2 = str21;
                                                        country_code = str;
                                                        if (i2 >= EZCallLogFragment.E1(eZCallLogFragment).size()) {
                                                            break;
                                                        }
                                                        CallLogBean callLogBean = (CallLogBean) EZCallLogFragment.E1(eZCallLogFragment).get(i2);
                                                        callLogBean.m10072Z(false);
                                                        EZSearchContacts m10468d2 = C0947d.m10470b().m10468d(callLogBean.m10045o());
                                                        if (m10468d2 != null) {
                                                            callLogBean.m10030w0(m10468d2.isSearched());
                                                            callLogBean.m10034u0(m10468d2.getSearch_time());
                                                            callLogBean.m10092H0(C1216t0.m9559r(EZCallApplication.m10163c(), m10468d2.getType_label()));
                                                            callLogBean.m10037s0(m10468d2.getReport_count());
                                                            callLogBean.m10075W(m10468d2.getBelong_area());
                                                            callLogBean.m10035t0(m10468d2.getName());
                                                            if (m10468d2.getType() != null && ("Mobile".equals(m10468d2.getType()) || "Fixed line".equals(m10468d2.getType()))) {
                                                                callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), m10468d2.getType()));
                                                            }
                                                            callLogBean.m10100D0(m10468d2.getTel_number());
                                                            callLogBean.m10044o0(m10468d2.getOld_tel_number());
                                                            callLogBean.m10056h0(m10468d2.getFormat_tel_number());
                                                            callLogBean.m10042p0(m10468d2.getOperator());
                                                            callLogBean.m10078T(m10468d2.getAddress());
                                                            callLogBean.m10077U(m10468d2.getAvatar());
                                                            callLogBean.m10100D0(m10468d2.getTel_number());
                                                            callLogBean.m10102C0(m10468d2.getT_p());
                                                            callLogBean.m10062e0(m10468d2.getFaild_error_log());
                                                        }
                                                        i2++;
                                                        m9626c = m10468d2;
                                                    }
                                                }
                                            }
                                        } catch (Exception e12) {
                                            e12.printStackTrace();
                                            str2 = str21;
                                            country_code = str;
                                        }
                                    } catch (Exception e13) {
                                        country_code = str7;
                                        e3 = e13;
                                    }
                                } else {
                                    str2 = country_code;
                                    EZCallLogFragment.h2(eZCallLogFragment);
                                    country_code = str;
                                }
                                str = country_code;
                                str5 = str2;
                                m9626c = country_code;
                                if (this.f4347c) {
                                    str5 = str2;
                                    m9626c = country_code;
                                    EZCallLogFragment.R1(eZCallLogFragment);
                                    str = country_code;
                                }
                            } catch (Exception e14) {
                                e3 = e14;
                            }
                        }
                    } catch (Exception e15) {
                        e2 = e15;
                        country_code = str5;
                    }
                } catch (Exception e16) {
                    m9626c = str;
                    e2 = e16;
                }
            } catch (Exception e17) {
                e = e17;
                str = str5;
                e.printStackTrace();
                EZCallLogFragment.h2(eZCallLogFragment);
                C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
                return str;
            }
            return str;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        EZCallLogFragment eZCallLogFragment = this.f4345a.get();
        if (eZCallLogFragment != null && EZCallLogFragment.E1(eZCallLogFragment) != null && EZCallLogFragment.E1(eZCallLogFragment).size() != 0) {
            EZCallLogFragment.G1(eZCallLogFragment).notifyDataSetChanged();
        }
        if (eZCallLogFragment == null || !EZCallLogFragment.S1(eZCallLogFragment)) {
            return;
        }
        C1195m0.m9787d(EZCallApplication.m10163c());
        EZCallLogFragment.T1(eZCallLogFragment, false);
    }
}
