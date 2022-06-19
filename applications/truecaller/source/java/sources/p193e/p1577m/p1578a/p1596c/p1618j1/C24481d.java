package p193e.p1577m.p1578a.p1596c.p1618j1;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.offline.StreamKey;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1599d1.AbstractC24250b;
import p193e.p1577m.p1578a.p1596c.p1599d1.C24249a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.j1.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/d.class */
public final class C24481d implements AbstractC24500n {

    /* renamed from: c */
    public static final String f68346c = m5031e(3, 4);

    /* renamed from: d */
    public static final String[] f68347d = {"id", "title", "uri", "stream_keys", "custom_cache_key", RemoteMessageConst.DATA, "state", "start_time_ms", "update_time_ms", "content_length", "stop_reason", "failure_reason", "percent_downloaded", "bytes_downloaded"};

    /* renamed from: a */
    public final AbstractC24250b f68348a;

    /* renamed from: b */
    public boolean f68349b;

    /* renamed from: e.m.a.c.j1.d$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/d$b.class */
    public static final class C24483b implements Closeable {

        /* renamed from: a */
        public final Cursor f68350a;

        public C24483b(Cursor cursor, C24482a c24482a) {
            this.f68350a = cursor;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f68350a.close();
        }
    }

    public C24481d(AbstractC24250b abstractC24250b) {
        this.f68348a = abstractC24250b;
    }

    /* renamed from: d */
    public static C24485f m5032d(Cursor cursor) {
        String string = cursor.getString(0);
        String string2 = cursor.getString(1);
        Uri parse = Uri.parse(cursor.getString(2));
        String string3 = cursor.getString(3);
        ArrayList arrayList = new ArrayList();
        if (!string3.isEmpty()) {
            int i = C24773d0.f69427a;
            for (String str : string3.split(",", -1)) {
                String[] m4628B = C24773d0.m4628B(str, "\\.");
                C26232y.m2286x(m4628B.length == 3);
                arrayList.add(new StreamKey(Integer.parseInt(m4628B[0]), Integer.parseInt(m4628B[1]), Integer.parseInt(m4628B[2])));
            }
        }
        DownloadRequest downloadRequest = new DownloadRequest(string, string2, parse, arrayList, cursor.getString(4), cursor.getBlob(5));
        C24493i c24493i = new C24493i();
        c24493i.f68401a = cursor.getLong(13);
        c24493i.f68402b = cursor.getFloat(12);
        int i2 = cursor.getInt(6);
        return new C24485f(downloadRequest, i2, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i2 == 4 ? cursor.getInt(11) : 0, c24493i);
    }

    /* renamed from: e */
    public static String m5031e(int... iArr) {
        if (iArr.length == 0) {
            return "1";
        }
        StringBuilder m8696K = C22128a.m8696K("state", " IN (");
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                m8696K.append(',');
            }
            m8696K.append(iArr[i]);
        }
        m8696K.append(')');
        return m8696K.toString();
    }

    /* renamed from: a */
    public final void m5035a() throws C24249a {
        if (this.f68349b) {
            return;
        }
        try {
            if (C26232y.m2451J0(this.f68348a.getReadableDatabase(), 0, "") != 2) {
                SQLiteDatabase writableDatabase = this.f68348a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                C26232y.m2410T1(writableDatabase, 0, "", 2);
                writableDatabase.execSQL("DROP TABLE IF EXISTS ExoPlayerDownloads");
                writableDatabase.execSQL("CREATE TABLE ExoPlayerDownloads" + StringConstant.SPACE + "(id TEXT PRIMARY KEY NOT NULL,title TEXT NOT NULL,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL)");
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
            this.f68349b = true;
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: b */
    public final Cursor m5034b(String str, String[] strArr) throws C24249a {
        try {
            return this.f68348a.getReadableDatabase().query("ExoPlayerDownloads", f68347d, str, strArr, null, null, "start_time_ms ASC");
        } catch (SQLiteException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: c */
    public C24485f m5033c(String str) throws C24249a {
        m5035a();
        try {
            Cursor m5034b = m5034b("id = ?", new String[]{str});
            if (m5034b.getCount() == 0) {
                m5034b.close();
                return null;
            }
            m5034b.moveToNext();
            C24485f m5032d = m5032d(m5034b);
            m5034b.close();
            return m5032d;
        } catch (SQLiteException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: f */
    public void m5030f(C24485f c24485f) throws C24249a {
        m5035a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", c24485f.f68355a.f4989a);
        contentValues.put("title", c24485f.f68355a.f4990b);
        contentValues.put("uri", c24485f.f68355a.f4991c.toString());
        List<StreamKey> list = c24485f.f68355a.f4992d;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            StreamKey streamKey = list.get(i);
            sb.append(streamKey.f4995a);
            sb.append('.');
            sb.append(streamKey.f4996b);
            sb.append('.');
            sb.append(streamKey.f4997c);
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        contentValues.put("stream_keys", sb.toString());
        contentValues.put("custom_cache_key", c24485f.f68355a.f4993e);
        contentValues.put(RemoteMessageConst.DATA, c24485f.f68355a.f4994f);
        contentValues.put("state", Integer.valueOf(c24485f.f68356b));
        contentValues.put("start_time_ms", Long.valueOf(c24485f.f68357c));
        contentValues.put("update_time_ms", Long.valueOf(c24485f.f68358d));
        contentValues.put("content_length", Long.valueOf(c24485f.f68359e));
        contentValues.put("stop_reason", Integer.valueOf(c24485f.f68360f));
        contentValues.put("failure_reason", Integer.valueOf(c24485f.f68361g));
        contentValues.put("percent_downloaded", Float.valueOf(c24485f.f68362h.f68402b));
        contentValues.put("bytes_downloaded", Long.valueOf(c24485f.f68362h.f68401a));
        try {
            this.f68348a.getWritableDatabase().replaceOrThrow("ExoPlayerDownloads", null, contentValues);
        } catch (SQLiteException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: g */
    public void m5029g() throws C24249a {
        m5035a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 0);
            this.f68348a.getWritableDatabase().update("ExoPlayerDownloads", contentValues, "state = 2", null);
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: h */
    public void m5028h() throws C24249a {
        m5035a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 5);
            contentValues.put("failure_reason", (Integer) 0);
            this.f68348a.getWritableDatabase().update("ExoPlayerDownloads", contentValues, null, null);
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: i */
    public void m5027i(String str, int i) throws C24249a {
        m5035a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i));
            SQLiteDatabase writableDatabase = this.f68348a.getWritableDatabase();
            writableDatabase.update("ExoPlayerDownloads", contentValues, f68346c + " AND id = ?", new String[]{str});
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }
}
