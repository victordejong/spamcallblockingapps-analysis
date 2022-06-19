package p303z2;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;
/* renamed from: z2.w */
/* loaded from: classes-dex2jar.jar:z2/w.class */
public final class C5065w extends SQLiteOpenHelper {

    /* renamed from: c */
    public static final List<AbstractC5066a> f15371c = Arrays.asList(C5061s.f15367a, C5062t.f15368a, C5063u.f15369a, C5064v.f15370a);

    /* renamed from: a */
    public final int f15372a;

    /* renamed from: b */
    public boolean f15373b = false;

    /* renamed from: z2.w$a */
    /* loaded from: classes-dex2jar.jar:z2/w$a.class */
    public interface AbstractC5066a {
        /* renamed from: a */
        void mo79a(SQLiteDatabase sQLiteDatabase);
    }

    public C5065w(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f15372a = i;
    }

    /* renamed from: d */
    public final void m80d(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<AbstractC5066a> list = f15371c;
        if (i2 <= list.size()) {
            while (i < i2) {
                f15371c.get(i).mo79a(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f15373b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        int i = this.f15372a;
        if (!this.f15373b) {
            onConfigure(sQLiteDatabase);
        }
        m80d(sQLiteDatabase, 0, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        if (!this.f15373b) {
            onConfigure(sQLiteDatabase);
        }
        m80d(sQLiteDatabase, 0, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (!this.f15373b) {
            onConfigure(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (!this.f15373b) {
            onConfigure(sQLiteDatabase);
        }
        m80d(sQLiteDatabase, i, i2);
    }
}
