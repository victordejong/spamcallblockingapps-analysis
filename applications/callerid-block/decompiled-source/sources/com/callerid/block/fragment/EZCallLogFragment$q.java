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
        EZSearchContacts eZSearchContacts;
        Exception e;
        String E;
        String G;
        List<String> list;
        String str;
        Exception e2;
        EZCallLogFragment eZCallLogFragment = this.f4345a.get();
        if (eZCallLogFragment == null) {
            return null;
        }
        EZCallApplication c = EZCallApplication.m10163c();
        String country_code = C1184j.m9826d(c).getCountry_code();
        country_code = "";
        if (!C1170d.m9898d(EZCallApplication.m10163c())) {
            C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
            return "";
        }
        try {
            String jSONArray = new JSONArray((Collection) this.f4346b).toString();
            if (C1227w.f5084a) {
                C1227w.m9525c("searchList", "tel_number_list:" + jSONArray);
            }
            eZSearchContacts = C1209r.m9626c(jSONArray);
            E = C1216t0.m9607E(c);
            G = C1216t0.m9605G(c);
            list = this.f4346b;
        } catch (Exception e3) {
            e = e3;
        }
        try {
            String A = C1216t0.m9611A(c, list.get(list.size() - 1));
            HashMap hashMap = new HashMap();
            hashMap.put("tel_number_list", eZSearchContacts);
            hashMap.put("device", "android");
            hashMap.put("uid", E);
            hashMap.put("version", G);
            hashMap.put("default_cc", country_code);
            hashMap.put("cc", country_code);
            hashMap.put("stamp", A);
            eZSearchContacts = C1209r.m9627b(C1215t.m9615b("https://app.ayamote.com/api/v1/sealis.php", hashMap, "utf-8"));
            try {
                if (C1227w.f5084a) {
                    country_code = country_code;
                    eZSearchContacts = eZSearchContacts;
                    try {
                        StringBuilder sb = new StringBuilder();
                        sb.append("enlode_result:");
                        sb.append(eZSearchContacts);
                        country_code = country_code;
                        eZSearchContacts = eZSearchContacts;
                        C1227w.m9525c("searchList", sb.toString());
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                        EZCallLogFragment.h2(eZCallLogFragment);
                        C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
                        return eZSearchContacts;
                    }
                }
                try {
                    if (eZSearchContacts == null || "".equals(eZSearchContacts)) {
                        country_code = country_code;
                        eZSearchContacts = eZSearchContacts;
                        EZCallLogFragment.h2(eZCallLogFragment);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObject = new JSONObject(eZSearchContacts.toString());
                        try {
                            if (jSONObject.getInt("status") == 1) {
                                country_code = country_code;
                                eZSearchContacts = eZSearchContacts;
                                try {
                                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("list"));
                                    int i = 0;
                                    while (true) {
                                        country_code = country_code;
                                        eZSearchContacts = eZSearchContacts;
                                        if (i >= jSONArray2.length()) {
                                            break;
                                        }
                                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i);
                                        EZSearchContacts eZSearchContacts2 = new EZSearchContacts();
                                        if (jSONObject2.getInt("faild_error_log") == 1) {
                                            country_code = country_code;
                                            eZSearchContacts = eZSearchContacts;
                                            eZSearchContacts2.setSearched(true);
                                        } else {
                                            eZSearchContacts2.setSearch_time(System.currentTimeMillis());
                                        }
                                        eZSearchContacts2.setOld_tel_number(jSONObject2.getString("old_tel_number"));
                                        eZSearchContacts2.setTel_number(jSONObject2.getString("tel_number"));
                                        eZSearchContacts2.setT_p(jSONObject2.getString("t_p"));
                                        eZSearchContacts2.setFormat_tel_number(jSONObject2.getString("format_tel_number"));
                                        eZSearchContacts2.setOperator(jSONObject2.getString("operator"));
                                        eZSearchContacts2.setType(jSONObject2.getString("type"));
                                        eZSearchContacts2.setType_label(jSONObject2.getString("type_label"));
                                        try {
                                            eZSearchContacts2.setReport_count(jSONObject2.getString("report_count"));
                                            eZSearchContacts2.setName(jSONObject2.getString(EZBlackList.NAME));
                                            eZSearchContacts2.setAddress(jSONObject2.getString("address"));
                                            eZSearchContacts2.setBelong_area(jSONObject2.getString("belong_area"));
                                            eZSearchContacts2.setAvatar(jSONObject2.getString("avatar"));
                                            eZSearchContacts2.setFaild_error_log(jSONObject2.getInt("faild_error_log"));
                                            eZSearchContacts2.setE164_tel_number(jSONObject2.getString("e164_tel_number"));
                                            eZSearchContacts2.setCc(jSONObject2.getString("cc"));
                                            arrayList.add(eZSearchContacts2);
                                            try {
                                                EZSearchContacts d = C0947d.m10470b().m10468d(eZSearchContacts2.getOld_tel_number());
                                                if (d != null) {
                                                    if (d.getSearch_time() != 0) {
                                                        d.setIs_can_search(false);
                                                    }
                                                    d.setSearched(eZSearchContacts2.isSearched());
                                                    d.setType_label(eZSearchContacts2.getType_label());
                                                    d.setReport_count(eZSearchContacts2.getReport_count());
                                                    d.setBelong_area(eZSearchContacts2.getBelong_area());
                                                    d.setName(eZSearchContacts2.getName());
                                                    d.setType(eZSearchContacts2.getType());
                                                    d.setFormat_tel_number(eZSearchContacts2.getFormat_tel_number());
                                                    d.setOperator(eZSearchContacts2.getOperator());
                                                    d.setAddress(eZSearchContacts2.getAddress());
                                                    d.setAvatar(eZSearchContacts2.getAvatar());
                                                    d.setTel_number(eZSearchContacts2.getTel_number());
                                                    d.setT_p(eZSearchContacts2.getT_p());
                                                    try {
                                                        d.setSearch_time(eZSearchContacts2.getSearch_time());
                                                        d.setE164_tel_number(eZSearchContacts2.getE164_tel_number());
                                                        d.setCc(eZSearchContacts2.getCc());
                                                    } catch (Exception e5) {
                                                        e2 = e5;
                                                        e2.printStackTrace();
                                                        country_code = country_code;
                                                        i++;
                                                    }
                                                    try {
                                                        C0947d.m10470b().m10466f(d, "is_can_search", "isSearched", "type_label", "report_count", "belong_area", EZBlackList.NAME, "type", "format_tel_number", "operator", "address", "avatar", "tel_number", "t_p", "search_time", "e164_tel_number", "cc");
                                                    } catch (Exception e6) {
                                                        e2 = e6;
                                                        e2.printStackTrace();
                                                        country_code = country_code;
                                                        i++;
                                                    }
                                                } else {
                                                    C0947d.m10470b().m10469c(eZSearchContacts2);
                                                }
                                            } catch (Exception e7) {
                                                e2 = e7;
                                            }
                                            country_code = country_code;
                                            i++;
                                        } catch (Exception e8) {
                                            e = e8;
                                            eZSearchContacts = eZSearchContacts;
                                            e.printStackTrace();
                                            EZCallLogFragment.h2(eZCallLogFragment);
                                            C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
                                            return eZSearchContacts;
                                        }
                                    }
                                    str = country_code;
                                    country_code = eZSearchContacts;
                                    try {
                                        if (EZCallLogFragment.E1(eZCallLogFragment) != null) {
                                            str = country_code;
                                            country_code = eZSearchContacts;
                                            if (EZCallLogFragment.E1(eZCallLogFragment).size() != 0) {
                                                int i2 = 0;
                                                eZSearchContacts = eZSearchContacts;
                                                while (true) {
                                                    str = country_code;
                                                    country_code = eZSearchContacts;
                                                    if (i2 >= EZCallLogFragment.E1(eZCallLogFragment).size()) {
                                                        break;
                                                    }
                                                    CallLogBean callLogBean = (CallLogBean) EZCallLogFragment.E1(eZCallLogFragment).get(i2);
                                                    callLogBean.m10072Z(false);
                                                    EZSearchContacts d2 = C0947d.m10470b().m10468d(callLogBean.m10045o());
                                                    if (d2 != null) {
                                                        callLogBean.m10030w0(d2.isSearched());
                                                        callLogBean.m10034u0(d2.getSearch_time());
                                                        callLogBean.m10092H0(C1216t0.m9559r(EZCallApplication.m10163c(), d2.getType_label()));
                                                        callLogBean.m10037s0(d2.getReport_count());
                                                        callLogBean.m10075W(d2.getBelong_area());
                                                        callLogBean.m10035t0(d2.getName());
                                                        if (d2.getType() != null && ("Mobile".equals(d2.getType()) || "Fixed line".equals(d2.getType()))) {
                                                            callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), d2.getType()));
                                                        }
                                                        callLogBean.m10100D0(d2.getTel_number());
                                                        callLogBean.m10044o0(d2.getOld_tel_number());
                                                        callLogBean.m10056h0(d2.getFormat_tel_number());
                                                        callLogBean.m10042p0(d2.getOperator());
                                                        callLogBean.m10078T(d2.getAddress());
                                                        callLogBean.m10077U(d2.getAvatar());
                                                        callLogBean.m10100D0(d2.getTel_number());
                                                        callLogBean.m10102C0(d2.getT_p());
                                                        callLogBean.m10062e0(d2.getFaild_error_log());
                                                    }
                                                    i2++;
                                                    eZSearchContacts = d2;
                                                }
                                            }
                                        }
                                    } catch (Exception e9) {
                                        e9.printStackTrace();
                                        str = country_code;
                                        country_code = eZSearchContacts;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                }
                            } else {
                                str = country_code;
                                EZCallLogFragment.h2(eZCallLogFragment);
                                country_code = eZSearchContacts;
                            }
                            eZSearchContacts = country_code;
                            country_code = str;
                            eZSearchContacts = country_code;
                            if (this.f4347c) {
                                country_code = str;
                                eZSearchContacts = country_code;
                                EZCallLogFragment.R1(eZCallLogFragment);
                                eZSearchContacts = country_code;
                            }
                        } catch (Exception e11) {
                            e = e11;
                        }
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Exception e13) {
                e = e13;
                eZSearchContacts = eZSearchContacts;
            }
        } catch (Exception e14) {
            e = e14;
            eZSearchContacts = country_code;
            e.printStackTrace();
            EZCallLogFragment.h2(eZCallLogFragment);
            C1084e.m10183c(EZCallLogFragment.E1(eZCallLogFragment), country_code);
            return eZSearchContacts;
        }
        return eZSearchContacts;
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        EZCallLogFragment eZCallLogFragment = this.f4345a.get();
        if (!(eZCallLogFragment == null || EZCallLogFragment.E1(eZCallLogFragment) == null || EZCallLogFragment.E1(eZCallLogFragment).size() == 0)) {
            EZCallLogFragment.G1(eZCallLogFragment).notifyDataSetChanged();
        }
        if (eZCallLogFragment != null && EZCallLogFragment.S1(eZCallLogFragment)) {
            C1195m0.m9787d(EZCallApplication.m10163c());
            EZCallLogFragment.T1(eZCallLogFragment, false);
        }
    }
}
