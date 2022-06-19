package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/e.class */
public class C1493e extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("_id", "INTEGER", false, 1, " PRIMARY KEY "));
        arrayList.add(new ColDef(AnalyticsConstants.NAME, "TEXT", false, 1));
        arrayList.add(new ColDef("position", "TEXT", false, 1));
        arrayList.add(new ColDef(RemoteMessageConst.Notification.ICON, "TEXT", false, 1));
        arrayList.add(new ColDef("hidden", "INTEGER", true, 1));
        arrayList.add(new ColDef("type", "TEXT", false, 1));
        arrayList.add(new ColDef("is_default", "INTEGER", true, 1, " DEFAULT 0"));
        arrayList.add(new ColDef("restricted", "INTEGER", true, 1, " DEFAULT 0"));
        arrayList.add(new ColDef("updated_at", "INTEGER", true, 1, " DEFAULT 0"));
        arrayList.add(new ColDef("channel_alias", "TEXT", true, 3));
        arrayList.add(new ColDef("operating_hours_id", "INTEGER", true, 8));
        arrayList.add(new ColDef("flow_id", "TEXT", true, 8));
        arrayList.add(new ColDef("flow_version_id", "TEXT", true, 8));
        arrayList.add(new ColDef("service_account_id", "INTEGER", true, 8));
        arrayList.add(new ColDef("flow_business_hours_type", "TEXT", true, 8));
        arrayList.add(new ColDef("flow_messages_json", "TEXT", true, 8));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "channels";
    }
}
