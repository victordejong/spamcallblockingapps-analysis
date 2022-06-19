package p303z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.List;
import p303z2.C5065w;
/* renamed from: z2.t */
/* loaded from: classes2-dex2jar.jar:z2/t.class */
public final /* synthetic */ class C5062t implements C5065w.AbstractC5066a {

    /* renamed from: a */
    public static final /* synthetic */ C5062t f15368a = new C5062t();

    @Override // p303z2.C5065w.AbstractC5066a
    /* renamed from: a */
    public final void mo79a(SQLiteDatabase sQLiteDatabase) {
        List<C5065w.AbstractC5066a> list = C5065w.f15371c;
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }
}
