package com.allinone.callerid.p162i.p163a.p187q;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2957d;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.q.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/q/a.class */
public class C2932a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.q.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/q/a$a.class */
    public static class AsyncTaskC2933a extends AsyncTask<String, Void, Integer> {

        /* renamed from: a */
        String f9705a;

        /* renamed from: b */
        AbstractC2939c f9706b;

        AsyncTaskC2933a(String str, AbstractC2939c abstractC2939c) {
            this.f9705a = str;
            this.f9706b = abstractC2939c;
        }

        /* renamed from: a */
        public Integer doInBackground(String... strArr) {
            return Integer.valueOf(C3767h1.m24262Z(EZCallApplication.m26146c(), this.f9705a));
        }

        /* renamed from: b */
        public void onPostExecute(Integer num) {
            super.onPostExecute(num);
            this.f9706b.mo25357a(num.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.q.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/q/a$b.class */
    public static class AsyncTaskC2934b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        String f9707a;

        /* renamed from: b */
        AbstractC2941e f9708b;

        AsyncTaskC2934b(String str, AbstractC2941e abstractC2941e) {
            this.f9707a = str;
            this.f9708b = abstractC2941e;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            return C3767h1.m24217w(EZCallApplication.m26146c(), this.f9707a);
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9708b.mo25358a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.q.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/q/a$c.class */
    public static class AsyncTaskC2935c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        int f9709a;

        /* renamed from: b */
        int f9710b = -999;

        /* renamed from: c */
        String f9711c;

        /* renamed from: d */
        AbstractC2938b f9712d;

        AsyncTaskC2935c(int i, String str, AbstractC2938b abstractC2938b) {
            this.f9709a = i;
            this.f9711c = str;
            this.f9712d = abstractC2938b;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str = "";
            try {
                if (this.f9709a == 0) {
                    int m24262Z = C3767h1.m24262Z(EZCallApplication.m26146c(), this.f9711c);
                    this.f9710b = m24262Z;
                    this.f9709a = m24262Z;
                }
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"starred"}, "contact_id=?", new String[]{String.valueOf(this.f9709a)}, null);
                String str2 = "";
                if (query != null) {
                    str2 = "";
                    if (query.moveToNext()) {
                        String string = query.getString(query.getColumnIndex("starred"));
                        str2 = string;
                        if (C3718c0.f11914a) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("starred:");
                            sb.append(string);
                            C3718c0.m24436a("favtest", sb.toString());
                            str2 = string;
                        }
                    }
                }
                str = str2;
                if (query != null) {
                    str = str2;
                    query.close();
                    str = str2;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9712d.mo25438a(this.f9710b, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.q.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/q/a$d.class */
    public static class AsyncTaskC2936d extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        Context f9713a;

        /* renamed from: b */
        int f9714b;

        /* renamed from: c */
        private AbstractC2940d f9715c;

        AsyncTaskC2936d(Context context, int i, AbstractC2940d abstractC2940d) {
            this.f9713a = context;
            this.f9714b = i;
            this.f9715c = abstractC2940d;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.f9714b);
                if (ContactsContract.Contacts.getLookupUri(this.f9713a.getContentResolver(), withAppendedId) == Uri.EMPTY) {
                    return null;
                }
                this.f9713a.getContentResolver().delete(withAppendedId, null, null);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9715c.mo25440a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.q.a$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/q/a$e.class */
    public static class AsyncTaskC2937e extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        List<CallLogBean> f9716a = null;

        /* renamed from: b */
        Context f9717b;

        /* renamed from: c */
        int f9718c;

        /* renamed from: d */
        String f9719d;

        /* renamed from: e */
        AbstractC2957d f9720e;

        AsyncTaskC2937e(Context context, int i, String str, AbstractC2957d abstractC2957d) {
            this.f9717b = context;
            this.f9718c = i;
            this.f9719d = str;
            this.f9720e = abstractC2957d;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                Cursor query = this.f9717b.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id=" + Long.toString(this.f9718c), null, null);
                this.f9716a = new ArrayList();
                if (query != null) {
                    while (query.moveToNext()) {
                        String string = query.getString(query.getColumnIndex("data1"));
                        CallLogBean callLogBean = new CallLogBean();
                        callLogBean.m24951E0(string);
                        if (!string.replaceAll(" ", "").equals(this.f9719d.replaceAll(" ", ""))) {
                            this.f9716a.add(callLogBean);
                        }
                    }
                    query.close();
                }
                if (this.f9716a.size() > 0) {
                    for (int i = 0; i < this.f9716a.size(); i++) {
                        for (int size = this.f9716a.size() - 1; size > i; size--) {
                            if (this.f9716a.get(i).m24880o().replaceAll(" ", "").equals(this.f9716a.get(size).m24880o().replaceAll(" ", ""))) {
                                this.f9716a.remove(size);
                            }
                        }
                    }
                }
                if (this.f9716a.size() <= 0) {
                    return null;
                }
                for (int i2 = 0; i2 < this.f9716a.size(); i2++) {
                    CallLogBean callLogBean2 = this.f9716a.get(i2);
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean2.m24880o());
                    if (m26999d != null) {
                        callLogBean2.m24896g0(m26999d.getBelong_area());
                        callLogBean2.m24933O0(m26999d.getType());
                        callLogBean2.m24863x0(m26999d.getFormat_tel_number());
                        callLogBean2.m24945H0(m26999d.getOperator());
                        callLogBean2.m24949F0(m26999d.getType());
                    }
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
            this.f9720e.mo25439a((ArrayList) this.f9716a);
        }
    }

    /* renamed from: a */
    public static void m26395a(String str, AbstractC2939c abstractC2939c) {
        try {
            new AsyncTaskC2933a(str, abstractC2939c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26394b(String str, AbstractC2941e abstractC2941e) {
        try {
            new AsyncTaskC2934b(str, abstractC2941e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26393c(int i, String str, AbstractC2938b abstractC2938b) {
        try {
            new AsyncTaskC2935c(i, str, abstractC2938b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m26392d(Context context, int i, AbstractC2940d abstractC2940d) {
        try {
            new AsyncTaskC2936d(context, i, abstractC2940d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m26391e(Context context, int i, String str, AbstractC2957d abstractC2957d) {
        try {
            new AsyncTaskC2937e(context, i, str, abstractC2957d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
