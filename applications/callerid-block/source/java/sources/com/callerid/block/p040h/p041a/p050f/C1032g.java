package com.callerid.block.p040h.p041a.p050f;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.callerid.block.R$string;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1183i0;
import com.callerid.block.util.C1206q;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.SortToken;
import com.callerid.block.util.p060x0.C1230a;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
/* renamed from: com.callerid.block.h.a.f.g */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/g.class */
public class C1032g {

    /* renamed from: a */
    private static ArrayList<CallLogBean> f4472a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.f.g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/g$a.class */
    public static class AsyncTaskC1033a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1041j f4473a;

        /* renamed from: b */
        private boolean f4474b;

        AsyncTaskC1033a(AbstractC1041j abstractC1041j) {
            this.f4473a = abstractC1041j;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                this.f4474b = C1216t0.m9601K();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4473a.m10304a(this.f4474b);
        }
    }

    /* renamed from: com.callerid.block.h.a.f.g$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/g$b.class */
    private static class AsyncTaskC1034b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1037h f4475a;

        /* renamed from: b */
        private ArrayList<CallLogBean> f4476b;

        /* renamed from: c */
        private Context f4477c;

        /* renamed from: com.callerid.block.h.a.f.g$b$a */
        /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/g$b$a.class */
        public class C1035a implements Comparator<CallLogBean> {
            C1035a(AsyncTaskC1034b asyncTaskC1034b) {
            }

            /* renamed from: a */
            public int compare(CallLogBean callLogBean, CallLogBean callLogBean2) {
                return Collator.getInstance(Locale.getDefault()).compare(callLogBean.m10047n(), callLogBean2.m10047n());
            }
        }

        AsyncTaskC1034b(Context context, AbstractC1037h abstractC1037h) {
            this.f4477c = context;
            this.f4475a = abstractC1037h;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            Cursor query;
            int i;
            String str;
            ArrayList<CallLogBean> arrayList;
            CallLogBean callLogBean;
            this.f4476b = new ArrayList<>();
            try {
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
            if (!C1230a.m9513c(EZCallApplication.m10163c()) || (query = EZCallApplication.m10163c().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "starred = 1 ", null, null)) == null) {
                return null;
            }
            while (true) {
                if (!query.moveToNext()) {
                    break;
                }
                long j = query.getLong(query.getColumnIndex(EZBlackList.f4115ID));
                Cursor query2 = this.f4477c.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id=" + Long.toString(j), null, null);
                int i2 = 0;
                String str2 = "";
                String str3 = "";
                String str4 = "";
                if (query2 != null) {
                    str4 = "";
                    String str5 = "";
                    i2 = 0;
                    String str6 = "";
                    while (query2.moveToNext()) {
                        str6 = str6 + query2.getString(query2.getColumnIndex("data1")) + ":";
                        i2 = query2.getInt(query2.getColumnIndex("data2"));
                        str4 = query2.getString(query2.getColumnIndex("account_type"));
                        str5 = query2.getString(query2.getColumnIndex("account_name"));
                    }
                    query2.close();
                    str3 = str5;
                    str2 = str6;
                }
                String string = query.getString(query.getColumnIndex("display_name"));
                try {
                    str = query.getString(query.getColumnIndex("photo_uri"));
                } catch (Exception e2) {
                    e2.printStackTrace();
                    str = null;
                }
                String str7 = "";
                if (i2 != 0) {
                    str7 = i2 != 2 ? "" : this.f4477c.getResources().getString(R$string.mobile);
                }
                String[] split = str2.split(":");
                if (C1227w.f5084a) {
                    C1227w.m9527a("favourite", "numbers:" + str2);
                }
                if (split.length == 1) {
                    CallLogBean callLogBean2 = new CallLogBean();
                    callLogBean2.m10050l0(string);
                    callLogBean2.m10048m0(split[0]);
                    callLogBean2.m10039r0((int) j);
                    callLogBean2.m10046n0(str7);
                    callLogBean2.m10104B0("1");
                    callLogBean2.m10080R(str3);
                    callLogBean2.m10079S(str4);
                    callLogBean2.m10070a0(true);
                    callLogBean2.m10040q0(str);
                    arrayList = this.f4476b;
                    callLogBean = callLogBean2;
                } else if (split.length > 1) {
                    CallLogBean callLogBean3 = new CallLogBean();
                    callLogBean3.m10050l0(string);
                    callLogBean3.m10048m0(split[0]);
                    callLogBean3.m10039r0((int) j);
                    callLogBean3.m10046n0(str7);
                    callLogBean3.m10080R(str3);
                    callLogBean3.m10079S(str4);
                    callLogBean3.m10104B0("1");
                    callLogBean3.m10070a0(true);
                    callLogBean3.m10040q0(str);
                    arrayList = this.f4476b;
                    callLogBean = callLogBean3;
                }
                arrayList.add(callLogBean);
                e.printStackTrace();
                return null;
            }
            query.close();
            ArrayList<CallLogBean> arrayList2 = this.f4476b;
            if (arrayList2 == null || arrayList2.size() == 0) {
                return "999";
            }
            for (i = 0; i < this.f4476b.size(); i++) {
                for (int size = this.f4476b.size() - 1; size > i; size--) {
                    if (this.f4476b.get(i).m10045o().equals(this.f4476b.get(size).m10045o())) {
                        this.f4476b.remove(size);
                    }
                }
            }
            Collections.sort(this.f4476b, new C1035a(this));
            return "999";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("999".equals(str)) {
                this.f4475a.m10311a(this.f4476b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.f.g$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/g$c.class */
    public static class AsyncTaskC1036c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private Context f4478a;

        /* renamed from: b */
        private AbstractC1045m f4479b;

        AsyncTaskC1036c(Context context, AbstractC1045m abstractC1045m) {
            this.f4478a = context;
            this.f4479b = abstractC1045m;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            Cursor query;
            ArrayList arrayList;
            try {
                if (C1230a.m9513c(EZCallApplication.m10163c()) && (query = EZCallApplication.m10163c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id", "photo_id", "starred", "data2", "account_type", "account_name"}, null, null, "sort_key COLLATE LOCALIZED ASC")) != null && query.getCount() != 0) {
                    int columnIndex = query.getColumnIndex("data1");
                    int columnIndex2 = query.getColumnIndex("display_name");
                    int columnIndex3 = query.getColumnIndex("sort_key");
                    if (query.getCount() > 0) {
                        ArrayList unused = C1032g.f4472a = new ArrayList();
                        C1032g.f4472a.clear();
                        while (query.moveToNext()) {
                            String string = query.getString(columnIndex);
                            if (!TextUtils.isEmpty(string)) {
                                String string2 = query.getString(columnIndex2);
                                String string3 = query.getString(columnIndex3);
                                String string4 = query.getString(query.getColumnIndex("starred"));
                                String string5 = query.getString(query.getColumnIndex("photo_id"));
                                String string6 = query.getString(query.getColumnIndex("account_type"));
                                String string7 = query.getString(query.getColumnIndex("account_name"));
                                int i = query.getInt(query.getColumnIndex("contact_id"));
                                String string8 = query.getInt(query.getColumnIndex("data2")) != 2 ? "" : this.f4478a.getResources().getString(R$string.mobile);
                                String m9833b = C1183i0.m9833b(string);
                                CallLogBean callLogBean = new CallLogBean();
                                callLogBean.m10039r0(i);
                                callLogBean.m10104B0(string4);
                                callLogBean.m10026y0(string3);
                                String m10321j = C1032g.m10321j(string3);
                                String str = m10321j;
                                if (m10321j == null) {
                                    str = C1032g.m10322i(string2);
                                }
                                callLogBean.m10024z0(str);
                                callLogBean.m10106A0(C1032g.m10319l(string3));
                                if (string8 != null && !"".equals(string8)) {
                                    callLogBean.m10046n0(string8);
                                    callLogBean.m10032v0(string8);
                                }
                                callLogBean.m10080R(string7);
                                callLogBean.m10079S(string6);
                                callLogBean.m10056h0(m9833b);
                                callLogBean.m10048m0(string);
                                callLogBean.m10052k0(string + ":");
                                if (string5 != null && !"".equals(string5) && !"0".equals(string5)) {
                                    callLogBean.m10040q0(string5);
                                }
                                if (string2 != null) {
                                    callLogBean.m10050l0(string2);
                                    C1032g.f4472a.add(callLogBean);
                                }
                            }
                        }
                    }
                    query.close();
                    try {
                        if (C1032g.f4472a == null || C1032g.f4472a.size() == 0) {
                            return "777";
                        }
                        for (int i2 = 0; i2 < C1032g.f4472a.size(); i2++) {
                            CallLogBean callLogBean2 = (CallLogBean) C1032g.f4472a.get(i2);
                            if (callLogBean2 != null) {
                                int m10036t = callLogBean2.m10036t();
                                for (int size = C1032g.f4472a.size() - 1; size > i2; size--) {
                                    CallLogBean callLogBean3 = (CallLogBean) C1032g.f4472a.get(size);
                                    if (callLogBean3 != null && m10036t == callLogBean3.m10036t()) {
                                        String m10049m = callLogBean2.m10049m();
                                        String m10049m2 = callLogBean3.m10049m();
                                        if (m10049m.contains(m10049m2)) {
                                            arrayList = C1032g.f4472a;
                                        } else {
                                            callLogBean2.m10052k0(m10049m + m10049m2);
                                            arrayList = C1032g.f4472a;
                                        }
                                        arrayList.remove(size);
                                    }
                                }
                            }
                        }
                        return "777";
                    } catch (Exception e) {
                        e.printStackTrace();
                        return "777";
                    }
                }
                return null;
            } catch (Exception e2) {
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (str != null) {
                this.f4479b.m10298b(C1032g.f4472a);
            } else {
                this.f4479b.m10299a();
            }
        }
    }

    /* renamed from: f */
    public static void m10325f(AbstractC1041j abstractC1041j) {
        try {
            AsyncTaskC1033a asyncTaskC1033a = new AsyncTaskC1033a(abstractC1041j);
            if (asyncTaskC1033a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC1033a.cancel(true);
            new AsyncTaskC1033a(abstractC1041j).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m10324g(Context context, AbstractC1037h abstractC1037h) {
        try {
            new AsyncTaskC1034b(context, abstractC1037h).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m10323h(Context context, boolean z, AbstractC1045m abstractC1045m) {
        if (f4472a != null && !z) {
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "mAllList");
            }
            abstractC1045m.m10298b(f4472a);
            return;
        }
        if (C1227w.f5084a) {
            C1227w.m9527a("tony", "LoadContactTask");
        }
        try {
            new AsyncTaskC1036c(context, abstractC1045m).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public static String m10322i(String str) {
        if (str == null) {
            return "#";
        }
        String upperCase = C1206q.m9631c().m9632b(str).get(0).f5057c.substring(0, 1).toUpperCase(Locale.CHINESE);
        String str2 = "#";
        if (upperCase.matches("[A-Z]")) {
            str2 = upperCase.toUpperCase(Locale.CHINESE);
        }
        return str2;
    }

    /* renamed from: j */
    public static String m10321j(String str) {
        if (str == null || "".equals(str.trim())) {
            return null;
        }
        String upperCase = C1206q.m9631c().m9632b(str).get(0).f5057c.trim().substring(0, 1).toUpperCase(Locale.CHINESE);
        return upperCase.matches("[A-Z]") ? upperCase.toUpperCase(Locale.CHINESE) : "#";
    }

    /* renamed from: k */
    public static void m10320k(Context context, AbstractC1045m abstractC1045m) {
        try {
            new AsyncTaskC1036c(context, abstractC1045m).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l */
    public static SortToken m10319l(String str) {
        String[] split;
        SortToken sortToken = new SortToken();
        if (str != null && str.length() > 0) {
            for (String str2 : str.replace(" ", "").split("[\\u4E00-\\u9FA5]+")) {
                if (str2.length() > 0) {
                    StringBuilder sb = new StringBuilder(sortToken.f4971b);
                    sb.append(str2.charAt(0));
                    sortToken.f4971b = String.valueOf(sb);
                    StringBuilder sb2 = new StringBuilder(sortToken.f4972c);
                    sb2.append(str2);
                    sortToken.f4972c = String.valueOf(sb2);
                }
            }
        }
        return sortToken;
    }
}
