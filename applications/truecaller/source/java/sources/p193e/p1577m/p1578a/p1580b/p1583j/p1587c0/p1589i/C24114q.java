package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.database.sqlite.SQLiteDatabase;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0;
/* renamed from: e.m.a.b.j.c0.i.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/q.class */
public final /* synthetic */ class C24114q implements C24105j0.AbstractC24106a {

    /* renamed from: a */
    public static final /* synthetic */ C24114q f66815a = new C24114q();

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24105j0.AbstractC24106a
    /* renamed from: a */
    public final void mo5563a(SQLiteDatabase sQLiteDatabase) {
        String str = C24105j0.f66790c;
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }
}
