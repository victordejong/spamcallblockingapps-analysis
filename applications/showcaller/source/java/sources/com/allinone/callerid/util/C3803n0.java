package com.allinone.callerid.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.model.EZSearchContacts;
/* renamed from: com.allinone.callerid.util.n0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/n0.class */
public class C3803n0 {

    /* renamed from: a */
    private SQLiteDatabase f12054a;

    /* renamed from: b */
    private C3805o0 f12055b;

    public C3803n0(Context context) {
        C3805o0 c3805o0 = new C3805o0(context);
        this.f12055b = c3805o0;
        try {
            this.f12054a = c3805o0.getWritableDatabase();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m24087b() {
        SQLiteDatabase sQLiteDatabase = this.f12054a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }

    /* renamed from: a */
    public EZSearchContacts m24088a(String str, String str2) {
        EZSearchContacts eZSearchContacts;
        Exception e;
        EZSearchContacts eZSearchContacts2 = null;
        try {
            Cursor query = this.f12054a.query("android_spam", null, "tel_number=?", new String[]{C3723d0.m24420b(str)}, null, null, null);
            eZSearchContacts = null;
            if (query != null) {
                eZSearchContacts = null;
                if (query.moveToFirst()) {
                    eZSearchContacts = new EZSearchContacts();
                    try {
                        eZSearchContacts.setSearched(true);
                        eZSearchContacts.setOld_tel_number(str2);
                        eZSearchContacts.setTel_number(str);
                        eZSearchContacts.setOperator(query.getString(query.getColumnIndex("operator")));
                        eZSearchContacts.setType(query.getString(query.getColumnIndex("type")));
                        eZSearchContacts.setName(query.getString(query.getColumnIndex(ShortCut.NAME)));
                        eZSearchContacts.setReport_count(query.getString(query.getColumnIndex("report_count")));
                        eZSearchContacts.setType_label(query.getString(query.getColumnIndex("type_label")));
                        eZSearchContacts.setBelong_area(query.getString(query.getColumnIndex("belong_area")));
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("searchofflinedata", eZSearchContacts.toString());
                        }
                    } catch (Exception e2) {
                        e = e2;
                        eZSearchContacts2 = eZSearchContacts;
                        e.printStackTrace();
                        eZSearchContacts = eZSearchContacts2;
                        return eZSearchContacts;
                    }
                }
            }
            if (query != null) {
                query.close();
            }
            eZSearchContacts2 = eZSearchContacts;
            m24087b();
        } catch (Exception e3) {
            e = e3;
        }
        return eZSearchContacts;
    }
}
