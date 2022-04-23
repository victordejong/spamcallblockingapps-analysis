package com.callerid.block.sms;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.util.C1174e;
import com.callerid.block.util.C1227w;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* renamed from: com.callerid.block.sms.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/b.class */
public class C1141b {

    /* renamed from: b */
    public static final Uri f4874b = Uri.parse("content://mms-sms/conversations?simple=true");

    /* renamed from: c */
    public static final Uri f4875c = Uri.parse("content://mms-sms/canonical-addresses");

    /* renamed from: d */
    public static String[] f4876d = {"thread_id", "msg_count", "snippet"};

    /* renamed from: e */
    public static String[] f4877e = {EZBlackList.f4115ID, "date", "message_count", "recipient_ids", "snippet", "snippet_cs", "read", "type", "error", "has_attachment"};

    /* renamed from: a */
    private Context f4878a;

    public C1141b(Context context) {
        this.f4878a = context;
    }

    /* renamed from: a */
    public long m9962a(String str) {
        ContentResolver contentResolver = this.f4878a.getContentResolver();
        Uri parse = Uri.parse("content://sms/");
        Cursor query = contentResolver.query(parse, null, "address like '%" + str + "%'", null, null);
        if (query == null) {
            return 0L;
        }
        while (query.moveToNext()) {
            long j = query.getLong(query.getColumnIndex("thread_id"));
            if (PhoneNumberUtils.compare(str, query.getString(query.getColumnIndex("address")))) {
                query.close();
                return j;
            }
        }
        query.close();
        return 0L;
    }

    /* renamed from: b */
    public List<SMSBean> m9961b() {
        ContentResolver contentResolver = this.f4878a.getContentResolver();
        ArrayList arrayList = new ArrayList();
        C1227w.m9527a("readsms", "getThreadsNum:" + C1174e.m9861c(System.currentTimeMillis()));
        try {
            Cursor query = contentResolver.query(f4874b, f4877e, null, null, "date desc");
            if (!(query == null || query.getCount() == 0)) {
                for (int i = 0; i < query.getCount(); i++) {
                    query.moveToPosition(i);
                    SMSBean sMSBean = new SMSBean(query.getString(0), query.getString(2), query.getString(4));
                    sMSBean.setHas_attachment("1".equals(query.getString(9)));
                    sMSBean.setDate(Long.valueOf(query.getLong(1)));
                    sMSBean.setRead(query.getString(6));
                    sMSBean.setRecipient_ids(query.getString(3));
                    sMSBean.setShow_time(C1174e.m9856h(new Date(sMSBean.getDate().longValue())));
                    Uri uri = f4875c;
                    Cursor query2 = contentResolver.query(uri, null, "_id = " + sMSBean.getRecipient_ids(), null, null);
                    if (query2 != null && query2.getCount() > 0) {
                        query2.moveToFirst();
                        sMSBean.setAddress(query2.getString(query2.getColumnIndex("address")));
                        int columnIndex = query2.getColumnIndex(EZBlackList.NAME);
                        if (columnIndex != -1) {
                            sMSBean.setName(query2.getString(columnIndex));
                        }
                    }
                    if (query2 != null) {
                        query2.close();
                    }
                    if (sMSBean.getMsg_count() != null && !"0".equals(sMSBean.getMsg_count())) {
                        arrayList.add(sMSBean);
                    }
                }
                C1227w.m9527a("readsms", "getThreadsNum_end:" + C1174e.m9861c(System.currentTimeMillis()));
                if (query != null) {
                    query.close();
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("readsms", "list_sms:" + arrayList.toString());
                }
            }
            return arrayList;
        } catch (Exception e) {
            if (C1227w.f5084a) {
                C1227w.m9527a("readsms", "Exception:" + e.getMessage());
            }
            e.getMessage();
            return arrayList;
        }
    }

    /* renamed from: c */
    public String m9960c(String str) {
        String str2 = "";
        try {
            Cursor query = this.f4878a.getContentResolver().query(Uri.parse("content://sms/conversations"), f4876d, "address = ? ", new String[]{str}, null);
            String str3 = "";
            if (query != null) {
                str3 = "";
                if (query.moveToFirst()) {
                    str3 = query.getString(0);
                }
            }
            str2 = str3;
            if (query != null) {
                str2 = str3;
                query.close();
                str2 = str3;
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return str2;
    }
}
