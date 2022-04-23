package com.bytedance.sdk.openadsdk.k.b;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b/c.class */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static volatile c f9693b;

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<Map<String, a>> f9694a;

    /* renamed from: c  reason: collision with root package name */
    private final d f9695c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f9696d = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingDeque());
    private volatile SQLiteStatement e;

    private c(Context context) {
        SparseArray<Map<String, a>> sparseArray = new SparseArray<>(2);
        this.f9694a = sparseArray;
        this.f9695c = new d(context.getApplicationContext());
        sparseArray.put(0, new ConcurrentHashMap());
        sparseArray.put(1, new ConcurrentHashMap());
    }

    public static c a(Context context) {
        if (f9693b == null) {
            synchronized (c.class) {
                try {
                    if (f9693b == null) {
                        f9693b = new c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9693b;
    }

    private String b(int i) {
        if (i <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i << 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    public a a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, a> map = this.f9694a.get(i);
        a aVar = map == null ? null : map.get(str);
        if (aVar != null) {
            return aVar;
        }
        try {
            Cursor query = this.f9695c.getReadableDatabase().query("video_http_header_t", null, "key=? AND flag=?", new String[]{str, String.valueOf(i)}, null, null, null, "1");
            a aVar2 = aVar;
            if (query != null) {
                aVar2 = aVar;
                if (query.getCount() > 0) {
                    aVar2 = aVar;
                    if (query.moveToNext()) {
                        aVar2 = new a(query.getString(query.getColumnIndex("key")), query.getString(query.getColumnIndex("mime")), query.getInt(query.getColumnIndex("contentLength")), i, query.getString(query.getColumnIndex("extra")));
                    }
                }
                query.close();
            }
            if (!(aVar2 == null || map == null)) {
                map.put(str, aVar2);
            }
            return aVar2;
        } catch (Throwable th) {
            return null;
        }
    }

    public void a(final int i) {
        Map<String, a> map = this.f9694a.get(i);
        if (map != null) {
            map.clear();
        }
        this.f9696d.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.b.c.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.f9695c.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(i)});
                } catch (Throwable th) {
                }
            }
        });
    }

    public void a(final a aVar) {
        if (aVar != null) {
            Map<String, a> map = this.f9694a.get(aVar.f9688d);
            if (map != null) {
                map.put(aVar.f9685a, aVar);
            }
            this.f9696d.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (c.this.e == null) {
                            c cVar = c.this;
                            cVar.e = cVar.f9695c.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
                        } else {
                            c.this.e.clearBindings();
                        }
                        c.this.e.bindString(1, aVar.f9685a);
                        c.this.e.bindString(2, aVar.f9686b);
                        c.this.e.bindLong(3, aVar.f9687c);
                        c.this.e.bindLong(4, aVar.f9688d);
                        c.this.e.bindString(5, aVar.e);
                        c.this.e.executeInsert();
                    } catch (Throwable th) {
                    }
                }
            });
        }
    }

    public void a(Collection<String> collection, int i) {
        if (collection != null && !collection.isEmpty()) {
            int size = collection.size() + 1;
            String[] strArr = new String[size];
            int i2 = -1;
            Map<String, a> map = this.f9694a.get(i);
            for (String str : collection) {
                if (map != null) {
                    map.remove(str);
                }
                i2++;
                strArr[i2] = str;
            }
            strArr[i2 + 1] = String.valueOf(i);
            try {
                SQLiteDatabase writableDatabase = this.f9695c.getWritableDatabase();
                writableDatabase.delete("video_http_header_t", "key IN(" + b(size) + ") AND flag=?", strArr);
            } catch (Throwable th) {
            }
        }
    }
}
