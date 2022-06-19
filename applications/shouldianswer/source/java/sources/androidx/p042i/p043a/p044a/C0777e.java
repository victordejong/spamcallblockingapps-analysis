package androidx.p042i.p043a.p044a;

import android.database.sqlite.SQLiteStatement;
import androidx.p042i.p043a.AbstractC0786f;
/* renamed from: androidx.i.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/e.class */
class C0777e extends C0776d implements AbstractC0786f {

    /* renamed from: a */
    private final SQLiteStatement f2545a;

    public C0777e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f2545a = sQLiteStatement;
    }

    @Override // androidx.p042i.p043a.AbstractC0786f
    /* renamed from: a */
    public int mo5354a() {
        return this.f2545a.executeUpdateDelete();
    }

    @Override // androidx.p042i.p043a.AbstractC0786f
    /* renamed from: b */
    public long mo5353b() {
        return this.f2545a.executeInsert();
    }
}
