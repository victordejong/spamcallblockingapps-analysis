package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/f.class */
public class C1494f extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("_id", "TEXT", false, 1, " PRIMARY KEY "));
        arrayList.add(new ColDef("channel_id", "TEXT", false, 1));
        arrayList.add(new ColDef("has_pending_csat", "INTEGER", false, 1, " DEFAULT 0"));
        arrayList.add(new ColDef(UpdateKey.STATUS, "INTEGER", false, 8, " DEFAULT 0"));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "conversations";
    }
}
