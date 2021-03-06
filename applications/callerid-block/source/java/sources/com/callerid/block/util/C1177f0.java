package com.callerid.block.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.EZSearchContacts;
/* renamed from: com.callerid.block.util.f0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/f0.class */
public class C1177f0 {

    /* renamed from: a */
    private SQLiteDatabase f4998a;

    /* renamed from: b */
    private C1179g0 f4999b;

    public C1177f0(Context context) {
        C1179g0 c1179g0 = new C1179g0(context);
        this.f4999b = c1179g0;
        try {
            this.f4998a = c1179g0.getWritableDatabase();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public EZSearchContacts m9849a(String str, String str2) {
        Exception e;
        EZSearchContacts eZSearchContacts = null;
        EZSearchContacts eZSearchContacts2 = null;
        try {
            String m9516b = C1229x.m9516b(str);
            if (C1227w.f5084a) {
                StringBuilder sb = new StringBuilder();
                sb.append("number:");
                sb.append(str);
                sb.append(" number1:");
                sb.append(m9516b);
                C1227w.m9527a("searchofflinedata", sb.toString());
            }
            if (this.f4998a == null) {
                this.f4998a = this.f4999b.getWritableDatabase();
            }
            Cursor query = this.f4998a.query("android_spam", null, "tel_number=?", new String[]{m9516b}, null, null, null);
            if (query.moveToFirst()) {
                eZSearchContacts = new EZSearchContacts();
                try {
                    eZSearchContacts.setSearched(true);
                    eZSearchContacts.setOld_tel_number(str2);
                    eZSearchContacts.setTel_number(str);
                    eZSearchContacts.setOperator(query.getString(query.getColumnIndex("operator")));
                    eZSearchContacts.setType(query.getString(query.getColumnIndex("type")));
                    eZSearchContacts.setName(query.getString(query.getColumnIndex(EZBlackList.NAME)));
                    eZSearchContacts.setReport_count(query.getString(query.getColumnIndex("report_count")));
                    eZSearchContacts.setType_label(query.getString(query.getColumnIndex("type_label")));
                    eZSearchContacts.setBelong_area(query.getString(query.getColumnIndex("belong_area")));
                } catch (Exception e2) {
                    e = e2;
                    eZSearchContacts2 = eZSearchContacts;
                    e.printStackTrace();
                    eZSearchContacts = eZSearchContacts2;
                    return eZSearchContacts;
                }
            }
            if (eZSearchContacts != null && C1227w.f5084a) {
                EZSearchContacts eZSearchContacts3 = eZSearchContacts;
                C1227w.m9527a("searchofflinedata", eZSearchContacts.toString());
            }
            EZSearchContacts eZSearchContacts4 = eZSearchContacts;
            query.close();
            eZSearchContacts2 = eZSearchContacts;
            m9848b();
        } catch (Exception e3) {
            e = e3;
        }
        return eZSearchContacts;
    }

    /* renamed from: b */
    public void m9848b() {
        SQLiteDatabase sQLiteDatabase = this.f4998a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }
}
