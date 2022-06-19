package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.p049c.p050a.C1494f;
import com.freshchat.consumer.sdk.p049c.p050a.C1495g;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1628au;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/e.class */
public class C1508e extends AbstractC1504b {

    /* renamed from: ef */
    private static final String[] f4112ef = new C1494f().m40807cR();

    /* renamed from: eg */
    private static final String[] f4113eg = new C1495g().m40807cR();
    private final Context context;

    public C1508e(Context context) {
        super(context);
        this.context = context;
    }

    /* renamed from: c */
    private Conversation m40763c(Cursor cursor, Map<String, Integer> map) {
        Conversation conversation;
        if (AbstractC1504b.m40787d(cursor)) {
            long j = cursor.getLong(map.get("_id").intValue());
            Conversation conversation2 = new Conversation(j);
            conversation2.setChannelId(cursor.getLong(map.get("channel_id").intValue()));
            boolean z = true;
            if (cursor.getInt(map.get("has_pending_csat").intValue()) != 1) {
                z = false;
            }
            conversation2.setHasPendingCsat(z);
            conversation2.setStatus(cursor.getInt(map.get(UpdateKey.STATUS).intValue()));
            Csat m40756g = m40756g(j);
            conversation = conversation2;
            if (m40756g != null) {
                conversation2.setCsat(m40756g);
                conversation = conversation2;
            }
        } else {
            conversation = null;
        }
        return conversation;
    }

    /* renamed from: d */
    private Csat m40762d(Cursor cursor, Map<String, Integer> map) {
        Csat csat;
        if (AbstractC1504b.m40787d(cursor)) {
            Csat csat2 = new Csat();
            csat2.setCsatId(cursor.getLong(map.get("csat_id").intValue()));
            csat2.setQuestion(cursor.getString(map.get("question").intValue()));
            csat2.setMandatory(cursor.getInt(map.get("mandatory").intValue()) == 1);
            boolean z = false;
            if (cursor.getInt(map.get("comments_allowed").intValue()) == 1) {
                z = true;
            }
            csat2.setMobileUserCommentsAllowed(z);
            csat2.setInitiatedTime(cursor.getLong(map.get("initiated_time").intValue()));
            csat2.setStatus(Csat.CSatStatus.fromInt(cursor.getInt(map.get("_status").intValue())));
            csat = csat2;
        } else {
            csat = null;
        }
        return csat;
    }

    /* renamed from: e */
    private Map<String, Integer> m40761e(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("channel_id", Integer.valueOf(cursor.getColumnIndex("channel_id")));
            hashMap.put(UpdateKey.STATUS, C22128a.m8544z1(hashMap, "has_pending_csat", C22128a.m8544z1(hashMap, "_id", Integer.valueOf(cursor.getColumnIndex("_id")), cursor, "has_pending_csat"), cursor, UpdateKey.STATUS));
        }
        return hashMap;
    }

    /* renamed from: f */
    private Map<String, Integer> m40759f(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("csat_id", Integer.valueOf(cursor.getColumnIndex("csat_id")));
            hashMap.put("initiated_time", C22128a.m8544z1(hashMap, "comments_allowed", C22128a.m8544z1(hashMap, "mandatory", C22128a.m8544z1(hashMap, "question", C22128a.m8544z1(hashMap, "_status", Integer.valueOf(cursor.getColumnIndex("_status")), cursor, "question"), cursor, "mandatory"), cursor, "comments_allowed"), cursor, "initiated_time"));
        }
        return hashMap;
    }

    /* renamed from: U */
    public void m40766U(String str) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_status", Integer.valueOf(Csat.CSatStatus.RATED_NOT_UPLOADED.asInt()));
            m40789cs().update("custsat", contentValues, "conv_id=?", new String[]{str});
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        return null;
    }

    /* renamed from: a */
    public void m40765a(long j, Csat csat) {
        try {
            if (csat == null) {
                return;
            }
            try {
                SQLiteStatement compileStatement = m40789cs().compileStatement(new C1495g().m40804k(false));
                m40789cs().beginTransaction();
                compileStatement.clearBindings();
                compileStatement.bindLong(1, j);
                compileStatement.bindLong(2, csat.getCsatId());
                compileStatement.bindString(3, csat.getQuestion());
                compileStatement.bindLong(4, (csat.isMobileUserCommentsAllowed() ? 1 : null) == 1 ? 1L : 0L);
                compileStatement.bindLong(5, (csat.isMandatory() ? 1 : null) == 1 ? 1L : 0L);
                compileStatement.bindLong(6, csat.getStatus().asInt());
                compileStatement.bindLong(7, csat.getInitiatedTime());
                compileStatement.executeInsert();
                m40789cs().setTransactionSuccessful();
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        } finally {
            m40789cs().endTransaction();
        }
    }

    /* renamed from: a */
    public void m40764a(Conversation conversation) {
        if (conversation == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(conversation);
        m40758f(arrayList);
    }

    /* renamed from: f */
    public Conversation m40760f(long j) {
        Throwable th;
        Cursor cursor;
        Conversation conversation;
        Exception e;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            cursor2 = m40789cs().query("conversations", f4112ef, "channel_id=?", new String[]{Long.toString(j)}, null, null, null);
            conversation = null;
            cursor = cursor2;
            cursor3 = cursor2;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor2)) {
                        conversation = m40763c(cursor2, m40761e(cursor2));
                        cursor = cursor2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor3 = cursor2;
                    C1723q.m39823a(e);
                    cursor = cursor2;
                    conversation = null;
                    AbstractC1504b.m40791c(cursor);
                    return conversation;
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
        return conversation;
    }

    /* renamed from: f */
    public void m40758f(List<Conversation> list) {
        SQLiteStatement compileStatement = m40789cs().compileStatement(new C1494f().m40806cS());
        m40789cs().beginTransaction();
        C1512h c1512h = new C1512h(this.context);
        for (int i = 0; i < list.size(); i++) {
            Conversation conversation = list.get(i);
            long conversationId = conversation.getConversationId();
            Object[] objArr = null;
            if (conversationId != 0) {
                List<Participant> participants = conversation.getParticipants();
                if (C1716k.m39902a(participants)) {
                    c1512h.m40704g(participants);
                }
                compileStatement.clearBindings();
                compileStatement.bindString(1, Long.toString(conversationId));
                compileStatement.bindLong(2, conversation.getChannelId());
                if (conversation.hasPendingCsat()) {
                    objArr = 1;
                }
                compileStatement.bindLong(3, objArr == 1 ? 1L : 0L);
                compileStatement.bindLong(4, conversation.getStatus());
                compileStatement.execute();
            }
        }
        m40789cs().setTransactionSuccessful();
        m40789cs().endTransaction();
    }

    /* renamed from: fR */
    public void m40757fR() {
        RemoteConfig m40245bD = C1622ap.m40245bD(this.context);
        if (!C1628au.m40219a(m40245bD)) {
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                m40789cs().beginTransaction();
                Cursor rawQuery = m40789cs().rawQuery(C1511g.f4118kP, null);
                ArrayList arrayList = new ArrayList();
                if (rawQuery.moveToFirst()) {
                    int columnIndex = rawQuery.getColumnIndex("CONV._id");
                    int columnIndex2 = rawQuery.getColumnIndex("initiated_time");
                    do {
                        if (C1628au.m40218a(m40245bD, rawQuery.getLong(columnIndex2))) {
                            arrayList.add(rawQuery.getString(columnIndex));
                        }
                    } while (rawQuery.moveToNext());
                    if (C1716k.m39902a(arrayList)) {
                        SQLiteDatabase m40789cs = m40789cs();
                        StringBuilder sb = new StringBuilder();
                        sb.append("conv_id=");
                        sb.append(C1626as.m40232a("?", ",", C1716k.m39900b(arrayList)));
                        m40789cs.delete("custsat", sb.toString(), (String[]) arrayList.toArray(new String[0]));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("has_pending_csat", (Integer) 0);
                        SQLiteDatabase m40789cs2 = m40789cs();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("_id=");
                        sb2.append(C1626as.m40232a("?", ",", C1716k.m39900b(arrayList)));
                        m40789cs2.update("conversations", contentValues, sb2.toString(), (String[]) arrayList.toArray(new String[0]));
                    }
                }
                cursor = rawQuery;
                cursor2 = rawQuery;
                m40789cs().setTransactionSuccessful();
                cursor2 = rawQuery;
            } catch (Exception e) {
                cursor = cursor2;
                C1723q.m39823a(e);
            }
            AbstractC1504b.m40791c(cursor2);
            m40789cs().endTransaction();
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor);
            m40789cs().endTransaction();
            throw th;
        }
    }

    /* renamed from: g */
    public Csat m40756g(long j) {
        Throwable th;
        Cursor cursor;
        Csat csat;
        Exception e;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            try {
                cursor2 = m40789cs().query("custsat", f4113eg, "conv_id=?", new String[]{Long.toString(j)}, null, null, null);
                csat = null;
                cursor = cursor2;
                cursor3 = cursor2;
                try {
                    if (AbstractC1504b.m40792b(cursor2)) {
                        cursor3 = cursor2;
                        csat = m40762d(cursor2, m40759f(cursor2));
                        cursor = cursor2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor3 = cursor2;
                    C1723q.m39823a(e);
                    cursor = cursor2;
                    csat = null;
                    AbstractC1504b.m40791c(cursor);
                    return csat;
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
        return csat;
    }

    /* renamed from: t */
    public void m40755t(long j) {
        try {
            try {
                m40789cs().beginTransaction();
                String l = Long.toString(j);
                m40789cs().delete("custsat", "conv_id=?", new String[]{l});
                ContentValues contentValues = new ContentValues();
                contentValues.put("has_pending_csat", (Integer) 0);
                m40789cs().update("conversations", contentValues, "_id=?", new String[]{l});
                m40789cs().setTransactionSuccessful();
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        } finally {
            m40789cs().endTransaction();
        }
    }
}
