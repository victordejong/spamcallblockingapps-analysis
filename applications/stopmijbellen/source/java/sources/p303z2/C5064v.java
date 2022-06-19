package p303z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.List;
import p303z2.C5065w;
/* renamed from: z2.v */
/* loaded from: classes2-dex2jar.jar:z2/v.class */
public final /* synthetic */ class C5064v implements C5065w.AbstractC5066a {

    /* renamed from: a */
    public static final /* synthetic */ C5064v f15370a = new C5064v();

    @Override // p303z2.C5065w.AbstractC5066a
    /* renamed from: a */
    public final void mo79a(SQLiteDatabase sQLiteDatabase) {
        List<C5065w.AbstractC5066a> list = C5065w.f15371c;
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }
}
