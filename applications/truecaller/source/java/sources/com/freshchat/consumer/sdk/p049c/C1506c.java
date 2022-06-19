package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.FlowBusinessHourType;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.Tag;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p049c.p050a.C1493e;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p067d.C1874g;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/c.class */
public class C1506c extends AbstractC1504b {

    /* renamed from: ee */
    private static final String[] f4111ee = new C1493e().m40807cR();
    private final Context context;

    public C1506c(Context context) {
        super(context);
        this.context = context;
    }

    /* renamed from: b */
    private ContentValues m40775b(Channel channel) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(channel.getId()));
        contentValues.put(AnalyticsConstants.NAME, channel.getName());
        contentValues.put(RemoteMessageConst.Notification.ICON, channel.getIconUrl());
        contentValues.put("position", Integer.toString(channel.getPosition()));
        contentValues.put("hidden", Integer.valueOf(channel.isHidden() ? 1 : 0));
        contentValues.put("type", channel.getChannelType());
        contentValues.put("is_default", Integer.valueOf(channel.isDefault() ? 1 : 0));
        contentValues.put("restricted", Integer.valueOf(channel.isRestricted() ? 1 : 0));
        contentValues.put("updated_at", Long.valueOf(channel.getUpdatedAt()));
        contentValues.put("channel_alias", channel.getChannelAlias());
        contentValues.put("operating_hours_id", Long.valueOf(channel.getOperatingHoursId()));
        contentValues.put("flow_id", channel.getFlowId());
        contentValues.put("flow_version_id", channel.getFlowVersionId());
        contentValues.put("service_account_id", Long.valueOf(channel.getServiceAccountId()));
        contentValues.put("flow_business_hours_type", channel.getFlowBusinessHourType() != null ? channel.getFlowBusinessHourType().name() : null);
        contentValues.put("flow_messages_json", channel.getFlowMessagesJson());
        return contentValues;
    }

    /* renamed from: b */
    private Channel m40776b(Cursor cursor, Map<String, Integer> map) {
        Channel channel;
        if (AbstractC1504b.m40787d(cursor)) {
            Channel channel2 = new Channel().setId(cursor.getLong(map.get("_id").intValue())).setName(cursor.getString(map.get(AnalyticsConstants.NAME).intValue())).setIconUrl(cursor.getString(map.get(RemoteMessageConst.Notification.ICON).intValue())).setHidden(cursor.getInt(map.get("hidden").intValue()) == 1).setPosition(cursor.getInt(map.get("position").intValue())).setChannelType(cursor.getString(map.get("type").intValue())).setDefault(cursor.getInt(map.get("is_default").intValue()) == 1);
            boolean z = false;
            if (cursor.getInt(map.get("restricted").intValue()) == 1) {
                z = true;
            }
            Channel flowMessagesJson = channel2.setRestricted(z).setUpdatedAt(cursor.getLong(map.get("updated_at").intValue())).setChannelAlias(cursor.getString(map.get("channel_alias").intValue())).setOperatingHoursId(cursor.getLong(map.get("operating_hours_id").intValue())).setFlowId(cursor.getString(map.get("flow_id").intValue())).setFlowVersionId(cursor.getString(map.get("flow_version_id").intValue())).setServiceAccountId(cursor.getLong(map.get("service_account_id").intValue())).setFlowMessagesJson(cursor.getString(map.get("flow_messages_json").intValue()));
            flowMessagesJson.setFlowBusinessHourType(FlowBusinessHourType.get(cursor.getString(map.get("flow_business_hours_type").intValue())));
            channel = flowMessagesJson;
        } else {
            channel = null;
        }
        return channel;
    }

    /* renamed from: a */
    public List<Channel> m40777a(List<String> list, boolean z) {
        Channel m40773cw;
        Message message;
        List<Channel> m40772d = m40772d(list);
        C1511g c1511g = new C1511g(this.context);
        C1874g c1874g = new C1874g(new C1508e(this.context), c1511g);
        for (Channel channel : m40772d) {
            Message message2 = null;
            try {
                if (channel.getFlowBusinessHourType() != null) {
                    message2 = null;
                    if (c1874g.m39374a(this.context, channel)) {
                        ArrayList arrayList = (ArrayList) C1597ab.m40337in().fromJson(channel.getFlowMessagesJson(), new C1521q(this).getType());
                        message2 = null;
                        if (C1716k.m39902a(arrayList)) {
                            message2 = (Message) arrayList.get(C1716k.m39900b(arrayList) - 1);
                        }
                    }
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                message2 = null;
            }
            Message m40713l = c1511g.m40713l(channel.getId());
            if (message2 == null) {
                message = m40713l;
            } else {
                message = message2;
                if (m40713l.getCreatedMillis() != 0) {
                    message2.setCreatedMillis(m40713l.getCreatedMillis() + 1);
                    message = message2;
                }
            }
            if (message != null) {
                channel.setLatestOrWelcomeMessage(message);
            }
        }
        if (z && C1716k.isEmpty(m40772d) && (m40773cw = m40773cw()) != null) {
            m40772d.add(m40773cw);
        }
        return m40772d;
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("_id", Integer.valueOf(cursor.getColumnIndex("_id")));
            hashMap.put("flow_messages_json", C22128a.m8544z1(hashMap, "flow_business_hours_type", C22128a.m8544z1(hashMap, "service_account_id", C22128a.m8544z1(hashMap, "flow_version_id", C22128a.m8544z1(hashMap, "flow_id", C22128a.m8544z1(hashMap, "operating_hours_id", C22128a.m8544z1(hashMap, "channel_alias", C22128a.m8544z1(hashMap, "updated_at", C22128a.m8544z1(hashMap, "restricted", C22128a.m8544z1(hashMap, "is_default", C22128a.m8544z1(hashMap, "type", C22128a.m8544z1(hashMap, "position", C22128a.m8544z1(hashMap, "hidden", C22128a.m8544z1(hashMap, RemoteMessageConst.Notification.ICON, C22128a.m8544z1(hashMap, AnalyticsConstants.NAME, Integer.valueOf(cursor.getColumnIndex(AnalyticsConstants.NAME)), cursor, RemoteMessageConst.Notification.ICON), cursor, "hidden"), cursor, "position"), cursor, "type"), cursor, "is_default"), cursor, "restricted"), cursor, "updated_at"), cursor, "channel_alias"), cursor, "operating_hours_id"), cursor, "flow_id"), cursor, "flow_version_id"), cursor, "service_account_id"), cursor, "flow_business_hours_type"), cursor, "flow_messages_json"));
        }
        return hashMap;
    }

    /* renamed from: a */
    public void m40778a(List<Channel> list, List<Tag> list2) {
        SQLiteDatabase m40789cs = m40789cs();
        m40789cs.beginTransaction();
        try {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("hidden", (Integer) 1);
                m40789cs.update("channels", contentValues, null, null);
                ArrayList arrayList = new ArrayList();
                for (Channel channel : list) {
                    if (channel.getLatestOrWelcomeMessage() != null) {
                        arrayList.add(channel.getLatestOrWelcomeMessage());
                    }
                    m40789cs.replace("channels", null, m40775b(channel));
                }
                if (C1716k.m39902a(arrayList)) {
                    C1511g c1511g = new C1511g(this.context);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        c1511g.m40733a(m40789cs(), (Message) it.next(), false);
                    }
                }
                if (C1716k.m39902a(list2)) {
                    new C1514j(this.context).m40676f(list2);
                }
                m40789cs.setTransactionSuccessful();
            } catch (Exception e) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.CHANNEL_UPDATE_FAILED.toString());
            }
        } finally {
            m40789cs.endTransaction();
        }
    }

    /* renamed from: cv */
    public List<Channel> m40774cv() {
        return m40777a((List<String>) null, true);
    }

    /* renamed from: cw */
    public Channel m40773cw() {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        Channel channel;
        Exception e;
        Cursor cursor3;
        try {
            cursor3 = m40789cs().query("channels", f4111ee, "is_default = '1'", null, null, null, "CAST(_id as int)");
            channel = null;
            cursor2 = cursor3;
            cursor = cursor3;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor3)) {
                        channel = m40776b(cursor3, mo40665a(cursor3));
                        cursor2 = cursor3;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor = cursor3;
                    C1723q.m39823a(e);
                    cursor2 = cursor3;
                    channel = null;
                    AbstractC1504b.m40791c(cursor2);
                    return channel;
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
        return channel;
    }

    /* renamed from: d */
    public List<Channel> m40772d(List<String> list) {
        Cursor cursor;
        Cursor cursor2;
        ArrayList arrayList = new ArrayList();
        Cursor cursor3 = null;
        Cursor cursor4 = null;
        try {
            try {
                if (C1716k.m39902a(list)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(" SELECT DISTINCT channels.*  FROM channels, (SELECT *  FROM tags WHERE ");
                    sb.append(C1514j.m40678a(C1716k.m39900b(list), Tag.TaggedType.CHANNEL));
                    sb.append(")  AS matching_tags  WHERE ( matching_tags.");
                    sb.append("tagged_id");
                    sb.append(" = ");
                    sb.append("_id");
                    sb.append(") AND ");
                    sb.append("hidden");
                    sb.append("= 0  ORDER BY ");
                    sb.append("position");
                    cursor2 = m40789cs().rawQuery(sb.toString(), (String[]) list.toArray(new String[0]));
                } else {
                    cursor2 = m40789cs().query("channels", f4111ee, "hidden = 0 AND restricted = 0", null, null, null, "position");
                }
                Cursor cursor5 = cursor2;
                cursor = cursor2;
                if (AbstractC1504b.m40792b(cursor2)) {
                    Cursor cursor6 = cursor2;
                    Map<String, Integer> mo40665a = mo40665a(cursor2);
                    do {
                        cursor3 = cursor2;
                        cursor4 = cursor2;
                        Channel m40776b = m40776b(cursor2, mo40665a);
                        if (m40776b != null) {
                            arrayList.add(m40776b);
                        }
                        Cursor cursor7 = cursor2;
                    } while (cursor2.moveToNext());
                    cursor = cursor2;
                }
            } catch (Exception e) {
                cursor3 = cursor4;
                C1723q.m39823a(e);
                cursor = cursor4;
            }
            return arrayList;
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* renamed from: e */
    public Channel m40771e(long j) {
        Throwable th;
        Cursor cursor;
        Channel channel;
        Exception e;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            cursor2 = m40789cs().query("channels", f4111ee, "_id=?", new String[]{Long.toString(j)}, null, null, null);
            channel = null;
            cursor = cursor2;
            cursor3 = cursor2;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor2)) {
                        channel = m40776b(cursor2, mo40665a(cursor2));
                        cursor = cursor2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor3 = cursor2;
                    C1723q.m39823a(e);
                    cursor = cursor2;
                    channel = null;
                    AbstractC1504b.m40791c(cursor);
                    return channel;
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
        return channel;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d A[EDGE_INSN: B:61:0x012d->B:52:0x012d ?: BREAK  , SYNTHETIC] */
    /* renamed from: gn */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.freshchat.consumer.sdk.beans.Channel> m40770gn() {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p049c.C1506c.m40770gn():java.util.List");
    }
}
