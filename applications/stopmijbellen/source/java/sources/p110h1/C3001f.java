package p110h1;

import android.database.sqlite.SQLiteStatement;
/* renamed from: h1.f */
/* loaded from: classes-dex2jar.jar:h1/f.class */
public class C3001f extends C3000e {

    /* renamed from: b */
    public final SQLiteStatement f10101b;

    public C3001f(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f10101b = sQLiteStatement;
    }

    /* renamed from: d */
    public int m2768d() {
        return this.f10101b.executeUpdateDelete();
    }
}
