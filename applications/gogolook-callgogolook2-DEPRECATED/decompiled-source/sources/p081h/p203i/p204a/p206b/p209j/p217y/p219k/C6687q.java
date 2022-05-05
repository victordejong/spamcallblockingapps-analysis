package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.database.sqlite.SQLiteDatabase;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0;
/* renamed from: h.i.a.b.j.y.k.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/q.class */
public final /* synthetic */ class C6687q implements C6656b0.AbstractC6660d {

    /* renamed from: a */
    public final SQLiteDatabase f16570a;

    public C6687q(SQLiteDatabase sQLiteDatabase) {
        this.f16570a = sQLiteDatabase;
    }

    /* renamed from: a */
    public static C6656b0.AbstractC6660d m22074a(SQLiteDatabase sQLiteDatabase) {
        return new C6687q(sQLiteDatabase);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0.AbstractC6660d
    /* renamed from: a */
    public Object mo22072a() {
        return this.f16570a.beginTransaction();
    }
}
