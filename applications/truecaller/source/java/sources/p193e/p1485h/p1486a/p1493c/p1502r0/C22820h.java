package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import p193e.p1485h.p1486a.p1493c.AbstractC22742k;
import p193e.p1485h.p1486a.p1493c.C22751m;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.r0.h */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/h.class */
public class C22820h {

    /* renamed from: a */
    public final C22746b f63314a;

    /* renamed from: b */
    public ArrayList<C22825m> f63315b;

    /* renamed from: c */
    public final Object f63316c = new Object();

    /* renamed from: d */
    public final String f63317d;

    /* renamed from: e */
    public final boolean f63318e;

    /* renamed from: f */
    public final C22751m f63319f;

    /* renamed from: g */
    public final AbstractC22742k f63320g;

    /* renamed from: h */
    public final CleverTapInstanceConfig f63321h;

    /* renamed from: e.h.a.c.r0.h$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/h$a.class */
    public class CallableC22821a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ String f63322a;

        public CallableC22821a(String str) {
            C22820h.this = r4;
            this.f63322a = str;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22820h c22820h = C22820h.this;
            C22746b c22746b = c22820h.f63314a;
            String str = this.f63322a;
            String str2 = c22820h.f63317d;
            synchronized (c22746b) {
                if (str != null) {
                    if (str2 != null) {
                        try {
                            c22746b.f62998b.getWritableDatabase().delete("inboxMessages", "_id = ? AND messageUser = ?", new String[]{str, str2});
                            c22746b.f62998b.close();
                        } catch (SQLiteException e) {
                            Objects.requireNonNull(c22746b.m7828h());
                            c22746b.f62998b.close();
                        }
                        return null;
                    }
                }
                return null;
            }
        }
    }

    /* renamed from: e.h.a.c.r0.h$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/h$b.class */
    public class CallableC22822b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ String f63324a;

        public CallableC22822b(String str) {
            C22820h.this = r4;
            this.f63324a = str;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22820h c22820h = C22820h.this;
            C22746b c22746b = c22820h.f63314a;
            String str = this.f63324a;
            String str2 = c22820h.f63317d;
            synchronized (c22746b) {
                if (str != null) {
                    if (str2 != null) {
                        try {
                            SQLiteDatabase writableDatabase = c22746b.f62998b.getWritableDatabase();
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("isRead", (Integer) 1);
                            writableDatabase.update("inboxMessages", contentValues, "_id = ? AND messageUser = ?", new String[]{str, str2});
                            c22746b.f62998b.close();
                        } catch (SQLiteException e) {
                            Objects.requireNonNull(c22746b.m7828h());
                            c22746b.f62998b.close();
                        }
                        return null;
                    }
                }
                return null;
            }
        }
    }

    public C22820h(CleverTapInstanceConfig cleverTapInstanceConfig, String str, C22746b c22746b, C22751m c22751m, AbstractC22742k abstractC22742k, boolean z) {
        this.f63317d = str;
        this.f63314a = c22746b;
        this.f63315b = c22746b.m7827i(str);
        this.f63318e = z;
        this.f63319f = c22751m;
        this.f63320g = abstractC22742k;
        this.f63321h = cleverTapInstanceConfig;
    }

    /* renamed from: a */
    public boolean m7739a(String str) {
        C22825m m7737c = m7737c(str);
        if (m7737c == null) {
            return false;
        }
        synchronized (this.f63316c) {
            this.f63315b.remove(m7737c);
        }
        C22895k m7641c = C22882a.m7644a(this.f63321h).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "RunDeleteMessage", new CallableC22821a(str)));
        return true;
    }

    /* renamed from: b */
    public boolean m7738b(String str) {
        C22825m m7737c = m7737c(str);
        if (m7737c == null) {
            return false;
        }
        synchronized (this.f63316c) {
            m7737c.f63340f = true;
        }
        C22895k m7641c = C22882a.m7644a(this.f63321h).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "RunMarkMessageRead", new CallableC22822b(str)));
        return true;
    }

    /* renamed from: c */
    public final C22825m m7737c(String str) {
        C22825m next;
        synchronized (this.f63316c) {
            Iterator<C22825m> it = this.f63315b.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.f63338d.equals(str));
            return next;
        }
    }

    /* renamed from: d */
    public final void m7736d() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f63316c) {
            Iterator<C22825m> it = this.f63315b.iterator();
            while (it.hasNext()) {
                C22825m next = it.next();
                if (this.f63318e || !next.m7731a()) {
                    long j = next.f63337c;
                    if (j > 0 && System.currentTimeMillis() / 1000 > j) {
                        arrayList.add(next);
                    }
                } else {
                    arrayList.add(next);
                }
            }
            if (arrayList.size() <= 0) {
                return;
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m7739a(((C22825m) it2.next()).f63338d);
            }
        }
    }

    /* renamed from: e */
    public boolean m7735e(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                C22825m m7730b = C22825m.m7730b(jSONArray.getJSONObject(i), this.f63317d);
                if (m7730b != null && (this.f63318e || !m7730b.m7731a())) {
                    arrayList.add(m7730b);
                }
            } catch (JSONException e) {
                e.getLocalizedMessage();
            }
        }
        if (arrayList.size() > 0) {
            C22746b c22746b = this.f63314a;
            synchronized (c22746b) {
                if (c22746b.m7835a()) {
                    try {
                        SQLiteDatabase writableDatabase = c22746b.f62998b.getWritableDatabase();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            C22825m c22825m = (C22825m) it.next();
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("_id", c22825m.f63338d);
                            contentValues.put(RemoteMessageConst.DATA, c22825m.f63339e.toString());
                            contentValues.put("wzrkParams", c22825m.f63343i.toString());
                            contentValues.put("campaignId", c22825m.f63335a);
                            contentValues.put("tags", TextUtils.join(",", c22825m.f63341g));
                            contentValues.put("isRead", Integer.valueOf(c22825m.f63340f ? 1 : 0));
                            contentValues.put("expires", Long.valueOf(c22825m.f63337c));
                            contentValues.put("created_at", Long.valueOf(c22825m.f63336b));
                            contentValues.put("messageUser", c22825m.f63342h);
                            writableDatabase.insertWithOnConflict("inboxMessages", null, contentValues, 5);
                        }
                    } catch (SQLiteException e2) {
                        Objects.requireNonNull(c22746b.m7828h());
                    }
                    c22746b.f62998b.close();
                }
            }
            synchronized (this.f63316c) {
                this.f63315b = this.f63314a.m7827i(this.f63317d);
                m7736d();
            }
            z = true;
        }
        return z;
    }
}
