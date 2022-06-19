package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
/* renamed from: e.a.m0.c1.i */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/i.class */
public class C18064i implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE data(_id INTEGER PRIMARY KEY NOT NULL, data_raw_contact_id INTEGER NOT NULL REFERENCES raw_contact(_id) ON DELETE CASCADE ON UPDATE CASCADE,tc_id TEXT NOT NULL, data_type INTEGER NOT NULL, data_is_primary INTEGER, data_phonebook_id INTEGER, data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, data6 TEXT, data7 TEXT, data8 TEXT, data9 TEXT, data10 TEXT, data11 TEXT)", C8472b.m28497g(RemoteMessageConst.DATA, "data_raw_contact_id"), C8472b.m28497g(RemoteMessageConst.DATA, "data_type", "data1")};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        while (i < i2) {
            if (i == 2) {
                sQLiteDatabase.execSQL("ALTER TABLE data ADD COLUMN data9 TEXT");
            }
            if (i == 5) {
                sQLiteDatabase.execSQL("ALTER TABLE data ADD COLUMN data10 TEXT");
            }
            if (i == 10 && !C8472b.m28500d(sQLiteDatabase, RemoteMessageConst.DATA, "data_is_primary")) {
                sQLiteDatabase.execSQL("ALTER TABLE data ADD COLUMN data_is_primary INTEGER");
                sQLiteDatabase.execSQL("ALTER TABLE data ADD COLUMN data_phonebook_id INTEGER");
                sQLiteDatabase.execSQL("UPDATE data SET data4 = -1 WHERE _id IN (SELECT data._id FROM raw_contact INNER JOIN data ON raw_contact._id = data.data_raw_contact_id WHERE data_type = 4 AND contact_source = 1)");
            }
            i++;
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }
}
