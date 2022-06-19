package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0;
/* renamed from: e.m.a.b.j.c0.i.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/r.class */
public final /* synthetic */ class C24115r implements C24105j0.AbstractC24106a {

    /* renamed from: a */
    public static final /* synthetic */ C24115r f66816a = new C24115r();

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0.AbstractC24106a
    /* renamed from: a */
    public final void mo5563a(SQLiteDatabase sQLiteDatabase) {
        String str = C24105j0.f66790c;
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
