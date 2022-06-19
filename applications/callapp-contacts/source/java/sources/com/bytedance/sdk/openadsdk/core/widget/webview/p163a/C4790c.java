package com.bytedance.sdk.openadsdk.core.widget.webview.p163a;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4563m;
import com.bytedance.sdk.openadsdk.multipro.p187a.C5069a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/c.class */
public class C4790c {

    /* renamed from: a */
    private static volatile C4790c f17603a;

    /* renamed from: c */
    private LruCache<String, C4563m> f17605c = new LruCache<String, C4563m>(2000) { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.c.1
        /* renamed from: a */
        public int sizeOf(String str, C4563m c4563m) {
            return 1;
        }
    };

    /* renamed from: b */
    private Set<String> f17604b = Collections.synchronizedSet(new HashSet());

    private C4790c() {
    }

    /* renamed from: a */
    public static C4790c m33957a() {
        if (f17603a == null) {
            synchronized (C4790c.class) {
                try {
                    if (f17603a == null) {
                        f17603a = new C4790c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17603a;
    }

    /* renamed from: c */
    public static String m33951c() {
        return "CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT ,update_time TEXT)";
    }

    /* renamed from: c */
    private void m33950c(String str) {
        LruCache<String, C4563m> lruCache;
        if (!TextUtils.isEmpty(str) && (lruCache = this.f17605c) != null && lruCache.size() > 0) {
            this.f17605c.remove(str);
        }
    }

    /* renamed from: a */
    public C4563m m33955a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C4563m c4563m = this.f17605c.get(String.valueOf(str));
        if (c4563m != null) {
            return c4563m;
        }
        Cursor m33116a = C5069a.m33116a(C4600n.m34815a(), "template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (m33116a == null) {
            return null;
        }
        try {
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (m33116a == null) {
                    return null;
                }
            } catch (Throwable th2) {
                if (m33116a != null) {
                    m33116a.close();
                }
                throw th2;
            }
        }
        if (!m33116a.moveToNext()) {
            if (m33116a == null) {
                return null;
            }
            m33116a.close();
            return null;
        }
        String string = m33116a.getString(m33116a.getColumnIndex("rit"));
        String string2 = m33116a.getString(m33116a.getColumnIndex("id"));
        String string3 = m33116a.getString(m33116a.getColumnIndex("md5"));
        String string4 = m33116a.getString(m33116a.getColumnIndex("url"));
        C4563m m35082a = new C4563m().m35081a(string).m35079b(string2).m35077c(string3).m35075d(string4).m35073e(m33116a.getString(m33116a.getColumnIndex("data"))).m35071f(m33116a.getString(m33116a.getColumnIndex("version"))).m35082a(Long.valueOf(m33116a.getLong(m33116a.getColumnIndex("update_time"))));
        this.f17605c.put(string2, m35082a);
        this.f17604b.add(string2);
        if (m33116a != null) {
            m33116a.close();
        }
        return m35082a;
    }

    /* renamed from: a */
    public void m33956a(C4563m c4563m) {
        if (c4563m != null && !TextUtils.isEmpty(c4563m.m35080b())) {
            Cursor m33116a = C5069a.m33116a(C4600n.m34815a(), "template_diff_new", null, "id=?", new String[]{c4563m.m35080b()}, null, null, null);
            boolean z = m33116a != null && m33116a.getCount() > 0;
            if (m33116a != null) {
                try {
                    m33116a.close();
                } catch (Throwable th) {
                }
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("rit", c4563m.m35083a());
            contentValues.put("id", c4563m.m35080b());
            contentValues.put("md5", c4563m.m35078c());
            contentValues.put("url", c4563m.m35076d());
            contentValues.put("data", c4563m.m35074e());
            contentValues.put("version", c4563m.m35072f());
            contentValues.put("update_time", c4563m.m35070g());
            if (z) {
                C5069a.m33118a(C4600n.m34815a(), "template_diff_new", contentValues, "id=?", new String[]{c4563m.m35080b()});
            } else {
                C5069a.m33119a(C4600n.m34815a(), "template_diff_new", contentValues);
            }
            this.f17605c.put(c4563m.m35080b(), c4563m);
            this.f17604b.add(c4563m.m35080b());
        }
    }

    /* renamed from: a */
    public void m33954a(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length <= 0) {
            return;
        }
        for (int i = 0; i < strArr.length; i++) {
            m33950c(strArr[i]);
            C5069a.m33117a(C4600n.m34815a(), "template_diff_new", "id=?", new String[]{strArr[i]});
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0107, code lost:
        if (r0 == null) goto L19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.bytedance.sdk.openadsdk.core.p154e.C4563m> m33953b() {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4790c.m33953b():java.util.List");
    }

    /* renamed from: b */
    public Set<String> m33952b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Cursor m33116a = C5069a.m33116a(C4600n.m34815a(), "template_diff_new", null, "rit=?", new String[]{str}, null, null, null);
        if (m33116a == null) {
            return null;
        }
        while (m33116a.moveToNext()) {
            try {
                hashSet.add(m33116a.getString(m33116a.getColumnIndex("id")));
            } finally {
                if (m33116a != null) {
                    m33116a.close();
                }
            }
        }
        return hashSet;
    }
}
