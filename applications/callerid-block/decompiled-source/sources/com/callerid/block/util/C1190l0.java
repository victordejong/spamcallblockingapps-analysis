package com.callerid.block.util;

import android.content.Intent;
import android.os.AsyncTask;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p036d.C0947d;
import d.p.a.a;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.l0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/l0.class */
public class C1190l0 {

    /* renamed from: com.callerid.block.util.l0$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/l0$a.class */
    static class AsyncTaskC1191a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        JSONObject f5017a;

        /* renamed from: b */
        String f5018b;

        /* renamed from: c */
        private EZSearchContacts f5019c;

        public AsyncTaskC1191a(JSONObject jSONObject, String str) {
            this.f5017a = jSONObject;
            this.f5018b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            try {
                if (this.f5017a.getInt("status") != 1) {
                    return null;
                }
                EZSearchContacts d = C0947d.m10470b().m10468d(this.f5018b);
                this.f5019c = d;
                if (d == null) {
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    if (this.f5017a.getInt("faild_error_log") == 1) {
                        eZSearchContacts.setSearched(true);
                    }
                    eZSearchContacts.setSearched_buyu(true);
                    eZSearchContacts.setOld_tel_number(this.f5018b);
                    eZSearchContacts.setFormat_tel_number(this.f5017a.getString("format_tel_number"));
                    eZSearchContacts.setOperator(this.f5017a.getString("operator"));
                    eZSearchContacts.setType(this.f5017a.getString("type"));
                    eZSearchContacts.setType_label(this.f5017a.getString("type_label"));
                    eZSearchContacts.setName(this.f5017a.getString(EZBlackList.NAME));
                    eZSearchContacts.setAvatar(this.f5017a.getString("avatar"));
                    C0947d.m10470b().m10469c(eZSearchContacts);
                    return null;
                }
                if (this.f5017a.getInt("faild_error_log") == 1) {
                    this.f5019c.setSearched(true);
                }
                this.f5019c.setSearched_buyu(true);
                String string = this.f5017a.getString(EZBlackList.NAME);
                if (string != null && !"".equals(string)) {
                    this.f5019c.setName(string);
                }
                String string2 = this.f5017a.getString("avatar");
                if (string2 != null && !"".equals(string2)) {
                    this.f5019c.setAvatar(string2);
                }
                String string3 = this.f5017a.getString("type_label");
                if (string3 != null && !"".equals(string3)) {
                    this.f5019c.setType_label(string3);
                }
                String string4 = this.f5017a.getString("type");
                if (string4 != null && !"".equals(string4)) {
                    this.f5019c.setType(string4);
                }
                String string5 = this.f5017a.getString("operator");
                if (string5 != null && !"".equals(string5)) {
                    this.f5019c.setOperator(string5);
                }
                String string6 = this.f5017a.getString("format_tel_number");
                if (string6 != null && !"".equals(string6)) {
                    this.f5019c.setFormat_tel_number(string6);
                }
                C0947d.m10470b().m10466f(this.f5019c, "isSearched", EZBlackList.NAME, "belong_area", "avatar", "type_label", "type", "operator", "format_tel_number", "searched_buyu");
                return null;
            } catch (Exception e) {
                C1227w.m9527a("buyu", "Exception:" + e.getMessage());
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C1227w.m9527a("buyu", "save data OK");
            try {
                Intent intent = new Intent();
                intent.setAction("com.callerid.block.INIT_HISTORY");
                a.b(EZCallApplication.m10163c()).d(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.callerid.block.util.l0$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/l0$b.class */
    static class AsyncTaskC1192b extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        JSONObject f5020a;

        /* renamed from: b */
        String f5021b;

        /* renamed from: c */
        private EZSearchContacts f5022c;

        public AsyncTaskC1192b(JSONObject jSONObject, String str) {
            this.f5020a = jSONObject;
            this.f5021b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String string;
            String string2;
            try {
                EZSearchContacts d = C0947d.m10470b().m10468d(this.f5021b);
                this.f5022c = d;
                if (d == null) {
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    if (this.f5020a.getInt("faild_error_log") == 1) {
                        eZSearchContacts.setSearched(true);
                    } else {
                        eZSearchContacts.setSearch_time(System.currentTimeMillis());
                    }
                    eZSearchContacts.setOld_tel_number(this.f5020a.getString("old_tel_number"));
                    eZSearchContacts.setTel_number(this.f5020a.getString("tel_number"));
                    eZSearchContacts.setFormat_tel_number(this.f5020a.getString("format_tel_number"));
                    eZSearchContacts.setOperator(this.f5020a.getString("operator"));
                    eZSearchContacts.setType(this.f5020a.getString("type"));
                    eZSearchContacts.setType_label(this.f5020a.getString("type_label"));
                    eZSearchContacts.setReport_count(this.f5020a.getString("report_count"));
                    eZSearchContacts.setName(this.f5020a.getString(EZBlackList.NAME));
                    eZSearchContacts.setAddress(this.f5020a.getString("address"));
                    eZSearchContacts.setBelong_area(this.f5020a.getString("belong_area"));
                    eZSearchContacts.setAvatar(this.f5020a.getString("avatar"));
                    eZSearchContacts.setFaild_error_log(this.f5020a.getInt("faild_error_log"));
                    eZSearchContacts.setWebsite(this.f5020a.getString("website"));
                    eZSearchContacts.setT_p(this.f5020a.getString("t_p"));
                    eZSearchContacts.setE164_tel_number(this.f5020a.getString("e164_tel_number"));
                    eZSearchContacts.setCc(this.f5020a.getString("cc"));
                    eZSearchContacts.setDate(System.currentTimeMillis());
                    eZSearchContacts.setSoft_comments(this.f5020a.getJSONArray("soft_comments").toString());
                    JSONArray jSONArray = this.f5020a.getJSONArray("categories");
                    if (!(jSONArray == null || "".equals(jSONArray.toString()) || jSONArray.length() == 0)) {
                        if (jSONArray.length() == 1 && (string2 = jSONArray.getString(0)) != null && !"".equals(string2)) {
                            eZSearchContacts.setTag_main(string2);
                        }
                        if (jSONArray.length() == 2) {
                            String string3 = jSONArray.getString(0);
                            String string4 = jSONArray.getString(1);
                            if (string3 != null && !"".equals(string3)) {
                                eZSearchContacts.setTag_main(string3);
                            }
                            if (string4 != null && !"".equals(string4)) {
                                eZSearchContacts.setTag_sub(string4);
                            }
                        }
                    }
                    C0947d.m10470b().m10469c(eZSearchContacts);
                    return null;
                }
                if (this.f5020a.getInt("faild_error_log") == 1) {
                    this.f5022c.setSearched(true);
                } else {
                    this.f5022c.setSearch_time(System.currentTimeMillis());
                }
                String string5 = this.f5020a.getString("format_tel_number");
                if (string5 != null && !"".equals(string5)) {
                    this.f5022c.setFormat_tel_number(string5);
                }
                String string6 = this.f5020a.getString("tel_number");
                if (string6 != null && !"".equals(string6)) {
                    this.f5022c.setTel_number(string6);
                }
                String string7 = this.f5020a.getString("type_label");
                if (string7 != null && !"".equals(string7)) {
                    this.f5022c.setType_label(string7);
                }
                this.f5022c.setBelong_area(this.f5020a.getString("belong_area"));
                this.f5022c.setReport_count(this.f5020a.getString("report_count"));
                this.f5022c.setT_p(this.f5020a.getString("t_p"));
                if (this.f5020a.has("e164_tel_number")) {
                    this.f5022c.setE164_tel_number(this.f5020a.getString("e164_tel_number"));
                }
                if (this.f5020a.has("cc")) {
                    this.f5022c.setCc(this.f5020a.getString("cc"));
                }
                JSONArray jSONArray2 = this.f5020a.getJSONArray("soft_comments");
                if (!(jSONArray2 == null || jSONArray2.length() == 0 || jSONArray2.length() <= new JSONArray(this.f5022c.getSoft_comments()).length())) {
                    this.f5022c.setSoft_comments(jSONArray2.toString());
                }
                JSONArray jSONArray3 = this.f5020a.getJSONArray("categories");
                if (!(jSONArray3 == null || "".equals(jSONArray3.toString()) || jSONArray3.length() == 0)) {
                    if (jSONArray3.length() == 1 && (string = jSONArray3.getString(0)) != null && !"".equals(string)) {
                        this.f5022c.setTag_main(string);
                    }
                    if (jSONArray3.length() == 2) {
                        String string8 = jSONArray3.getString(0);
                        String string9 = jSONArray3.getString(1);
                        if (string8 != null && !"".equals(string8)) {
                            this.f5022c.setTag_main(string8);
                        }
                        if (string9 != null && !"".equals(string9)) {
                            this.f5022c.setTag_sub(string9);
                        }
                    }
                }
                C0947d.m10470b().m10466f(this.f5022c, "isSearched", "search_time", "format_tel_number", "tel_number", "belong_area", "report_count", "t_p", "e164_tel_number", "cc", "soft_comments", "tag_main", "tag_sub", "type_label");
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C1227w.m9527a("searchhis", "OK");
            try {
                Intent intent = new Intent();
                intent.setAction("com.callerid.block.INIT_HISTORY");
                a.b(EZCallApplication.m10163c()).d(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static void m9796a(JSONObject jSONObject, String str) {
        try {
            new AsyncTaskC1191a(jSONObject, str).executeOnExecutor(C1208q0.m9629a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m9795b(JSONObject jSONObject, String str) {
        try {
            new AsyncTaskC1192b(jSONObject, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
