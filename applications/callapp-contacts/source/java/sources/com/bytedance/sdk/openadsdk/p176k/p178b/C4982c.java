package com.bytedance.sdk.openadsdk.p176k.p178b;

import android.content.Context;
import android.database.Cursor;
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
/* renamed from: com.bytedance.sdk.openadsdk.k.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/b/c.class */
public class C4982c {

    /* renamed from: b */
    private static volatile C4982c f18097b;

    /* renamed from: a */
    private final SparseArray<Map<String, C4980a>> f18098a;

    /* renamed from: c */
    private final C4985d f18099c;

    /* renamed from: d */
    private final Executor f18100d = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingDeque());

    /* renamed from: e */
    private volatile SQLiteStatement f18101e;

    private C4982c(Context context) {
        SparseArray<Map<String, C4980a>> sparseArray = new SparseArray<>(2);
        this.f18098a = sparseArray;
        this.f18099c = new C4985d(context.getApplicationContext());
        sparseArray.put(0, new ConcurrentHashMap());
        sparseArray.put(1, new ConcurrentHashMap());
    }

    /* renamed from: a */
    public static C4982c m33368a(Context context) {
        if (f18097b == null) {
            synchronized (C4982c.class) {
                try {
                    if (f18097b == null) {
                        f18097b = new C4982c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18097b;
    }

    /* renamed from: b */
    private String m33362b(int i) {
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

    /* renamed from: a */
    public C4980a m33364a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, C4980a> map = this.f18098a.get(i);
        C4980a c4980a = map == null ? null : map.get(str);
        if (c4980a != null) {
            return c4980a;
        }
        try {
            Cursor query = this.f18099c.getReadableDatabase().query("video_http_header_t", null, "key=? AND flag=?", new String[]{str, String.valueOf(i)}, null, null, null, "1");
            C4980a c4980a2 = c4980a;
            if (query != null) {
                c4980a2 = c4980a;
                if (query.getCount() > 0) {
                    c4980a2 = c4980a;
                    if (query.moveToNext()) {
                        c4980a2 = new C4980a(query.getString(query.getColumnIndex("key")), query.getString(query.getColumnIndex("mime")), query.getInt(query.getColumnIndex("contentLength")), i, query.getString(query.getColumnIndex("extra")));
                    }
                }
                query.close();
            }
            if (c4980a2 != null && map != null) {
                map.put(str, c4980a2);
            }
            return c4980a2;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public void m33369a(final int i) {
        Map<String, C4980a> map = this.f18098a.get(i);
        if (map != null) {
            map.clear();
        }
        this.f18100d.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.b.c.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C4982c.this.f18099c.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(i)});
                } catch (Throwable th) {
                }
            }
        });
    }

    /* renamed from: a */
    public void m33367a(final C4980a c4980a) {
        if (c4980a != null) {
            Map<String, C4980a> map = this.f18098a.get(c4980a.f18095d);
            if (map != null) {
                map.put(c4980a.f18092a, c4980a);
            }
            this.f18100d.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (C4982c.this.f18101e == null) {
                            C4982c c4982c = C4982c.this;
                            c4982c.f18101e = c4982c.f18099c.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
                        } else {
                            C4982c.this.f18101e.clearBindings();
                        }
                        C4982c.this.f18101e.bindString(1, c4980a.f18092a);
                        C4982c.this.f18101e.bindString(2, c4980a.f18093b);
                        C4982c.this.f18101e.bindLong(3, c4980a.f18094c);
                        C4982c.this.f18101e.bindLong(4, c4980a.f18095d);
                        C4982c.this.f18101e.bindString(5, c4980a.f18096e);
                        C4982c.this.f18101e.executeInsert();
                    } catch (Throwable th) {
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public void m33363a(Collection<String> collection, int i) {
        int size;
        if (collection == null || collection.isEmpty()) {
            return;
        }
        String[] strArr = new String[collection.size() + 1];
        int i2 = -1;
        Map<String, C4980a> map = this.f18098a.get(i);
        for (String str : collection) {
            if (map != null) {
                map.remove(str);
            }
            i2++;
            strArr[i2] = str;
        }
        strArr[i2 + 1] = String.valueOf(i);
        try {
            this.f18099c.getWritableDatabase().delete("video_http_header_t", "key IN(" + m33362b(size) + ") AND flag=?", strArr);
        } catch (Throwable th) {
        }
    }
}
