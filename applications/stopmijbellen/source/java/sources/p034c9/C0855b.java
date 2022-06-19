package p034c9;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.support.p012v4.media.AbstractC0081a;
/* renamed from: c9.b */
/* loaded from: classes2-dex2jar.jar:c9/b.class */
public class C0855b extends AbstractC0081a {

    /* renamed from: a */
    public final SQLiteStatement f3148a;

    public C0855b(SQLiteStatement sQLiteStatement, SQLiteDatabase sQLiteDatabase) {
        this.f3148a = sQLiteStatement;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: g */
    public void mo7274g(int i, long j) {
        this.f3148a.bindLong(i, j);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: h */
    public void mo7273h(int i) {
        this.f3148a.bindNull(i);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: j */
    public void mo7272j(int i, String str) {
        this.f3148a.bindString(i, str);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: l */
    public void mo7271l() {
        this.f3148a.close();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: n */
    public long mo7270n() {
        return this.f3148a.executeInsert();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: p */
    public long mo7269p() {
        return this.f3148a.executeUpdateDelete();
    }
}
