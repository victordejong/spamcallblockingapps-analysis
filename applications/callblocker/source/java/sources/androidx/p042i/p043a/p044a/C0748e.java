package androidx.p042i.p043a.p044a;

import android.database.sqlite.SQLiteStatement;
import androidx.p042i.p043a.AbstractC0757f;
/* renamed from: androidx.i.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/e.class */
class C0748e extends C0747d implements AbstractC0757f {

    /* renamed from: a */
    private final SQLiteStatement f2652a;

    public C0748e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f2652a = sQLiteStatement;
    }

    @Override // androidx.p042i.p043a.AbstractC0757f
    /* renamed from: a */
    public int mo19505a() {
        return this.f2652a.executeUpdateDelete();
    }

    @Override // androidx.p042i.p043a.AbstractC0757f
    /* renamed from: b */
    public long mo19504b() {
        return this.f2652a.executeInsert();
    }
}
