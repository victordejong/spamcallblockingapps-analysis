package com.allinone.callerid.p144d.p150e;

import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.core.content.C0586a;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p147b.C2480c;
import com.allinone.callerid.p144d.p147b.C2487e;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.util.C3735e1;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.d.e.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/b.class */
public class C2542b {

    /* renamed from: com.allinone.callerid.d.e.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/b$a.class */
    public interface AbstractC2543a {
        /* renamed from: a */
        void mo27145a(ArrayList<PersonaliseContact> arrayList);

        /* renamed from: b */
        void mo27144b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/b$b.class */
    public static class AsyncTaskC2544b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private ArrayList<PersonaliseContact> f8945a;

        /* renamed from: b */
        private AbstractC2543a f8946b;

        /* renamed from: c */
        private boolean f8947c;

        /* renamed from: d */
        private String f8948d;

        AsyncTaskC2544b(boolean z, String str, AbstractC2543a abstractC2543a) {
            this.f8946b = abstractC2543a;
            this.f8947c = z;
            this.f8948d = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            Cursor query;
            PersonaliseContact personaliseContact;
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") == 0 && (query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id", "photo_id", "starred", "data2"}, null, null, "sort_key COLLATE LOCALIZED ASC")) != null && query.getCount() != 0) {
                    HomeInfo m27255f = C2487e.m27256e().m27255f();
                    String name = m27255f != null ? m27255f.getName() : null;
                    int columnIndex = query.getColumnIndex("data1");
                    int columnIndex2 = query.getColumnIndex("display_name");
                    int columnIndex3 = query.getColumnIndex("sort_key");
                    if (query.getCount() > 0) {
                        this.f8945a = new ArrayList<>();
                        while (query.moveToNext()) {
                            String string = query.getString(columnIndex);
                            if (!TextUtils.isEmpty(string)) {
                                String string2 = query.getString(columnIndex2);
                                String string3 = query.getString(columnIndex3);
                                query.getString(query.getColumnIndex("photo_id"));
                                int i = query.getInt(query.getColumnIndex("contact_id"));
                                PersonaliseContact personaliseContact2 = new PersonaliseContact();
                                personaliseContact2.setContacts_id(i);
                                personaliseContact2.setSortKey(string3);
                                String m27101d = C2568a.m27101d(string3);
                                String str = m27101d;
                                if (m27101d == null) {
                                    str = C2568a.m27102c(string2);
                                }
                                personaliseContact2.setSortLetters(str);
                                personaliseContact2.sortToken = C2568a.m27099f(string3);
                                personaliseContact2.setNumber(string.replaceAll(" ", ""));
                                personaliseContact2.setMultiple_number(string.replaceAll(" ", "") + ":");
                                personaliseContact2.setDefault_themtname(name);
                                PersonaliseContact m27265g = C2480c.m27268d().m27265g(personaliseContact2.getNumber());
                                if (m27265g != null) {
                                    personaliseContact2.setDataId(m27265g.getDataId());
                                    personaliseContact2.setThemtname(m27265g.getThemtname());
                                    personaliseContact2.setPath(m27265g.getPath());
                                }
                                String str2 = this.f8948d;
                                if (str2 != null) {
                                    if (!this.f8947c) {
                                        if (!str2.equals(personaliseContact2.getThemtname()) && !this.f8948d.equals(personaliseContact2.getDefault_themtname())) {
                                            personaliseContact2.setIsselect(false);
                                        }
                                        personaliseContact2.setIsselect(true);
                                    } else if (!str2.equals(personaliseContact2.getDefault_themtname()) || (personaliseContact2.getThemtname() != null && this.f8948d.equals(personaliseContact2.getThemtname()))) {
                                        personaliseContact2.setIsselect(false);
                                    } else if (personaliseContact2.getThemtname() == null || "".equals(personaliseContact2.getThemtname())) {
                                        personaliseContact2.setIsselect(true);
                                    } else if (!this.f8948d.equals(personaliseContact2.getThemtname())) {
                                        personaliseContact2.setIsselect(false);
                                    } else {
                                        personaliseContact2.setIsselect(true);
                                    }
                                }
                                if (string2 != null) {
                                    personaliseContact2.setName(string2);
                                    this.f8945a.add(personaliseContact2);
                                }
                            }
                        }
                    }
                    query.close();
                    ArrayList<PersonaliseContact> arrayList = this.f8945a;
                    if (arrayList == null || arrayList.size() == 0) {
                        return "777";
                    }
                    for (int i2 = 0; i2 < this.f8945a.size(); i2++) {
                        PersonaliseContact personaliseContact3 = this.f8945a.get(i2);
                        int contacts_id = personaliseContact3.getContacts_id();
                        for (int size = this.f8945a.size() - 1; size > i2; size--) {
                            if (contacts_id == this.f8945a.get(size).getContacts_id()) {
                                personaliseContact3.setMultiple_number(personaliseContact3.getMultiple_number() + personaliseContact.getMultiple_number());
                                this.f8945a.remove(size);
                            }
                        }
                    }
                    return "777";
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (str != null) {
                this.f8946b.mo27145a(this.f8945a);
            } else {
                this.f8946b.mo27144b();
            }
        }
    }

    /* renamed from: a */
    public static void m27146a(boolean z, String str, AbstractC2543a abstractC2543a) {
        try {
            new AsyncTaskC2544b(z, str, abstractC2543a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
