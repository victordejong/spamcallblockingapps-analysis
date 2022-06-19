package com.allinone.callerid.p162i.p163a.p188r;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
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
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3863u;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.i.a.r.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/b.class */
public class C2949b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/b$a.class */
    public static class AsyncTaskC2950a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private List<CallLogBean> f9735a;

        /* renamed from: b */
        private AbstractC2958e f9736b;

        AsyncTaskC2950a(List<CallLogBean> list, AbstractC2958e abstractC2958e) {
            this.f9735a = list;
            this.f9736b = abstractC2958e;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                this.f9735a.clear();
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "sort_key", "contact_id", "data1", "photo_id", "starred"}, null, null, "sort_key");
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        String string = query.getString(query.getColumnIndex("data1"));
                        String string2 = query.getString(query.getColumnIndex("starred"));
                        String string3 = query.getString(query.getColumnIndex("display_name"));
                        String string4 = query.getString(query.getColumnIndex("photo_id"));
                        int i2 = query.getInt(query.getColumnIndex("contact_id"));
                        CallLogBean callLogBean = new CallLogBean();
                        callLogBean.m24922V0(string2);
                        callLogBean.m24942J0(i2);
                        callLogBean.m24951E0(string);
                        if (string4 != null && !"".equals(string4) && !"0".equals(string4)) {
                            callLogBean.m24944I0(string4);
                        }
                        if (string3 != null) {
                            callLogBean.m24955C0(string3);
                            this.f9735a.add(callLogBean);
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                if (this.f9735a.size() <= 0) {
                    return null;
                }
                return "ok";
            } catch (Resources.NotFoundException e) {
                e.printStackTrace();
                return null;
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("ok".equals(str)) {
                this.f9736b.mo25301a(this.f9735a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/b$b.class */
    public static class AsyncTaskC2951b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2958e f9737a;

        /* renamed from: b */
        private ArrayList<CallLogBean> f9738b;

        /* renamed from: c */
        private Context f9739c;

        /* renamed from: com.allinone.callerid.i.a.r.b$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/b$b$a.class */
        public class C2952a implements Comparator<CallLogBean> {
            C2952a() {
                AsyncTaskC2951b.this = r4;
            }

            /* renamed from: a */
            public int compare(CallLogBean callLogBean, CallLogBean callLogBean2) {
                return Collator.getInstance(Locale.getDefault()).compare(callLogBean.m24884m(), callLogBean2.m24884m());
            }
        }

        AsyncTaskC2951b(Context context, AbstractC2958e abstractC2958e) {
            this.f9739c = context;
            this.f9737a = abstractC2958e;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            Cursor query;
            int i;
            String str;
            this.f9738b = new ArrayList<>();
            try {
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") != 0 || (query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "starred = 1 ", null, null)) == null) {
                return null;
            }
            query.getCount();
            while (true) {
                if (!query.moveToNext()) {
                    break;
                }
                long j = query.getLong(query.getColumnIndex("_id"));
                Cursor query2 = this.f9739c.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id=" + Long.toString(j), null, null);
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
                    str3 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "" : this.f9739c.getResources().getString(R$string.workfax) : this.f9739c.getResources().getString(R$string.work) : this.f9739c.getResources().getString(R$string.mobile) : this.f9739c.getResources().getString(R$string.home);
                }
                String[] split = str2.split(":");
                if (split.length == 1) {
                    CallLogBean callLogBean = new CallLogBean();
                    callLogBean.m24955C0(string);
                    callLogBean.m24951E0(split[0]);
                    callLogBean.m24942J0((int) j);
                    callLogBean.m24949F0(str3);
                    callLogBean.m24922V0("1");
                    callLogBean.m24878p0(true);
                    callLogBean.m24944I0(str);
                    this.f9738b.add(callLogBean);
                } else if (split.length > 1) {
                    CallLogBean callLogBean2 = new CallLogBean();
                    callLogBean2.m24955C0(string);
                    callLogBean2.m24951E0(split[0]);
                    callLogBean2.m24942J0((int) j);
                    callLogBean2.m24949F0(str3);
                    callLogBean2.m24922V0("1");
                    callLogBean2.m24878p0(true);
                    callLogBean2.m24944I0(str);
                    this.f9738b.add(callLogBean2);
                }
                e.printStackTrace();
                return null;
            }
            query.close();
            ArrayList<CallLogBean> arrayList = this.f9738b;
            if (arrayList == null || arrayList.size() == 0) {
                return "999";
            }
            for (i = 0; i < this.f9738b.size(); i++) {
                for (int size = this.f9738b.size() - 1; size > i; size--) {
                    if (this.f9738b.get(i).m24880o().equals(this.f9738b.get(size).m24880o())) {
                        this.f9738b.remove(size);
                    }
                }
            }
            Collections.sort(this.f9738b, new C2952a());
            return "999";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("999".equals(str)) {
                this.f9737a.mo25301a(this.f9738b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/b$c.class */
    public static class AsyncTaskC2953c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private ArrayList<CallLogBean> f9741a;

        /* renamed from: b */
        private Context f9742b;

        /* renamed from: c */
        private AbstractC2960g f9743c;

        AsyncTaskC2953c(Context context, AbstractC2960g abstractC2960g) {
            this.f9742b = context;
            this.f9743c = abstractC2960g;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            CallLogBean callLogBean;
            String str = null;
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") == 0) {
                    Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id", "photo_id", "starred", "data2"}, null, null, "sort_key COLLATE LOCALIZED ASC");
                    str = null;
                    if (query != null) {
                        if (query.getCount() == 0) {
                            str = null;
                        } else {
                            int columnIndex = query.getColumnIndex("data1");
                            int columnIndex2 = query.getColumnIndex("display_name");
                            int columnIndex3 = query.getColumnIndex("sort_key");
                            if (query.getCount() > 0) {
                                this.f9741a = new ArrayList<>();
                                while (query.moveToNext()) {
                                    String string = query.getString(columnIndex);
                                    if (!TextUtils.isEmpty(string)) {
                                        String string2 = query.getString(columnIndex2);
                                        String string3 = query.getString(columnIndex3);
                                        String string4 = query.getString(query.getColumnIndex("starred"));
                                        String string5 = query.getString(query.getColumnIndex("photo_id"));
                                        int i = query.getInt(query.getColumnIndex("contact_id"));
                                        int i2 = query.getInt(query.getColumnIndex("data2"));
                                        String string6 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "" : this.f9742b.getResources().getString(R$string.workfax) : this.f9742b.getResources().getString(R$string.work) : this.f9742b.getResources().getString(R$string.mobile) : this.f9742b.getResources().getString(R$string.home);
                                        CallLogBean callLogBean2 = new CallLogBean();
                                        callLogBean2.m24942J0(i);
                                        callLogBean2.m24922V0(string4);
                                        callLogBean2.m24925T0(string3);
                                        String m26350h = C2949b.m26350h(string3);
                                        String str2 = m26350h;
                                        if (m26350h == null) {
                                            str2 = C2949b.m26351g(string2);
                                        }
                                        callLogBean2.f11532t = str2;
                                        callLogBean2.f11516h0 = C2949b.m26348j(string3);
                                        if (string6 != null && !"".equals(string6)) {
                                            callLogBean2.m24949F0(string6);
                                            callLogBean2.m24933O0(string6);
                                        }
                                        callLogBean2.m24951E0(string);
                                        callLogBean2.m24957B0(string + ":");
                                        if (string5 != null && !"".equals(string5) && !"0".equals(string5)) {
                                            callLogBean2.m24944I0(string5);
                                        }
                                        if (string2 != null) {
                                            callLogBean2.m24955C0(string2);
                                            this.f9741a.add(callLogBean2);
                                        }
                                    }
                                }
                            }
                            query.close();
                            ArrayList<CallLogBean> arrayList = this.f9741a;
                            if (arrayList != null && arrayList.size() != 0) {
                                for (int i3 = 0; i3 < this.f9741a.size(); i3++) {
                                    CallLogBean callLogBean3 = this.f9741a.get(i3);
                                    int m24868v = callLogBean3.m24868v();
                                    for (int size = this.f9741a.size() - 1; size > i3; size--) {
                                        if (m24868v == this.f9741a.get(size).m24868v()) {
                                            callLogBean3.m24957B0(callLogBean3.m24886l() + callLogBean.m24886l());
                                            this.f9741a.remove(size);
                                        }
                                    }
                                }
                            }
                            str = "777";
                        }
                    }
                }
            } catch (Exception e) {
                str = null;
            }
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (str != null) {
                this.f9743c.mo25307a(this.f9741a);
            } else {
                this.f9743c.mo25306b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.r.b$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/b$d.class */
    public static class AsyncTaskC2954d extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2956c f9744a;

        /* renamed from: b */
        private List<String> f9745b;

        /* renamed from: c */
        private ArrayList<String> f9746c;

        /* renamed from: d */
        private ArrayList<CallLogBean> f9747d;

        /* renamed from: com.allinone.callerid.i.a.r.b$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/r/b$d$a.class */
        public class C2955a implements Comparator<CallLogBean> {
            C2955a() {
                AsyncTaskC2954d.this = r4;
            }

            /* renamed from: a */
            public int compare(CallLogBean callLogBean, CallLogBean callLogBean2) {
                return callLogBean2.m24900f() - callLogBean.m24900f();
            }
        }

        AsyncTaskC2954d(List<String> list, List<String> list2, List<CallLogBean> list3, AbstractC2956c abstractC2956c) {
            this.f9744a = abstractC2956c;
            this.f9745b = list;
            this.f9746c = (ArrayList) list2;
            this.f9747d = (ArrayList) list3;
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
                this.f9745b.clear();
                this.f9746c.clear();
                query.moveToFirst();
                for (int i = 0; i < query.getCount(); i++) {
                    query.moveToPosition(i);
                    String string2 = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                    if (!this.f9746c.contains(string2)) {
                        this.f9746c.add(string2);
                        this.f9745b.add(string2);
                    }
                }
                List<String> list = this.f9745b;
                if (list != null && list.size() > 0) {
                    ArrayList<CallLogBean> arrayList = this.f9747d;
                    if (arrayList != null) {
                        arrayList.clear();
                    } else {
                        this.f9747d = new ArrayList<>();
                    }
                    for (int i2 = 0; i2 < this.f9745b.size(); i2++) {
                        try {
                            if (!C3767h1.m24216w0(this.f9745b.get(i2))) {
                                Cursor query2 = contentResolver.query(C3714b1.m24450h(), null, "number=?", new String[]{this.f9745b.get(i2)}, "date DESC");
                                if (query2 != null) {
                                    CallLogBean callLogBean = new CallLogBean();
                                    callLogBean.m24951E0(this.f9745b.get(i2));
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
                                        this.f9747d.add(callLogBean);
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
                ArrayList<CallLogBean> arrayList2 = this.f9747d;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    try {
                        Collections.sort(this.f9747d, new C2955a());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("favourite", "fav_contact:" + this.f9747d.get(0).m24880o());
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
                this.f9744a.mo25309a(this.f9745b, this.f9746c, this.f9747d);
            } else {
                this.f9744a.mo25308b();
            }
        }
    }

    /* renamed from: d */
    public static void m26354d(List<CallLogBean> list, AbstractC2958e abstractC2958e) {
        try {
            new AsyncTaskC2950a(list, abstractC2958e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m26353e(Context context, AbstractC2958e abstractC2958e) {
        try {
            new AsyncTaskC2951b(context, abstractC2958e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public static void m26352f(Context context, AbstractC2960g abstractC2960g) {
        try {
            new AsyncTaskC2953c(context, abstractC2960g).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public static String m26351g(String str) {
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

    /* renamed from: h */
    public static String m26350h(String str) {
        if (str == null || "".equals(str.trim())) {
            return null;
        }
        String upperCase = C3863u.m23916c().m23917b(str).get(0).f12191c.trim().substring(0, 1).toUpperCase(Locale.CHINESE);
        return upperCase.matches("[A-Z]") ? upperCase.toUpperCase(Locale.CHINESE) : "#";
    }

    /* renamed from: i */
    public static void m26349i(List<String> list, List<String> list2, List<CallLogBean> list3, AbstractC2956c abstractC2956c) {
        try {
            new AsyncTaskC2954d(list, list2, list3, abstractC2956c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public static SortToken m26348j(String str) {
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
