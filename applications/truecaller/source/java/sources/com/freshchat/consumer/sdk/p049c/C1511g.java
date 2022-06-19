package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.p049c.p050a.C1498j;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1628au;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/g.class */
public class C1511g extends AbstractC1504b {
    public static final String TAG = "com.freshchat.consumer.sdk.c.g";

    /* renamed from: el */
    private static final String[] f4117el = new C1498j().m40807cR();

    /* renamed from: kP */
    public static final String f4118kP;
    private Context context;

    /* renamed from: ek */
    private C1509f f4119ek;

    static {
        StringBuilder m8728C = C22128a.m8728C("SELECT CONV._id, CONV.channel_id,initiated_time FROM conversations AS CONV  JOIN custsat AS CSAT  ON (CONV._id=CSAT.conv_id AND CSAT._status=");
        m8728C.append(Csat.CSatStatus.NOT_RATED.asInt());
        m8728C.append(")");
        f4118kP = m8728C.toString();
    }

    public C1511g(Context context) {
        super(context);
        this.context = context.getApplicationContext();
    }

    /* renamed from: a */
    private void m40735a(Cursor cursor, List<Message> list) {
        if (AbstractC1504b.m40792b(cursor)) {
            Map<String, Integer> mo40665a = mo40665a(cursor);
            do {
                Message m40719f = m40719f(cursor, mo40665a);
                if (m40719f != null) {
                    m40719f.setMessageFragments(m40721cy().m40754W(m40719f.getAlias()));
                    list.add(m40719f);
                }
            } while (cursor.moveToNext());
        }
    }

    /* renamed from: c */
    private static ContentValues m40728c(Message message) {
        String str;
        if (message.getAlias() == null) {
            message.setAlias(String.valueOf(System.nanoTime()));
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("created_at", Long.valueOf(message.getCreatedMillis()));
        contentValues.put("_id", message.getAlias());
        contentValues.put("channel_id", Long.valueOf(message.getChannelId()));
        contentValues.put("message_type", Integer.valueOf(message.getMessageType()));
        contentValues.put("marketing_id", Long.valueOf(message.getMarketingId()));
        contentValues.put("conv_id", Long.valueOf(message.getConversationId()));
        contentValues.put("read", Integer.valueOf(message.isRead() ? 1 : 0));
        contentValues.put("user_id", message.getMessageUserAlias());
        contentValues.put("user_type", Integer.valueOf(message.getMessageUserType()));
        int i = 1;
        if (message.getUploadState() != 1) {
            i = 0;
        }
        contentValues.put("uploaded", Integer.valueOf(i));
        contentValues.put("should_translate", Integer.valueOf(message.getShouldTranslate()));
        contentValues.put("flow_step_id", message.getFlowStepId());
        contentValues.put("user_name", message.getMessageUserName());
        contentValues.put("user_profile_pic", message.getMessageUserProfilePic());
        contentValues.put("should_delete", (Integer) 0);
        try {
            List<MessageFragment> replyFragments = message.getReplyFragments();
            str = "[]";
            if (C1716k.m39902a(replyFragments)) {
                str = C1597ab.m40337in().toJson(replyFragments, new C1516l().getType());
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            str = "[]";
        }
        contentValues.put("reply_fragments", str);
        String str2 = "{}";
        try {
            if (message.getInternalMeta() != null) {
                str2 = C1597ab.m40337in().toJson(message.getInternalMeta());
            }
        } catch (Exception e2) {
            C1723q.m39823a(e2);
            str2 = "{}";
        }
        contentValues.put("internal_meta", str2);
        contentValues.put("responded", Integer.valueOf(message.isResponded() ? 1 : 0));
        try {
            JSONObject jSONObject = new JSONObject();
            if (message.getId() > 0) {
                jSONObject.put("id", message.getId());
            }
            if (message.getReplyTo() != null) {
                jSONObject.put("replyTo", new JSONObject(C1597ab.m40337in().toJson(message.getReplyTo())));
            }
            contentValues.put("extras_json", jSONObject.toString());
        } catch (Exception e3) {
            C1723q.m39823a(e3);
        }
        return contentValues;
    }

    /* renamed from: cA */
    private Set<String> m40727cA() {
        Cursor cursor;
        HashSet hashSet = new HashSet();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor m40726cB = m40726cB();
                cursor3 = m40726cB;
                cursor = m40726cB;
                if (AbstractC1504b.m40792b(m40726cB)) {
                    int columnIndex = m40726cB.getColumnIndex("_id");
                    do {
                        cursor3 = m40726cB;
                        cursor2 = m40726cB;
                        hashSet.add(m40726cB.getString(columnIndex));
                        cursor3 = m40726cB;
                    } while (m40726cB.moveToNext());
                    cursor = m40726cB;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            return hashSet;
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* renamed from: cB */
    private Cursor m40726cB() {
        return m40789cs().query("message", f4117el, null, null, null, null, "created_at");
    }

    /* renamed from: cG */
    private List<Long> m40722cG() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor rawQuery = m40789cs().rawQuery(f4118kP, null);
                RemoteConfig m40245bD = C1622ap.m40245bD(this.context);
                cursor = rawQuery;
                if (rawQuery.moveToFirst()) {
                    int columnIndex = rawQuery.getColumnIndex("CONV.channel_id");
                    int columnIndex2 = rawQuery.getColumnIndex("initiated_time");
                    do {
                        boolean z = false;
                        cursor3 = rawQuery;
                        cursor2 = rawQuery;
                        if (C1628au.m40219a(m40245bD)) {
                            z = C1628au.m40218a(m40245bD, rawQuery.getLong(columnIndex2));
                        }
                        if (!z) {
                            arrayList.add(Long.valueOf(rawQuery.getLong(columnIndex)));
                        }
                    } while (rawQuery.moveToNext());
                    cursor = rawQuery;
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

    /* renamed from: cy */
    private C1509f m40721cy() {
        if (this.f4119ek == null) {
            this.f4119ek = new C1509f(this.context);
        }
        return this.f4119ek;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x02b0  */
    /* JADX WARN: Type inference failed for: r0v102, types: [java.util.List] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.freshchat.consumer.sdk.beans.Message m40719f(android.database.Cursor r6, java.util.Map<java.lang.String, java.lang.Integer> r7) {
        /*
            Method dump skipped, instructions count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p049c.C1511g.m40719f(android.database.Cursor, java.util.Map):com.freshchat.consumer.sdk.beans.Message");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: n */
    private boolean m40711n(long j) {
        boolean z;
        Cursor cursor;
        if (j <= 0) {
            return false;
        }
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = m40789cs().query("message", new String[]{"created_at"}, "marketing_id =0  AND uploaded=1 AND user_type=0 AND channel_id = ?", new String[]{Long.toString(j)}, null, null, null);
                cursor2 = query;
                cursor = query;
                z = false;
                if (AbstractC1504b.m40792b(query)) {
                    cursor2 = query;
                    cursor3 = query;
                    cursor = query;
                    z = false;
                    if (query.getCount() > 0) {
                        z = true;
                        cursor = query;
                    }
                }
            } catch (Exception e) {
                cursor2 = cursor3;
                C1723q.m39823a(e);
                z = false;
                cursor = cursor3;
            }
            AbstractC1504b.m40791c(cursor);
            return z;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor2);
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: o */
    private long m40710o(long j) {
        Cursor cursor;
        char c;
        if (j <= 0) {
            return 0L;
        }
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = m40789cs().query("message", new String[]{"created_at"}, "marketing_id =0 AND channel_id = ?", new String[]{Long.toString(j)}, null, null, "created_at DESC ", "1");
                c = 0;
                cursor = query;
                if (AbstractC1504b.m40792b(query)) {
                    cursor2 = query;
                    cursor3 = query;
                    c = query.getLong(0);
                    cursor = query;
                }
            } catch (Exception e) {
                cursor2 = cursor3;
                C1723q.m39823a(e);
                cursor = cursor3;
                c = 0;
            }
            AbstractC1504b.m40791c(cursor);
            return c;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor2);
            throw th;
        }
    }

    /* renamed from: A */
    public List<Message> m40742A(long j) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("message_type IN (");
                sb.append(Message.MessageType.MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT.getIntValue());
                sb.append(") AND ");
                sb.append("responded");
                sb.append("!=");
                sb.append(1);
                sb.append(" AND ");
                sb.append("channel_id");
                sb.append("=?");
                Cursor query = m40789cs().query("message", f4117el, sb.toString(), new String[]{Long.toString(j)}, null, null, null);
                cursor = query;
                cursor2 = query;
                m40735a(query, arrayList);
                cursor2 = query;
            } catch (Exception e) {
                cursor = cursor2;
                C1723q.m39823a(e);
            }
            AbstractC1504b.m40791c(cursor2);
            return arrayList;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor);
            throw th;
        }
    }

    /* renamed from: B */
    public Message m40741B(long j) {
        String m40746z = m40721cy().m40746z(j);
        if (C1626as.isEmpty(m40746z)) {
            return null;
        }
        return m40737X(m40746z);
    }

    /* renamed from: E */
    public boolean m40740E(long j) {
        boolean z = false;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("display!=-1 AND uploaded=0 AND user_type=0 AND channel_id=");
                sb.append(j);
                Cursor query = m40789cs().query("message", f4117el, sb.toString(), null, null, null, null);
                cursor = query;
                cursor2 = query;
                if (query.getCount() > 0) {
                    z = true;
                }
                AbstractC1504b.m40791c(query);
                return z;
            } catch (Exception e) {
                C1723q.m39823a(e);
                AbstractC1504b.m40791c(cursor2);
                return false;
            }
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor);
            throw th;
        }
    }

    /* renamed from: F */
    public void m40739F(long j) {
        try {
            m40789cs().delete("message", "channel_id=" + j + " AND should_delete" + ContainerUtils.KEY_VALUE_DELIMITER + 1, new String[0]);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to delete marked messages. ");
            m8728C.append(e.toString());
            C1613ai.m40283e("FRESHCHAT", m8728C.toString());
        }
    }

    /* renamed from: J */
    public void m40738J(List<String> list) {
        if (C1716k.isEmpty(list)) {
            return;
        }
        m40789cs().beginTransaction();
        try {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("should_delete", (Integer) 1);
                m40789cs().update("message", contentValues, "_id IN (" + C1626as.m40232a("?", ",", C1716k.m39900b(list)) + ")", (String[]) list.toArray(new String[0]));
                m40789cs().setTransactionSuccessful();
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        } finally {
            m40789cs().endTransaction();
        }
    }

    /* renamed from: X */
    public Message m40737X(String str) {
        Throwable th;
        Cursor cursor;
        Exception e;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            Cursor query = m40789cs().query("message", f4117el, "_id=?", new String[]{str}, null, null, null);
            cursor3 = query;
            try {
                try {
                    int count = query.getCount();
                    String str2 = TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Message by alias ");
                    sb.append(str);
                    sb.append(" count ");
                    sb.append(count);
                    C1613ai.m40284d(str2, sb.toString());
                    cursor = query;
                    if (AbstractC1504b.m40792b(query)) {
                        Message m40719f = m40719f(query, mo40665a(query));
                        if (m40719f != null) {
                            m40719f.setMessageFragments(m40721cy().m40754W(m40719f.getAlias()));
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Message by alias ");
                        sb2.append(str);
                        sb2.append(" message ");
                        sb2.append(m40719f);
                        C1613ai.m40284d(str2, sb2.toString());
                        AbstractC1504b.m40791c(query);
                        return m40719f;
                    }
                } catch (Exception e2) {
                    cursor2 = query;
                    e = e2;
                    cursor3 = cursor2;
                    C1723q.m39823a(e);
                    cursor = cursor2;
                    AbstractC1504b.m40791c(cursor);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC1504b.m40791c(cursor3);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
        AbstractC1504b.m40791c(cursor);
        return null;
    }

    /* renamed from: a */
    public List<Boolean> m40732a(List<Message> list, long j) {
        String alias;
        long marketingId;
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        Set<String> m40727cA = m40727cA();
        Set<Long> m40720cz = m40720cz();
        try {
            try {
                m40789cs().beginTransaction();
                for (Message message : list) {
                    try {
                        alias = message.getAlias();
                        marketingId = message.getMarketingId();
                    } catch (Exception e) {
                        arrayList.add(Boolean.FALSE);
                        C1723q.m39823a(e);
                    }
                    if (m40727cA.contains(alias)) {
                        str = TAG;
                        str2 = "Ignoring duplicate message " + alias;
                    } else if (marketingId <= 0 || !m40720cz.contains(Long.valueOf(marketingId))) {
                        message.setChannelId(j);
                        arrayList.add(Boolean.valueOf(m40734a(m40789cs(), message)));
                    } else {
                        str = TAG;
                        str2 = "Ignoring duplicate marketing message " + marketingId;
                    }
                    C1613ai.m40284d(str, str2);
                }
                m40789cs().setTransactionSuccessful();
            } finally {
                m40789cs().endTransaction();
            }
        } catch (Exception e2) {
            C1723q.m39823a(e2);
        }
        return arrayList;
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("conv_id", Integer.valueOf(cursor.getColumnIndex("conv_id")));
            hashMap.put("should_delete", C22128a.m8544z1(hashMap, "user_profile_pic", C22128a.m8544z1(hashMap, "user_name", C22128a.m8544z1(hashMap, "flow_step_id", C22128a.m8544z1(hashMap, "should_translate", C22128a.m8544z1(hashMap, "responded", C22128a.m8544z1(hashMap, "extras_json", C22128a.m8544z1(hashMap, "internal_meta", C22128a.m8544z1(hashMap, "reply_fragments", C22128a.m8544z1(hashMap, "uploaded", C22128a.m8544z1(hashMap, "read", C22128a.m8544z1(hashMap, "created_at", C22128a.m8544z1(hashMap, "user_type", C22128a.m8544z1(hashMap, "user_id", C22128a.m8544z1(hashMap, "message_type", C22128a.m8544z1(hashMap, "marketing_id", C22128a.m8544z1(hashMap, "_id", C22128a.m8544z1(hashMap, "channel_id", Integer.valueOf(cursor.getColumnIndex("channel_id")), cursor, "_id"), cursor, "marketing_id"), cursor, "message_type"), cursor, "user_id"), cursor, "user_type"), cursor, "created_at"), cursor, "read"), cursor, "uploaded"), cursor, "reply_fragments"), cursor, "internal_meta"), cursor, "extras_json"), cursor, "responded"), cursor, "should_translate"), cursor, "flow_step_id"), cursor, "user_name"), cursor, "user_profile_pic"), cursor, "should_delete"));
        }
        return hashMap;
    }

    /* renamed from: a */
    public boolean m40736a(long j, long j2) {
        long m40710o = m40710o(j);
        boolean z = true;
        boolean z2 = m40710o > 0 && System.currentTimeMillis() - m40710o < j2;
        if (!m40711n(j) || !z2) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m40734a(SQLiteDatabase sQLiteDatabase, Message message) {
        return m40733a(sQLiteDatabase, message, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c4, code lost:
        if (r9 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c7, code lost:
        r7.endTransaction();
        r11 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e3, code lost:
        if (r9 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00eb, code lost:
        return r11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m40733a(android.database.sqlite.SQLiteDatabase r7, com.freshchat.consumer.sdk.beans.Message r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p049c.C1511g.m40733a(android.database.sqlite.SQLiteDatabase, com.freshchat.consumer.sdk.beans.Message, boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m40731b(android.database.sqlite.SQLiteDatabase r7) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p049c.C1511g.m40731b(android.database.sqlite.SQLiteDatabase):void");
    }

    /* renamed from: b */
    public boolean m40730b(Message message) {
        return m40733a(m40789cs(), message, true);
    }

    /* renamed from: c */
    public void m40729c(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor query;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                query = sQLiteDatabase.query("message", f4117el, "reply_fragments LIKE ?", new String[]{"%rawJsonOfUnsupportedType%"}, null, null, null);
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            if (query == null) {
                AbstractC1504b.m40791c(query);
                return;
            }
            Map<String, Integer> mo40665a = mo40665a(query);
            Integer num = mo40665a.get("reply_fragments");
            if (num == null) {
                AbstractC1504b.m40791c(query);
                return;
            }
            cursor = query;
            if (AbstractC1504b.m40792b(query)) {
                do {
                    cursor3 = query;
                    cursor2 = query;
                    try {
                        JSONArray jSONArray = new JSONArray(query.getString(num.intValue()));
                        int length = jSONArray.length();
                        for (int i = 0; i < length; i++) {
                            JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                            if (jSONObject.has("rawJsonOfUnsupportedType")) {
                                jSONArray.put(i, new JSONObject(jSONObject.getString("rawJsonOfUnsupportedType")));
                            }
                        }
                        Message m40719f = m40719f(query, mo40665a);
                        if (m40719f != null) {
                            m40719f.setReplyFragments((List) C1597ab.m40336io().fromJson(jSONArray.toString(), new C1519o(this).getType()));
                            m40734a(sQLiteDatabase, m40719f);
                        }
                    } catch (Exception e2) {
                        C1723q.m39823a(e2);
                    }
                } while (query.moveToNext());
                cursor = query;
            }
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* renamed from: cC */
    public List<Message> m40725cC() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = m40789cs().query("message", f4117el, "display!=-1 AND uploaded=0 AND user_type=0", null, null, null, null);
                cursor3 = query;
                cursor = query;
                if (AbstractC1504b.m40792b(query)) {
                    Map<String, Integer> mo40665a = mo40665a(query);
                    do {
                        cursor3 = query;
                        cursor2 = query;
                        Message m40719f = m40719f(query, mo40665a);
                        m40719f.setMessageFragments(m40721cy().m40754W(m40719f.getAlias()));
                        arrayList.add(m40719f);
                        cursor3 = query;
                    } while (query.moveToNext());
                    cursor = query;
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

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: cD */
    public long m40724cD() {
        Cursor cursor;
        char c;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor rawQuery = m40789cs().rawQuery("SELECT MAX(created_at) as MAX_TIME FROM message WHERE user_type !=? ", new String[]{String.valueOf(0)});
                c = 0;
                cursor = rawQuery;
                if (rawQuery.moveToNext()) {
                    cursor3 = rawQuery;
                    cursor2 = rawQuery;
                    c = rawQuery.getLong(0);
                    cursor = rawQuery;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
                c = 0;
            }
            AbstractC1504b.m40791c(cursor);
            return c;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
    }

    /* renamed from: cF */
    public Map<Long, Integer> m40723cF() {
        Cursor cursor;
        Long valueOf;
        Integer num;
        HashMap hashMap = new HashMap();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = m40789cs().query("message", new String[]{"channel_id", "COUNT(1)"}, "display!=-1 AND read=0", null, "channel_id", null, null);
                while (query.moveToNext()) {
                    hashMap.put(Long.valueOf(query.getLong(0)), Integer.valueOf(query.getInt(1)));
                }
                Iterator<Long> it = m40722cG().iterator();
                while (true) {
                    cursor3 = query;
                    cursor2 = query;
                    cursor = query;
                    if (!it.hasNext()) {
                        break;
                    }
                    long longValue = it.next().longValue();
                    if (hashMap.containsKey(Long.valueOf(longValue))) {
                        int intValue = ((Integer) hashMap.get(Long.valueOf(longValue))).intValue();
                        valueOf = Long.valueOf(longValue);
                        num = Integer.valueOf(intValue + 1);
                    } else {
                        valueOf = Long.valueOf(longValue);
                        num = 1;
                    }
                    hashMap.put(valueOf, num);
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            return hashMap;
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: cz */
    public Set<Long> m40720cz() {
        Cursor cursor;
        HashSet hashSet = new HashSet();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor m40726cB = m40726cB();
                cursor = m40726cB;
                if (AbstractC1504b.m40792b(m40726cB)) {
                    int columnIndex = m40726cB.getColumnIndex("marketing_id");
                    do {
                        cursor3 = m40726cB;
                        cursor2 = m40726cB;
                        hashSet.add(Long.valueOf(m40726cB.getLong(columnIndex)));
                    } while (m40726cB.moveToNext());
                    cursor = m40726cB;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            AbstractC1504b.m40791c(cursor);
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("Returning marketing IDs of size ");
            m8728C.append(hashSet.size());
            C1613ai.m40284d(str, m8728C.toString());
            return hashSet;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
    }

    /* renamed from: gr */
    public int m40718gr() {
        int i;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m40789cs().query("message", new String[]{"_id"}, "user_type!= 0", null, null, null, null);
                cursor2 = query;
                cursor = query;
                i = query.getCount();
                AbstractC1504b.m40791c(query);
            } catch (Exception e) {
                cursor2 = cursor;
                C1723q.m39823a(e);
                AbstractC1504b.m40791c(cursor);
                i = 0;
            }
            return i;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor2);
            throw th;
        }
    }

    /* renamed from: i */
    public Set<Long> m40717i(long j) {
        Cursor cursor;
        HashSet hashSet = new HashSet();
        if (j <= 0) {
            return hashSet;
        }
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = m40789cs().query("message", new String[]{"marketing_id"}, "marketing_id > 0 AND read=0 AND channel_id = ?", new String[]{Long.toString(j)}, null, null, null);
                cursor = query;
                if (AbstractC1504b.m40792b(query)) {
                    int columnIndex = query.getColumnIndex("marketing_id");
                    do {
                        cursor2 = query;
                        cursor3 = query;
                        hashSet.add(Long.valueOf(query.getLong(columnIndex)));
                    } while (query.moveToNext());
                    cursor = query;
                }
            } catch (Exception e) {
                cursor2 = cursor3;
                C1723q.m39823a(e);
                cursor = cursor3;
            }
            return hashSet;
        } finally {
            AbstractC1504b.m40791c(cursor2);
        }
    }

    /* renamed from: j */
    public boolean m40716j(long j) {
        boolean z = false;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m40789cs().query("message", f4117el, "marketing_id=?", new String[]{String.valueOf(j)}, null, null, null);
                int count = query.getCount();
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Message by marketing ID ");
                sb.append(j);
                cursor2 = query;
                cursor = query;
                C1613ai.m40284d(str, sb.toString());
                cursor = query;
                if (count > 0) {
                    z = true;
                    cursor = query;
                }
            } catch (Exception e) {
                cursor2 = cursor;
                C1723q.m39823a(e);
            }
            AbstractC1504b.m40791c(cursor);
            return z;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor2);
            throw th;
        }
    }

    /* renamed from: jN */
    public List<String> m40715jN() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = m40789cs().query(true, "message", new String[]{"user_id"}, "uploaded=1 AND user_type=0", null, null, null, null, null);
                cursor3 = query;
                cursor = query;
                if (query.moveToFirst()) {
                    do {
                        cursor3 = query;
                        cursor2 = query;
                        arrayList.add(query.getString(query.getColumnIndex("user_id")));
                        cursor3 = query;
                    } while (query.moveToNext());
                    cursor = query;
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

    /* renamed from: k */
    public List<Message> m40714k(long j) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Map<String, List<MessageFragment>> m40747h = m40721cy().m40747h(j);
                Cursor query = m40789cs().query("message", f4117el, "display!=-1 AND channel_id=?", new String[]{Long.toString(j)}, null, null, "created_at");
                cursor = query;
                if (AbstractC1504b.m40792b(query)) {
                    Map<String, Integer> mo40665a = mo40665a(query);
                    do {
                        cursor2 = query;
                        cursor3 = query;
                        Message m40719f = m40719f(query, mo40665a);
                        m40719f.setMessageFragments(m40747h.get(m40719f.getAlias()));
                        arrayList.add(m40719f);
                    } while (query.moveToNext());
                    cursor = query;
                }
            } catch (Exception e) {
                cursor2 = cursor3;
                C1723q.m39823a(e);
                cursor = cursor3;
            }
            return arrayList;
        } finally {
            AbstractC1504b.m40791c(cursor2);
        }
    }

    /* renamed from: l */
    public Message m40713l(long j) {
        Cursor cursor;
        Throwable th;
        Message message;
        Message message2;
        Exception e;
        Cursor query;
        Message message3;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                query = m40789cs().query("message", f4117el, "channel_id=? AND display != -1", new String[]{Long.toString(j)}, null, null, "created_at DESC", "1");
                message = null;
                message3 = null;
            } catch (Exception e2) {
                e = e2;
                message2 = null;
            }
        } catch (Throwable th2) {
            cursor = cursor2;
            th = th2;
        }
        try {
            if (AbstractC1504b.m40792b(query)) {
                message = m40719f(query, mo40665a(query));
                message3 = message;
                message.setMessageFragments(m40721cy().m40754W(message.getAlias()));
            }
            AbstractC1504b.m40791c(query);
        } catch (Exception e3) {
            e = e3;
            cursor3 = query;
            message2 = message3;
            cursor2 = cursor3;
            C1723q.m39823a(e);
            AbstractC1504b.m40791c(cursor3);
            message = message2;
            return message;
        } catch (Throwable th3) {
            th = th3;
            cursor = query;
            AbstractC1504b.m40791c(cursor);
            throw th;
        }
        return message;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: m */
    public int m40712m(long j) {
        m40789cs().beginTransaction();
        int i = 0;
        try {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("read", (Integer) 1);
                int update = m40789cs().update("message", contentValues, "read=0 AND channel_id=?", new String[]{Long.toString(j)});
                i = update;
                m40789cs().setTransactionSuccessful();
                i = update;
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
            m40789cs().endTransaction();
            return i;
        } catch (Throwable th) {
            m40789cs().endTransaction();
            throw th;
        }
    }

    /* renamed from: p */
    public boolean m40709p(long j) {
        for (Channel channel : new C1506c(this.context).m40774cv()) {
            if (m40736a(channel.getId(), j)) {
                return true;
            }
        }
        return false;
    }
}
