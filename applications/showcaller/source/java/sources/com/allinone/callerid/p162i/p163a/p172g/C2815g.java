package com.allinone.callerid.p162i.p163a.p172g;

import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.EZSimpleContact;
import com.allinone.callerid.main.EZCallApplication;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.i.a.g.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/g.class */
public class C2815g {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/g$a.class */
    public static class AsyncTaskC2816a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2824k f9564a;

        /* renamed from: b */
        private ArrayList<EZSimpleContact> f9565b = new ArrayList<>();

        AsyncTaskC2816a(AbstractC2824k abstractC2824k) {
            this.f9564a = abstractC2824k;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                EZCallApplication m26146c = EZCallApplication.m26146c();
                if (C0586a.m33353a(m26146c, "android.permission.READ_CONTACTS") != 0) {
                    return "";
                }
                Cursor query = m26146c.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "sort_key", "contact_id", "data1", "photo_id"}, null, null, "sort_key");
                this.f9565b.clear();
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        String string = query.getString(query.getColumnIndex("data1"));
                        String string2 = query.getString(query.getColumnIndex("display_name"));
                        String string3 = query.getString(query.getColumnIndex("photo_id"));
                        int i2 = query.getInt(query.getColumnIndex("contact_id"));
                        EZSimpleContact eZSimpleContact = new EZSimpleContact();
                        eZSimpleContact.setId(i2);
                        eZSimpleContact.setNumber(string);
                        if (string3 != null && !string3.equals("")) {
                            eZSimpleContact.setPhoto_id(string3);
                        }
                        if (string2 != null) {
                            eZSimpleContact.setName(string2);
                            this.f9565b.add(eZSimpleContact);
                        }
                    }
                }
                if (query == null) {
                    return "";
                }
                query.close();
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9564a.mo26540a(this.f9565b);
        }
    }

    /* renamed from: a */
    public static void m26556a(AbstractC2824k abstractC2824k) {
        try {
            new AsyncTaskC2816a(abstractC2824k).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
