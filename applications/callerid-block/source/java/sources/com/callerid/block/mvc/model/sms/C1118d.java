package com.callerid.block.mvc.model.sms;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.p040h.p041a.AbstractC0961a;
import com.callerid.block.util.C1174e;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.List;
/* renamed from: com.callerid.block.mvc.model.sms.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/d.class */
public class C1118d {

    /* renamed from: com.callerid.block.mvc.model.sms.d$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/d$a.class */
    private static class AsyncTaskC1119a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC0961a f4742a;

        /* renamed from: b */
        private Context f4743b;

        /* renamed from: c */
        private String f4744c;

        AsyncTaskC1119a(Context context, String str, AbstractC0961a abstractC0961a) {
            this.f4742a = abstractC0961a;
            this.f4743b = context;
            this.f4744c = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f4743b.getContentResolver();
                int delete = contentResolver.delete(Uri.parse("content://sms/conversations/" + this.f4744c), null, null);
                C1227w.m9527a("deleteSMS", "threadId:: " + this.f4744c + "  result::" + delete);
            } catch (Exception e) {
                C1227w.m9527a("deleteSMS", "Exception:: " + e);
            }
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4742a.m10448a();
        }
    }

    /* renamed from: com.callerid.block.mvc.model.sms.d$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/d$b.class */
    private static class AsyncTaskC1120b extends AsyncTask<String, Void, List<SMSBean>> {

        /* renamed from: a */
        private AbstractC1117c f4745a;

        /* renamed from: b */
        private Context f4746b;

        /* renamed from: c */
        private List<SMSBean> f4747c;

        AsyncTaskC1120b(Context context, List<SMSBean> list, AbstractC1117c abstractC1117c) {
            this.f4745a = abstractC1117c;
            this.f4746b = context;
            this.f4747c = list;
        }

        /* renamed from: a */
        public List<SMSBean> doInBackground(String... strArr) {
            EZSearchContacts m10467e;
            try {
                List<SMSBean> list = this.f4747c;
                if (list != null && list.size() > 0) {
                    if (C1227w.f5084a) {
                        C1227w.m9527a("readsms", "readSmsDataStart:" + C1174e.m9861c(System.currentTimeMillis()));
                    }
                    for (int i = 0; i < this.f4747c.size(); i++) {
                        SMSBean sMSBean = this.f4747c.get(i);
                        String address = sMSBean.getAddress();
                        if (address != null && !"".equals(address)) {
                            if (!sMSBean.isSearchedData()) {
                                sMSBean.setSearchedData(true);
                                String m9567j = C1216t0.m9567j(this.f4746b, address);
                                if (m9567j != null && !"".equals(m9567j)) {
                                    sMSBean.setName(m9567j);
                                    sMSBean.setIs_contacts(true);
                                    sMSBean.setRaw_contact_id(C1216t0.m9603I(this.f4746b, address));
                                    Bitmap m9602J = C1216t0.m9602J(this.f4746b, address);
                                    if (m9602J != null) {
                                        sMSBean.setExistPhoto(true);
                                        m9602J.recycle();
                                    }
                                }
                            }
                            if (!sMSBean.isIs_contacts() && (m10467e = C0947d.m10470b().m10467e(address, C1216t0.m9584a0(this.f4746b, address))) != null) {
                                sMSBean.setSearched(true);
                                sMSBean.setType_label(m10467e.getType_label());
                                sMSBean.setType_label_show(C1216t0.m9559r(this.f4746b, m10467e.getType_label()));
                                sMSBean.setReport_count(m10467e.getReport_count());
                                sMSBean.setSearch_name(m10467e.getName());
                                sMSBean.setAvatar(m10467e.getAvatar());
                            }
                        }
                    }
                    if (C1227w.f5084a) {
                        C1227w.m9527a("readsms", "readSmsDataEnd:" + C1174e.m9861c(System.currentTimeMillis()));
                    }
                }
            } catch (Exception e) {
            }
            return this.f4747c;
        }

        /* renamed from: b */
        public void onPostExecute(List<SMSBean> list) {
            super.onPostExecute(list);
            this.f4745a.m10124a(list);
        }
    }

    /* renamed from: a */
    public static void m10123a(Context context, String str, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC1119a(context, str, abstractC0961a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10122b(Context context, List<SMSBean> list, AbstractC1117c abstractC1117c) {
        try {
            new AsyncTaskC1120b(context, list, abstractC1117c).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
