package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.freshchat.consumer.sdk.beans.MarketingMessageStatus;
import com.freshchat.consumer.sdk.p049c.p050a.C1490b;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.c.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a.class */
public class C1488a extends AbstractC1504b {
    public static final String TAG = "com.freshchat.consumer.sdk.c.a";
    private Context context;

    public C1488a(Context context) {
        super(context);
        this.context = context.getApplicationContext();
    }

    /* renamed from: R */
    private C1805a m40821R(String str) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        Exception e;
        Cursor cursor3;
        try {
            cursor3 = m40789cs().query("bl", new C1490b().m40807cR(), "_id= ?", new String[]{str}, null, null, "priority,created_m");
            cursor2 = cursor3;
            cursor = cursor3;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor3)) {
                        C1805a m40818a = m40818a(cursor3, mo40665a(cursor3));
                        AbstractC1504b.m40791c(cursor3);
                        return m40818a;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor = cursor3;
                    C1723q.m39823a(e);
                    cursor2 = cursor3;
                    AbstractC1504b.m40791c(cursor2);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC1504b.m40791c(cursor);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor3 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            AbstractC1504b.m40791c(cursor);
            throw th;
        }
        AbstractC1504b.m40791c(cursor2);
        return null;
    }

    /* renamed from: a */
    private C1805a m40818a(Cursor cursor, Map<String, Integer> map) {
        C1805a c1805a;
        if (AbstractC1504b.m40787d(cursor)) {
            String string = cursor.getString(map.get("json").intValue());
            String str = TAG;
            C1613ai.m40284d(str, "******************************");
            C1613ai.m40284d(str, "Backlog json is " + string);
            C1613ai.m40284d(str, "******************************");
            c1805a = (C1805a) new C1597ab().fromJson(string, (Class<Object>) C1805a.class);
        } else {
            c1805a = null;
        }
        return c1805a;
    }

    /* renamed from: a */
    private void m40817a(MarketingMessageStatus marketingMessageStatus, MarketingMessageStatus marketingMessageStatus2) {
        if (marketingMessageStatus.getClicked() == 1) {
            marketingMessageStatus2.setClicked(1);
        }
        if (marketingMessageStatus.getDelivered() == 1) {
            marketingMessageStatus2.setDelivered(1);
        }
        if (marketingMessageStatus.getSeen() == 1) {
            marketingMessageStatus2.setSeen(1);
        }
    }

    /* renamed from: cq */
    private Cursor m40813cq() {
        return m40789cs().query("bl", new C1490b().m40807cR(), null, null, null, null, "priority,created_m");
    }

    /* renamed from: e */
    private void m40811e(C1805a c1805a) {
        try {
            String json = new C1597ab().toJson(c1805a);
            ContentValues contentValues = new ContentValues();
            contentValues.put("json", json);
            int update = m40789cs().update("bl", contentValues, "_id = ?", new String[]{c1805a.m39528dr()});
            String str = TAG;
            C1613ai.m40284d(str, "updated backlog " + c1805a + " with result " + update);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: g */
    private boolean m40809g(C1805a c1805a) {
        if (c1805a.getType() != 0) {
            try {
                ContentValues contentValues = new ContentValues();
                String json = new C1597ab().toJson(c1805a);
                String str = TAG;
                C1613ai.m40284d(str, "json for holder is " + c1805a);
                contentValues.put("json", json);
                contentValues.put("_id", c1805a.m39528dr());
                contentValues.put(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(c1805a.getPriority()));
                contentValues.put("type", Integer.valueOf(c1805a.getType()));
                contentValues.put("created_m", Long.valueOf(System.currentTimeMillis()));
                long insert = m40789cs().insert("bl", null, contentValues);
                C1613ai.m40284d(str, "*********************************************");
                C1613ai.m40284d(str, "Backlog saved - " + insert);
                C1613ai.m40284d(str, "*********************************************");
                return true;
            } catch (Exception e) {
                C1723q.m39823a(e);
                return false;
            }
        }
        throw new RuntimeException("Type cannot be undefined");
    }

    /* renamed from: C */
    public C1805a m40822C(int i) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        Exception e;
        Cursor cursor3;
        try {
            cursor3 = m40789cs().query("bl", new C1490b().m40807cR(), "type= ?", new String[]{String.valueOf(i)}, null, null, "priority,created_m");
            cursor2 = cursor3;
            cursor = cursor3;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor3)) {
                        C1805a m40818a = m40818a(cursor3, mo40665a(cursor3));
                        AbstractC1504b.m40791c(cursor3);
                        return m40818a;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor = cursor3;
                    C1723q.m39823a(e);
                    cursor2 = cursor3;
                    AbstractC1504b.m40791c(cursor2);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC1504b.m40791c(cursor);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor3 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            AbstractC1504b.m40791c(cursor);
            throw th;
        }
        AbstractC1504b.m40791c(cursor2);
        return null;
    }

    /* renamed from: S */
    public boolean m40820S(String str) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m40789cs().query("bl", new String[]{"_id"}, "_id = ?", new String[]{str}, null, null, null);
                boolean z = false;
                if (query != null) {
                    cursor2 = query;
                    cursor = query;
                    z = false;
                    if (query.getCount() > 0) {
                        z = true;
                    }
                }
                AbstractC1504b.m40791c(query);
                return z;
            } catch (Exception e) {
                C1723q.m39823a(e);
                AbstractC1504b.m40791c(cursor);
                return false;
            }
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor2);
            throw th;
        }
    }

    /* renamed from: T */
    public boolean m40819T(String str) {
        try {
            int delete = m40789cs().delete("bl", "_id = ?", new String[]{str});
            String str2 = TAG;
            C1613ai.m40284d(str2, "Delete backlog " + str + StringConstant.SPACE + delete);
            return false;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return false;
        }
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("json", Integer.valueOf(cursor.getColumnIndex("json")));
        }
        return hashMap;
    }

    /* renamed from: a */
    public boolean m40816a(C1805a c1805a) {
        int type = c1805a.getType();
        if (!m40808l(type)) {
            return m40809g(c1805a);
        }
        String str = TAG;
        C1613ai.m40284d(str, "Backlog of type " + type + " already exists");
        return false;
    }

    /* renamed from: b */
    public void m40815b(C1805a c1805a) {
        if (c1805a == null) {
            return;
        }
        if (m40820S(c1805a.m39528dr())) {
            m40811e(c1805a);
        } else {
            m40809g(c1805a);
        }
    }

    /* renamed from: cp */
    public List<C1805a> m40814cp() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor m40813cq = m40813cq();
                cursor3 = m40813cq;
                cursor = m40813cq;
                if (AbstractC1504b.m40792b(m40813cq)) {
                    Map<String, Integer> mo40665a = mo40665a(m40813cq);
                    do {
                        cursor3 = m40813cq;
                        cursor2 = m40813cq;
                        arrayList.add(m40818a(m40813cq, mo40665a));
                        cursor3 = m40813cq;
                    } while (m40813cq.moveToNext());
                    cursor = m40813cq;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            return arrayList;
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* renamed from: d */
    public void m40812d(C1805a c1805a) {
        synchronized (C1488a.class) {
            try {
                String m39528dr = c1805a.m39528dr();
                String str = TAG;
                C1613ai.m40284d(str, "Searching for backlog by ID " + m39528dr);
                C1805a m40821R = m40821R(m39528dr);
                if (m40821R != null) {
                    C1613ai.m40284d(str, "Marketing backlog already exists " + m40821R);
                    Map<String, String> meta = m40821R.getMeta();
                    String str2 = meta.get("fc_marketing_metrics");
                    C1597ab c1597ab = new C1597ab();
                    MarketingMessageStatus marketingMessageStatus = (MarketingMessageStatus) c1597ab.fromJson(str2, (Class<Object>) MarketingMessageStatus.class);
                    C1613ai.m40284d(str, "Status in DB is " + marketingMessageStatus);
                    MarketingMessageStatus marketingMessageStatus2 = (MarketingMessageStatus) c1597ab.fromJson(c1805a.getMeta().get("fc_marketing_metrics"), (Class<Object>) MarketingMessageStatus.class);
                    C1613ai.m40284d(str, "Status from source is " + marketingMessageStatus);
                    m40817a(marketingMessageStatus2, marketingMessageStatus);
                    C1613ai.m40284d(str, "Updated status is " + marketingMessageStatus);
                    String json = c1597ab.toJson(marketingMessageStatus);
                    C1613ai.m40284d(str, "Updated json is " + json);
                    meta.put("fc_marketing_metrics", json);
                    m40811e(m40821R);
                } else {
                    C1613ai.m40284d(str, "Marketing backlog does not exist " + m39528dr);
                    m40809g(c1805a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public boolean m40810f(C1805a c1805a) {
        if (!m40820S(c1805a.m39528dr())) {
            return m40809g(c1805a);
        }
        String str = TAG;
        C1613ai.m40284d(str, "Ignoring duplicate backlog " + c1805a);
        return false;
    }

    /* renamed from: l */
    public boolean m40808l(int i) {
        C1613ai.m40284d(TAG, "Does backlog exists by type " + i);
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m40789cs().query("bl", new String[]{"_id"}, "type = ?", new String[]{String.valueOf(i)}, null, null, null);
                boolean z = false;
                if (query != null) {
                    cursor2 = query;
                    cursor = query;
                    z = false;
                    if (query.getCount() > 0) {
                        z = true;
                    }
                }
                AbstractC1504b.m40791c(query);
                return z;
            } catch (Exception e) {
                cursor2 = cursor;
                C1723q.m39823a(e);
                AbstractC1504b.m40791c(cursor);
                return false;
            }
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor2);
            throw th;
        }
    }
}
