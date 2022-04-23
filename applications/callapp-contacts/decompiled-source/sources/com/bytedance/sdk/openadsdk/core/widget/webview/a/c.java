package com.bytedance.sdk.openadsdk.core.widget.webview.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.openadsdk.core.e.m;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.a.a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f9357a;

    /* renamed from: c  reason: collision with root package name */
    private LruCache<String, m> f9359c = new LruCache<String, m>(2000) { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.c.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public int sizeOf(String str, m mVar) {
            return 1;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private Set<String> f9358b = Collections.synchronizedSet(new HashSet());

    private c() {
    }

    public static c a() {
        if (f9357a == null) {
            synchronized (c.class) {
                try {
                    if (f9357a == null) {
                        f9357a = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9357a;
    }

    public static String c() {
        return "CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT ,update_time TEXT)";
    }

    private void c(String str) {
        LruCache<String, m> lruCache;
        if (!TextUtils.isEmpty(str) && (lruCache = this.f9359c) != null && lruCache.size() > 0) {
            this.f9359c.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        m mVar = this.f9359c.get(String.valueOf(str));
        if (mVar != null) {
            return mVar;
        }
        Cursor a2 = a.a(n.a(), "template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (a2 == null) {
            return null;
        }
        try {
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (a2 == null) {
                    return null;
                }
            } catch (Throwable th2) {
                if (a2 != null) {
                    a2.close();
                }
                throw th2;
            }
        }
        if (a2.moveToNext()) {
            String string = a2.getString(a2.getColumnIndex("rit"));
            String string2 = a2.getString(a2.getColumnIndex("id"));
            String string3 = a2.getString(a2.getColumnIndex("md5"));
            String string4 = a2.getString(a2.getColumnIndex("url"));
            m a3 = new m().a(string).b(string2).c(string3).d(string4).e(a2.getString(a2.getColumnIndex("data"))).f(a2.getString(a2.getColumnIndex("version"))).a(Long.valueOf(a2.getLong(a2.getColumnIndex("update_time"))));
            this.f9359c.put(string2, a3);
            this.f9358b.add(string2);
            if (a2 != null) {
                a2.close();
            }
            return a3;
        }
        if (a2 == null) {
            return null;
        }
        a2.close();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(m mVar) {
        if (mVar != null && !TextUtils.isEmpty(mVar.b())) {
            Cursor a2 = a.a(n.a(), "template_diff_new", null, "id=?", new String[]{mVar.b()}, null, null, null);
            boolean z = a2 != null && a2.getCount() > 0;
            if (a2 != null) {
                try {
                    a2.close();
                } catch (Throwable th) {
                }
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("rit", mVar.a());
            contentValues.put("id", mVar.b());
            contentValues.put("md5", mVar.c());
            contentValues.put("url", mVar.d());
            contentValues.put("data", mVar.e());
            contentValues.put("version", mVar.f());
            contentValues.put("update_time", mVar.g());
            if (z) {
                a.a(n.a(), "template_diff_new", contentValues, "id=?", new String[]{mVar.b()});
            } else {
                a.a(n.a(), "template_diff_new", contentValues);
            }
            this.f9359c.put(mVar.b(), mVar);
            this.f9358b.add(mVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Set<String> set) {
        if (!(set == null || set.isEmpty())) {
            String[] strArr = (String[]) set.toArray(new String[set.size()]);
            if (strArr.length > 0) {
                for (int i = 0; i < strArr.length; i++) {
                    c(strArr[i]);
                    a.a(n.a(), "template_diff_new", "id=?", new String[]{strArr[i]});
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0107, code lost:
        if (r0 == null) goto L_0x011a;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.bytedance.sdk.openadsdk.core.e.m> b() {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.webview.a.c.b():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Cursor a2 = a.a(n.a(), "template_diff_new", null, "rit=?", new String[]{str}, null, null, null);
        if (a2 == null) {
            return null;
        }
        while (a2.moveToNext()) {
            try {
                hashSet.add(a2.getString(a2.getColumnIndex("id")));
            } finally {
                if (a2 != null) {
                    a2.close();
                }
            }
        }
        return hashSet;
    }
}
