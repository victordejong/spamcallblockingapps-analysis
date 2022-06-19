package p303z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.List;
import p303z2.C5065w;
/* renamed from: z2.u */
/* loaded from: classes2-dex2jar.jar:z2/u.class */
public final /* synthetic */ class C5063u implements C5065w.AbstractC5066a {

    /* renamed from: a */
    public static final /* synthetic */ C5063u f15369a = new C5063u();

    @Override // p303z2.C5065w.AbstractC5066a
    /* renamed from: a */
    public final void mo79a(SQLiteDatabase sQLiteDatabase) {
        List<C5065w.AbstractC5066a> list = C5065w.f15371c;
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
