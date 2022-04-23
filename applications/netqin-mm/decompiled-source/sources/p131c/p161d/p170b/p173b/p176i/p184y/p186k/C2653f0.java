package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.database.sqlite.SQLiteDatabase;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2659h0;
/* renamed from: c.d.b.b.i.y.k.f0 */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/f0.class */
public final /* synthetic */ class C2653f0 implements C2659h0.AbstractC2660a {

    /* renamed from: a */
    public static final C2653f0 f9777a = new C2653f0();

    /* renamed from: a */
    public static C2659h0.AbstractC2660a m29338a() {
        return f9777a;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2659h0.AbstractC2660a
    /* renamed from: a */
    public void mo29323a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
