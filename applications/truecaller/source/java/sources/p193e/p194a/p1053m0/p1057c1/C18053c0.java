package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.c0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/c0.class */
public final class C18053c0 implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE profile_view_events (tc_id TEXT NOT NULL, timestamp INT NOT NULL,type TEXT NOT NULL DEFAULT 'OUTGOING',source TEXT)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        l.e(sQLiteDatabase, "db");
        if (i < 44) {
            for (String str : mo15498a()) {
                sQLiteDatabase.execSQL(str);
            }
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{C18055d0.f50977a};
    }
}
