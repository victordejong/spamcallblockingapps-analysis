package com.allinone.callerid.p162i.p163a.p188r;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.customview.SortToken;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3863u;
import com.allinone.callerid.util.p204j1.C3776a;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.i.a.r.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/a.class */
public class C2942a {

    /* renamed from: a */
    private static ArrayList<CallLogBean> f9721a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/a$a.class */
    public static class AsyncTaskC2943a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2959f f9722a;

        /* renamed from: b */
        private boolean f9723b;

        AsyncTaskC2943a(AbstractC2959f abstractC2959f) {
            this.f9722a = abstractC2959f;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                this.f9723b = C3767h1.m24258b0();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9722a.mo25304a(this.f9723b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/a$b.class */
    public static class AsyncTaskC2944b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2958e f9724a;

        /* renamed from: b */
        private ArrayList<CallLogBean> f9725b;

        /* renamed from: c */
        private Context f9726c;

        /* renamed from: com.allinone.callerid.i.a.r.a$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/a$b$a.class */
        public class C2945a implements Comparator<CallLogBean> {
            C2945a() {
                AsyncTaskC2944b.this = r4;
            }

            /* renamed from: a */
            public int compare(CallLogBean callLogBean, CallLogBean callLogBean2) {
                return Collator.getInstance(Locale.getDefault()).compare(callLogBean.m24884m(), callLogBean2.m24884m());
            }
        }

        AsyncTaskC2944b(Context context, AbstractC2958e abstractC2958e) {
            this.f9726c = context;
            this.f9724a = abstractC2958e;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            Cursor query;
            int i;
            String str;
            this.f9725b = new ArrayList<>();
            try {
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
            if (!C3776a.m24161d(EZCallApplication.m26146c()) || (query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "starred = 1 ", null, null)) == null) {
                return null;
            }
            while (true) {
                if (!query.moveToNext()) {
                    break;
                }
                long j = query.getLong(query.getColumnIndex("_id"));
                Cursor query2 = this.f9726c.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id=" + Long.toString(j), null, null);
                String str2 = "";
                int i2 = 0;
                while (query2.moveToNext()) {
                    str2 = str2 + query2.getString(query2.getColumnIndex("data1")) + ":";
                    i2 = query2.getInt(query2.getColumnIndex("data2"));
                }
                query2.close();
                String string = query.getString(query.getColumnIndex("display_name"));
                try {
                    str = query.getString(query.getColumnIndex("photo_uri"));
                } catch (Exception e2) {
                    e2.printStackTrace();
                    str = null;
                }
                String str3 = "";
                if (i2 != 0) {
                    str3 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "" : this.f9726c.getResources().getString(R$string.workfax) : this.f9726c.getResources().getString(R$string.work) : this.f9726c.getResources().getString(R$string.mobile) : this.f9726c.getResources().getString(R$string.home);
                }
                String[] split = str2.split(":");
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("favourite", "numbers:" + str2);
                }
                if (split.length == 1) {
                    CallLogBean callLogBean = new CallLogBean();
                    callLogBean.m24955C0(string);
                    callLogBean.m24951E0(split[0]);
                    callLogBean.m24863x0(C3809p0.m24077b(split[0]));
                    callLogBean.m24942J0((int) j);
                    callLogBean.m24949F0(str3);
                    callLogBean.m24922V0("1");
                    callLogBean.m24878p0(true);
                    callLogBean.m24944I0(str);
                    this.f9725b.add(callLogBean);
                } else if (split.length > 1) {
                    CallLogBean callLogBean2 = new CallLogBean();
                    callLogBean2.m24955C0(string);
                    callLogBean2.m24951E0(split[0]);
                    callLogBean2.m24863x0(C3809p0.m24077b(split[0]));
                    callLogBean2.m24942J0((int) j);
                    callLogBean2.m24949F0(str3);
                    callLogBean2.m24922V0("1");
                    callLogBean2.m24878p0(true);
                    callLogBean2.m24944I0(str);
                    this.f9725b.add(callLogBean2);
                }
                e.printStackTrace();
                return null;
            }
            query.close();
            ArrayList<CallLogBean> arrayList = this.f9725b;
            if (arrayList == null || arrayList.size() == 0) {
                return "999";
            }
            for (i = 0; i < this.f9725b.size(); i++) {
                for (int size = this.f9725b.size() - 1; size > i; size--) {
                    if (this.f9725b.get(i).m24880o().equals(this.f9725b.get(size).m24880o())) {
                        this.f9725b.remove(size);
                    }
                }
            }
            Collections.sort(this.f9725b, new C2945a());
            return "999";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("999".equals(str)) {
                this.f9724a.mo25301a(this.f9725b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/a$c.class */
    public static class AsyncTaskC2946c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private Context f9728a;

        /* renamed from: b */
        private AbstractC2960g f9729b;

        AsyncTaskC2946c(Context context, AbstractC2960g abstractC2960g) {
            this.f9728a = context;
            this.f9729b = abstractC2960g;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (!C3776a.m24161d(EZCallApplication.m26146c())) {
                    return null;
                }
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id", "photo_id", "starred", "data2"}, null, null, "sort_key COLLATE LOCALIZED ASC");
                String str = null;
                if (query != null) {
                    if (query.getCount() == 0) {
                        str = null;
                    } else {
                        int columnIndex = query.getColumnIndex("data1");
                        int columnIndex2 = query.getColumnIndex("display_name");
                        int columnIndex3 = query.getColumnIndex("sort_key");
                        if (query.getCount() > 0) {
                            ArrayList unused = C2942a.f9721a = new ArrayList();
                            C2942a.f9721a.clear();
                            while (query.moveToNext()) {
                                String string = query.getString(columnIndex);
                                if (!TextUtils.isEmpty(string)) {
                                    String string2 = query.getString(columnIndex2);
                                    String string3 = query.getString(columnIndex3);
                                    String string4 = query.getString(query.getColumnIndex("starred"));
                                    String string5 = query.getString(query.getColumnIndex("photo_id"));
                                    int i = query.getInt(query.getColumnIndex("contact_id"));
                                    int i2 = query.getInt(query.getColumnIndex("data2"));
                                    String string6 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "" : this.f9728a.getResources().getString(R$string.workfax) : this.f9728a.getResources().getString(R$string.work) : this.f9728a.getResources().getString(R$string.mobile) : this.f9728a.getResources().getString(R$string.home);
                                    CallLogBean callLogBean = new CallLogBean();
                                    callLogBean.m24942J0(i);
                                    callLogBean.m24922V0(string4);
                                    callLogBean.m24925T0(string3);
                                    String m26371j = C2942a.m26371j(string3);
                                    String str2 = m26371j;
                                    if (m26371j == null) {
                                        str2 = C2942a.m26372i(string2);
                                    }
                                    callLogBean.f11532t = str2;
                                    callLogBean.f11516h0 = C2942a.m26368m(string3);
                                    if (string6 != null && !"".equals(string6)) {
                                        callLogBean.m24949F0(string6);
                                        callLogBean.m24933O0(string6);
                                    }
                                    callLogBean.m24951E0(string);
                                    callLogBean.m24863x0(C3809p0.m24077b(string));
                                    callLogBean.m24957B0(string + ":");
                                    if (string5 != null && !"".equals(string5) && !"0".equals(string5)) {
                                        callLogBean.m24944I0(string5);
                                    }
                                    if (string2 != null) {
                                        callLogBean.m24955C0(string2);
                                        C2942a.f9721a.add(callLogBean);
                                    }
                                }
                            }
                        }
                        query.close();
                        try {
                            if (C2942a.f9721a != null && C2942a.f9721a.size() != 0) {
                                for (int i3 = 0; i3 < C2942a.f9721a.size(); i3++) {
                                    CallLogBean callLogBean2 = (CallLogBean) C2942a.f9721a.get(i3);
                                    if (callLogBean2 != null) {
                                        int m24868v = callLogBean2.m24868v();
                                        for (int size = C2942a.f9721a.size() - 1; size > i3; size--) {
                                            CallLogBean callLogBean3 = (CallLogBean) C2942a.f9721a.get(size);
                                            if (callLogBean3 != null && m24868v == callLogBean3.m24868v()) {
                                                String m24886l = callLogBean2.m24886l();
                                                String m24886l2 = callLogBean3.m24886l();
                                                if (m24886l.contains(m24886l2)) {
                                                    C2942a.f9721a.remove(size);
                                                } else {
                                                    callLogBean2.m24957B0(m24886l + m24886l2);
                                                    C2942a.f9721a.remove(size);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        str = "777";
                    }
                }
                return str;
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (str != null) {
                this.f9729b.mo25307a(C2942a.f9721a);
            } else {
                this.f9729b.mo25306b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/a$d.class */
    public static class AsyncTaskC2947d extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2956c f9730a;

        /* renamed from: b */
        private List<String> f9731b;

        /* renamed from: c */
        private ArrayList<String> f9732c;

        /* renamed from: d */
        private ArrayList<CallLogBean> f9733d;

        /* renamed from: com.allinone.callerid.i.a.r.a$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/a$d$a.class */
        public class C2948a implements Comparator<CallLogBean> {
            C2948a() {
                AsyncTaskC2947d.this = r4;
            }

            /* renamed from: a */
            public int compare(CallLogBean callLogBean, CallLogBean callLogBean2) {
                return callLogBean2.m24900f() - callLogBean.m24900f();
            }
        }

        AsyncTaskC2947d(List<String> list, List<String> list2, List<CallLogBean> list3, AbstractC2956c abstractC2956c) {
            this.f9730a = abstractC2956c;
            this.f9731b = list;
            this.f9732c = (ArrayList) list2;
            this.f9733d = (ArrayList) list3;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String string;
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    return null;
                }
                ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
                Cursor query = contentResolver.query(C3714b1.m24450h(), new String[]{ShortCut.NUMBER}, null, null, "date DESC");
                if (query == null || query.getCount() <= 0) {
                    if (query == null) {
                        return "3333";
                    }
                    query.close();
                    return "3333";
                }
                this.f9731b.clear();
                this.f9732c.clear();
                query.moveToFirst();
                for (int i = 0; i < query.getCount(); i++) {
                    query.moveToPosition(i);
                    String string2 = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                    if (!this.f9732c.contains(string2)) {
                        this.f9732c.add(string2);
                        this.f9731b.add(string2);
                    }
                }
                List<String> list = this.f9731b;
                if (list != null && list.size() > 0) {
                    ArrayList<CallLogBean> arrayList = this.f9733d;
                    if (arrayList != null) {
                        arrayList.clear();
                    } else {
                        this.f9733d = new ArrayList<>();
                    }
                    for (int i2 = 0; i2 < this.f9731b.size(); i2++) {
                        try {
                            if (!C3767h1.m24216w0(this.f9731b.get(i2))) {
                                Cursor query2 = contentResolver.query(C3714b1.m24450h(), null, "number=?", new String[]{this.f9731b.get(i2)}, "date DESC");
                                if (query2 != null) {
                                    CallLogBean callLogBean = new CallLogBean();
                                    callLogBean.m24951E0(this.f9731b.get(i2));
                                    callLogBean.m24877q0(query2.getCount());
                                    if (C3767h1.m24263Y(EZCallApplication.m26146c(), callLogBean.m24880o())) {
                                        callLogBean.m24878p0(true);
                                        String m24217w = C3767h1.m24217w(EZCallApplication.m26146c(), callLogBean.m24880o());
                                        if (m24217w != null && !"".equals(m24217w)) {
                                            callLogBean.m24955C0(m24217w);
                                            int m24262Z = C3767h1.m24262Z(EZCallApplication.m26146c(), callLogBean.m24880o());
                                            callLogBean.m24942J0(m24262Z);
                                            Cursor query3 = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data2"}, "contact_id=?", new String[]{m24262Z + ""}, null);
                                            if (query3.moveToNext() && (string = query3.getString(query3.getColumnIndex("data2"))) != null && !"".equals(string)) {
                                                int parseInt = Integer.parseInt(string);
                                                if (parseInt == 1) {
                                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.home));
                                                } else if (parseInt == 2) {
                                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.mobile));
                                                } else if (parseInt == 3) {
                                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.work));
                                                } else if (parseInt == 4) {
                                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.workfax));
                                                }
                                            }
                                            query3.close();
                                        }
                                        this.f9733d.add(callLogBean);
                                    }
                                }
                                if (query2 != null) {
                                    query2.close();
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                ArrayList<CallLogBean> arrayList2 = this.f9733d;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    try {
                        Collections.sort(this.f9733d, new C2948a());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("favourite", "fav_contact:" + this.f9733d.get(0).toString());
                    }
                }
                query.close();
                return "2222";
            } catch (Exception e3) {
                e3.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("2222".equals(str)) {
                this.f9730a.mo25309a(this.f9731b, this.f9732c, this.f9733d);
            } else {
                this.f9730a.mo25308b();
            }
        }
    }

    /* renamed from: f */
    public static void m26375f(AbstractC2959f abstractC2959f) {
        try {
            AsyncTaskC2943a asyncTaskC2943a = new AsyncTaskC2943a(abstractC2959f);
            if (asyncTaskC2943a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2943a.cancel(true);
            new AsyncTaskC2943a(abstractC2959f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m26374g(Context context, AbstractC2958e abstractC2958e) {
        try {
            new AsyncTaskC2944b(context, abstractC2958e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m26373h(Context context, boolean z, AbstractC2960g abstractC2960g) {
        if (f9721a != null && !z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "mAllList");
            }
            abstractC2960g.mo25307a(f9721a);
            return;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "LoadContactTask");
        }
        try {
            new AsyncTaskC2946c(context, abstractC2960g).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public static String m26372i(String str) {
        if (str == null) {
            return "#";
        }
        String upperCase = C3863u.m23916c().m23917b(str).get(0).f12191c.substring(0, 1).toUpperCase(Locale.CHINESE);
        String str2 = "#";
        if (upperCase.matches("[A-Z]")) {
            str2 = upperCase.toUpperCase(Locale.CHINESE);
        }
        return str2;
    }

    /* renamed from: j */
    public static String m26371j(String str) {
        if (str == null || "".equals(str.trim())) {
            return null;
        }
        String upperCase = C3863u.m23916c().m23917b(str).get(0).f12191c.trim().substring(0, 1).toUpperCase(Locale.CHINESE);
        return upperCase.matches("[A-Z]") ? upperCase.toUpperCase(Locale.CHINESE) : "#";
    }

    /* renamed from: k */
    public static void m26370k(List<String> list, List<String> list2, List<CallLogBean> list3, AbstractC2956c abstractC2956c) {
        try {
            new AsyncTaskC2947d(list, list2, list3, abstractC2956c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l */
    public static void m26369l(Context context, AbstractC2960g abstractC2960g) {
        try {
            new AsyncTaskC2946c(context, abstractC2960g).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    public static SortToken m26368m(String str) {
        String[] split;
        SortToken sortToken = new SortToken();
        if (str != null && str.length() > 0) {
            for (String str2 : str.replace(" ", "").split("[\\u4E00-\\u9FA5]+")) {
                if (str2.length() > 0) {
                    StringBuilder sb = new StringBuilder(sortToken.f8654d);
                    sb.append(str2.charAt(0));
                    sortToken.f8654d = String.valueOf(sb);
                    StringBuilder sb2 = new StringBuilder(sortToken.f8655e);
                    sb2.append(str2);
                    sortToken.f8655e = String.valueOf(sb2);
                }
            }
        }
        return sortToken;
    }
}
