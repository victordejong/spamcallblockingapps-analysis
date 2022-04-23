package com.callerid.block.p040h.p041a.p044d;

import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.CallLog;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1227w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.callerid.block.h.a.d.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/d.class */
public class AsyncTaskC0979d extends AsyncTask<String, String, ArrayList<CallLogBean>> {

    /* renamed from: a */
    private List<String> f4401a = new ArrayList();

    /* renamed from: b */
    private HashMap<String, Integer> f4402b = new HashMap<>();

    /* renamed from: c */
    private ArrayList<CallLogBean> f4403c;

    /* renamed from: d */
    private AbstractC0975a f4404d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsyncTaskC0979d(AbstractC0975a aVar) {
        this.f4404d = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x01de, code lost:
        if ("".equalsIgnoreCase(r18) != false) goto L_0x01e1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.ArrayList<com.callerid.block.search.CallLogBean> m10414b(android.database.Cursor r6) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p040h.p041a.p044d.AsyncTaskC0979d.m10414b(android.database.Cursor):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public ArrayList<CallLogBean> doInBackground(String... strArr) {
        Cursor query = EZCallApplication.m10163c().getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date", EZBlackList.NUMBER, "type", EZBlackList.NAME, EZBlackList.f4115ID, "numbertype", "lookup_uri", "photo_id", "numberlabel", "formatted_number"}, null, null, "date DESC");
        if (query != null) {
            this.f4403c = m10414b(query);
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "去重，格式化通话记录数据");
            }
        }
        return this.f4403c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public void onPostExecute(ArrayList<CallLogBean> arrayList) {
        super.onPostExecute(arrayList);
        AbstractC0975a aVar = this.f4404d;
        if (aVar != null) {
            aVar.m10421a(arrayList, this.f4402b);
        }
    }
}
