package p092e.p096e.p097a.p099e0;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
/* renamed from: e.e.a.e0.e */
/* loaded from: classes2-dex2jar.jar:e/e/a/e0/e.class */
public class C3036e extends SQLiteOpenHelper {
    public C3036e(Context context) {
        super(context, "filedownloader.db", (SQLiteDatabase.CursorFactory) null, 4);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filedownloader( _id INTEGER PRIMARY KEY, url VARCHAR, path VARCHAR, status TINYINT(7), sofar INTEGER, total INTEGER, errMsg VARCHAR, etag VARCHAR, pathAsDirectory TINYINT(1) DEFAULT 0, filename VARCHAR, connectionCount INTEGER DEFAULT 1)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filedownloaderConnection( id INTEGER, connectionIndex INTEGER, startOffset INTEGER, currentOffset INTEGER, endOffset INTEGER, PRIMARY KEY ( id, connectionIndex ))");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.delete("filedownloader", null, null);
        sQLiteDatabase.delete("filedownloaderConnection", null, null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            setWriteAheadLoggingEnabled(true);
        } else if (i >= 11) {
            sQLiteDatabase.enableWriteAheadLogging();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 2) {
            sQLiteDatabase.execSQL("ALTER TABLE filedownloader ADD COLUMN pathAsDirectory TINYINT(1) DEFAULT 0");
            sQLiteDatabase.execSQL("ALTER TABLE filedownloader ADD COLUMN filename VARCHAR");
        }
        if (i < 3) {
            sQLiteDatabase.execSQL("ALTER TABLE filedownloader ADD COLUMN connectionCount INTEGER DEFAULT 1");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filedownloaderConnection( id INTEGER, connectionIndex INTEGER, startOffset INTEGER, currentOffset INTEGER, endOffset INTEGER, PRIMARY KEY ( id, connectionIndex ))");
        }
        if (i < 4) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("endOffset", (Integer) (-1));
            sQLiteDatabase.update("filedownloaderConnection", contentValues, "endOffset = ? AND startOffset > ?", new String[]{"0", "0"});
        }
    }
}
