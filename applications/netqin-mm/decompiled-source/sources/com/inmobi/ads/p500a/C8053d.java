package com.inmobi.ads.p500a;

import android.content.ContentValues;
import com.android.volley.Request;
import com.inmobi.commons.core.p512d.C8363b;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* renamed from: com.inmobi.ads.a.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/d.class */
public class C8053d {

    /* renamed from: b */
    public static final String f31522b = "d";

    /* renamed from: c */
    public static C8053d f31523c;

    /* renamed from: d */
    public static final Object f31524d = new Object();

    /* renamed from: a */
    public static final String[] f31521a = {"id", "pending_attempts", "url", "disk_uri", "ts", "created_ts", "ttl", "soft_ttl"};

    public C8053d() {
        C8363b a = C8363b.m5815a();
        a.m5811a("asset", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, disk_uri TEXT, ts TEXT NOT NULL, created_ts TEXT NOT NULL, ttl TEXT NOT NULL, soft_ttl TEXT NOT NULL)");
        a.m5808b();
    }

    /* renamed from: a */
    public static C8049a m6604a(ContentValues contentValues) {
        return new C8049a(contentValues.getAsInteger("id").intValue(), contentValues.getAsString("url"), contentValues.getAsString("disk_uri"), contentValues.getAsInteger("pending_attempts").intValue(), Long.valueOf(contentValues.getAsString("ts")).longValue(), Long.valueOf(contentValues.getAsString("created_ts")).longValue(), Long.valueOf(contentValues.getAsString("ttl")).longValue(), Long.valueOf(contentValues.getAsString("soft_ttl")).longValue());
    }

    /* renamed from: a */
    public static C8049a m6602a(String str) {
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("asset", f31521a, "url=? ", new String[]{str}, null, null, "created_ts DESC ", "1");
        a.m5808b();
        if (a2.isEmpty()) {
            return null;
        }
        return m6604a(a2.get(0));
    }

    /* renamed from: a */
    public static C8053d m6605a() {
        C8053d dVar = f31523c;
        C8053d dVar2 = dVar;
        if (dVar == null) {
            synchronized (f31524d) {
                C8053d dVar3 = f31523c;
                dVar2 = dVar3;
                if (dVar3 == null) {
                    dVar2 = new C8053d();
                    f31523c = dVar2;
                }
            }
        }
        return dVar2;
    }

    /* renamed from: b */
    public static int m6600b(C8049a aVar) {
        C8363b a = C8363b.m5815a();
        int b = a.m5807b("asset", m6595d(aVar), "url = ?", new String[]{String.valueOf(aVar.f31492d)});
        a.m5808b();
        return b;
    }

    /* renamed from: b */
    public static C8049a m6599b(String str) {
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("asset", f31521a, "url=? ", new String[]{str}, null, null, "created_ts DESC ", "1");
        a.m5808b();
        if (a2.isEmpty()) {
            return null;
        }
        return m6604a(a2.get(0));
    }

    /* renamed from: b */
    public static List<C8049a> m6601b() {
        ArrayList arrayList = new ArrayList();
        C8363b a = C8363b.m5815a();
        if (a.m5814a("asset") == 0) {
            return arrayList;
        }
        List<ContentValues> a2 = a.m5809a("asset", f31521a, "disk_uri IS NOT NULL", null, null, null, "created_ts DESC ", null);
        a.m5808b();
        for (ContentValues contentValues : a2) {
            arrayList.add(m6604a(contentValues));
        }
        return arrayList;
    }

    /* renamed from: c */
    public static String m6598c() {
        List<C8049a> b = m6601b();
        if (b.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (C8049a aVar : b) {
            try {
                jSONArray.put(URLEncoder.encode(aVar.f31492d, Request.DEFAULT_PARAMS_ENCODING));
            } catch (UnsupportedEncodingException e) {
            }
        }
        return jSONArray.toString();
    }

    /* renamed from: c */
    public static void m6597c(C8049a aVar) {
        C8363b a = C8363b.m5815a();
        a.m5810a("asset", "id = ?", new String[]{String.valueOf(aVar.f31490b)});
        a.m5808b();
    }

    /* renamed from: d */
    public static ContentValues m6595d(C8049a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(aVar.f31490b));
        contentValues.put("url", aVar.f31492d);
        contentValues.put("disk_uri", aVar.f31493e);
        contentValues.put("pending_attempts", Integer.valueOf(aVar.f31491c));
        contentValues.put("ts", Long.toString(aVar.f31494f));
        contentValues.put("created_ts", Long.toString(aVar.f31495g));
        contentValues.put("ttl", Long.toString(aVar.f31496h));
        contentValues.put("soft_ttl", Long.toString(aVar.f31497i));
        return contentValues;
    }

    /* renamed from: d */
    public static List<String> m6596d() {
        ArrayList arrayList = new ArrayList();
        C8363b a = C8363b.m5815a();
        if (a.m5814a("asset") == 0) {
            return arrayList;
        }
        List<ContentValues> a2 = a.m5809a("asset", new String[]{"url"}, null, null, null, null, "created_ts DESC ", null);
        a.m5808b();
        for (ContentValues contentValues : a2) {
            arrayList.add(contentValues.getAsString("url"));
        }
        return arrayList;
    }

    /* renamed from: e */
    public static List<C8049a> m6594e() {
        ArrayList<C8049a> arrayList = new ArrayList();
        C8363b a = C8363b.m5815a();
        for (ContentValues contentValues : a.m5809a("asset", f31521a, null, null, null, null, "ts ASC ", null)) {
            arrayList.add(m6604a(contentValues));
        }
        a.m5808b();
        ArrayList arrayList2 = new ArrayList();
        for (C8049a aVar : arrayList) {
            if (!aVar.m6623a()) {
                arrayList2.add(aVar);
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    public final void m6603a(C8049a aVar) {
        synchronized (this) {
            if (m6600b(aVar) <= 0) {
                ContentValues d = m6595d(aVar);
                C8363b a = C8363b.m5815a();
                a.m5813a("asset", d);
                a.m5808b();
            }
        }
    }
}
