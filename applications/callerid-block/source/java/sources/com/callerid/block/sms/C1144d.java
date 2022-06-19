package com.callerid.block.sms;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import d.p.a.a;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callerid.block.sms.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/d.class */
public class C1144d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.sms.d$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/sms/d$a.class */
    public static class AsyncTaskC1145a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        private Context f4882a;

        /* renamed from: b */
        private JSONArray f4883b;

        public AsyncTaskC1145a(Context context, JSONArray jSONArray) {
            this.f4882a = context;
            this.f4883b = jSONArray;
        }

        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            try {
                JSONArray jSONArray = this.f4883b;
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return null;
                }
                for (int i = 0; i < this.f4883b.length(); i++) {
                    JSONObject jSONObject = this.f4883b.getJSONObject(i);
                    String string = jSONObject.getString("old_sms_number");
                    EZSearchContacts m10468d = C0947d.m10470b().m10468d(string);
                    if (m10468d != null) {
                        String string2 = jSONObject.getString("format_sms_number");
                        if (string2 != null && !"".equals(string2)) {
                            m10468d.setFormat_tel_number(string2);
                        }
                        String string3 = jSONObject.getString("operator");
                        if (string3 != null && !"".equals(string3)) {
                            m10468d.setTel_number(string3);
                        }
                        String string4 = jSONObject.getString("belong_area");
                        if (string4 != null && !"".equals(string4)) {
                            m10468d.setBelong_area(string4);
                        }
                        String string5 = jSONObject.getString("type");
                        if (string5 != null && !"".equals(string5)) {
                            m10468d.setType(string5);
                        }
                        String string6 = jSONObject.getString(EZBlackList.NAME);
                        if (string6 != null && !"".equals(string6)) {
                            m10468d.setName(string6);
                        }
                        String string7 = jSONObject.getString("avatar");
                        if (string7 != null && !"".equals(string7)) {
                            m10468d.setAvatar(string7);
                        }
                        String string8 = jSONObject.getString("address");
                        if (string8 != null && !"".equals(string8)) {
                            m10468d.setAddress(string8);
                        }
                        String string9 = jSONObject.getString("type_label");
                        if (string9 != null && !"".equals(string9)) {
                            m10468d.setType_label(string9);
                        }
                        String string10 = jSONObject.getString("report_count");
                        if (string10 != null && !"".equals(string10)) {
                            m10468d.setReport_count(string10);
                        }
                        C0947d.m10470b().m10466f(m10468d, "report_count", "type_label", "address", "avatar", EZBlackList.NAME, "type", "belong_area", "operator", "format_tel_number");
                    } else {
                        EZSearchContacts m10468d2 = C0947d.m10470b().m10468d(C1216t0.m9584a0(this.f4882a, string));
                        if (m10468d2 != null) {
                            String string11 = jSONObject.getString("format_sms_number");
                            if (string11 != null && !"".equals(string11)) {
                                m10468d2.setFormat_tel_number(string11);
                            }
                            String string12 = jSONObject.getString("operator");
                            if (string12 != null && !"".equals(string12)) {
                                m10468d2.setTel_number(string12);
                            }
                            String string13 = jSONObject.getString("belong_area");
                            if (string13 != null && !"".equals(string13)) {
                                m10468d2.setBelong_area(string13);
                            }
                            String string14 = jSONObject.getString("type");
                            if (string14 != null && !"".equals(string14)) {
                                m10468d2.setType(string14);
                            }
                            String string15 = jSONObject.getString(EZBlackList.NAME);
                            if (string15 != null && !"".equals(string15)) {
                                m10468d2.setName(string15);
                            }
                            String string16 = jSONObject.getString("avatar");
                            if (string16 != null && !"".equals(string16)) {
                                m10468d2.setAvatar(string16);
                            }
                            String string17 = jSONObject.getString("address");
                            if (string17 != null && !"".equals(string17)) {
                                m10468d2.setAddress(string17);
                            }
                            String string18 = jSONObject.getString("type_label");
                            if (string18 != null && !"".equals(string18)) {
                                m10468d2.setType_label(string18);
                            }
                            String string19 = jSONObject.getString("report_count");
                            if (string19 != null && !"".equals(string19)) {
                                m10468d2.setReport_count(string19);
                            }
                            C0947d.m10470b().m10466f(m10468d, "report_count", "type_label", "address", "avatar", EZBlackList.NAME, "type", "belong_area", "operator", "format_tel_number");
                        } else {
                            EZSearchContacts eZSearchContacts = new EZSearchContacts();
                            String string20 = jSONObject.getString(EZBlackList.NAME);
                            String string21 = jSONObject.getString("type_label");
                            if (string20 != null) {
                                if ("".equals(string20)) {
                                }
                                eZSearchContacts.setSearched(true);
                                eZSearchContacts.setOld_tel_number(string);
                                eZSearchContacts.setFormat_tel_number(jSONObject.getString("format_sms_number"));
                                eZSearchContacts.setOperator(jSONObject.getString("operator"));
                                eZSearchContacts.setType(jSONObject.getString("type"));
                                eZSearchContacts.setType_label(jSONObject.getString("type_label"));
                                eZSearchContacts.setReport_count(jSONObject.getString("report_count"));
                                eZSearchContacts.setName(jSONObject.getString(EZBlackList.NAME));
                                eZSearchContacts.setAddress(jSONObject.getString("address"));
                                eZSearchContacts.setBelong_area(jSONObject.getString("belong_area"));
                                eZSearchContacts.setAvatar(jSONObject.getString("avatar"));
                                C0947d.m10470b().m10469c(eZSearchContacts);
                            }
                            if (string21 != null && !"".equals(string21)) {
                                eZSearchContacts.setSearched(true);
                            }
                            eZSearchContacts.setOld_tel_number(string);
                            eZSearchContacts.setFormat_tel_number(jSONObject.getString("format_sms_number"));
                            eZSearchContacts.setOperator(jSONObject.getString("operator"));
                            eZSearchContacts.setType(jSONObject.getString("type"));
                            eZSearchContacts.setType_label(jSONObject.getString("type_label"));
                            eZSearchContacts.setReport_count(jSONObject.getString("report_count"));
                            eZSearchContacts.setName(jSONObject.getString(EZBlackList.NAME));
                            eZSearchContacts.setAddress(jSONObject.getString("address"));
                            eZSearchContacts.setBelong_area(jSONObject.getString("belong_area"));
                            eZSearchContacts.setAvatar(jSONObject.getString("avatar"));
                            C0947d.m10470b().m10469c(eZSearchContacts);
                        }
                    }
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C1227w.m9527a("tony", "SaveOK");
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.SEARCH_SMS_OK");
            a.b(this.f4882a).d(intent);
        }
    }

    /* renamed from: a */
    public static void m9957a(Context context, JSONArray jSONArray) {
        try {
            new AsyncTaskC1145a(context, jSONArray).executeOnExecutor(C1208q0.m9629a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
