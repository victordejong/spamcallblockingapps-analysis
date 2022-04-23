package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.database.sqlite.SQLiteDatabase;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6676h0;
/* renamed from: h.i.a.b.j.y.k.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/f0.class */
public final /* synthetic */ class C6670f0 implements C6676h0.AbstractC6677a {

    /* renamed from: a */
    public static final C6670f0 f16544a = new C6670f0();

    /* renamed from: a */
    public static C6676h0.AbstractC6677a m22103a() {
        return f16544a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6676h0.AbstractC6677a
    /* renamed from: a */
    public void mo22088a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
