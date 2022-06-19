package com.callerid.block.p040h.p041a.p050f;

import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.p060x0.C1230a;
import java.util.ArrayList;
/* renamed from: com.callerid.block.h.a.f.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/d.class */
public class C1026d {

    /* renamed from: com.callerid.block.h.a.f.d$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/d$a.class */
    private static class AsyncTaskC1027a extends AsyncTask<String, Void, ArrayList<CallLogBean>> {

        /* renamed from: a */
        private AbstractC1045m f4467a;

        AsyncTaskC1027a(AbstractC1045m abstractC1045m) {
            this.f4467a = abstractC1045m;
        }

        /* renamed from: a */
        public ArrayList<CallLogBean> doInBackground(String... strArr) {
            Cursor query;
            try {
                ArrayList<CallLogBean> arrayList = new ArrayList<>();
                if (C1230a.m9514b(EZCallApplication.m10163c(), "android.permission.READ_CONTACTS") && (query = EZCallApplication.m10163c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id", "photo_id", "starred", "data2"}, null, null, "sort_key COLLATE LOCALIZED ASC")) != null && query.getCount() != 0) {
                    int columnIndex = query.getColumnIndex("data1");
                    int columnIndex2 = query.getColumnIndex("display_name");
                    int columnIndex3 = query.getColumnIndex("sort_key");
                    if (query.getCount() > 0) {
                        while (query.moveToNext()) {
                            String string = query.getString(columnIndex);
                            if (!TextUtils.isEmpty(string)) {
                                String string2 = query.getString(columnIndex2);
                                query.getString(columnIndex3);
                                String string3 = query.getString(query.getColumnIndex("starred"));
                                String string4 = query.getString(query.getColumnIndex("photo_id"));
                                int i = query.getInt(query.getColumnIndex("contact_id"));
                                CallLogBean callLogBean = new CallLogBean();
                                callLogBean.m10039r0(i);
                                callLogBean.m10104B0(string3);
                                callLogBean.m10048m0(string);
                                if (string4 != null && !"".equals(string4) && !"0".equals(string4)) {
                                    callLogBean.m10040q0(string4);
                                }
                                if (string2 != null) {
                                    callLogBean.m10050l0(string2);
                                }
                                arrayList.add(callLogBean);
                            }
                        }
                    }
                    query.close();
                    if (arrayList.size() != 0) {
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            int m10036t = arrayList.get(i2).m10036t();
                            for (int size = arrayList.size() - 1; size > i2; size--) {
                                if (m10036t == arrayList.get(size).m10036t()) {
                                    arrayList.remove(size);
                                }
                            }
                        }
                    }
                    return arrayList;
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(ArrayList<CallLogBean> arrayList) {
            super.onPostExecute(arrayList);
            if (arrayList == null || arrayList.size() <= 0) {
                this.f4467a.m10299a();
            } else {
                this.f4467a.m10298b(arrayList);
            }
        }
    }

    /* renamed from: a */
    public static void m10340a(AbstractC1045m abstractC1045m) {
        try {
            new AsyncTaskC1027a(abstractC1045m).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
