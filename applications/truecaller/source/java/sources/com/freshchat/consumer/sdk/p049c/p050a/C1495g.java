package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/g.class */
public class C1495g extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("conv_id", "INTEGER", false, 1, " PRIMARY KEY "));
        arrayList.add(new ColDef("csat_id", "INTEGER", false, 1));
        arrayList.add(new ColDef("question", "TEXT", false, 1));
        arrayList.add(new ColDef("comments_allowed", "INTEGER", false, 1));
        arrayList.add(new ColDef("mandatory", "INTEGER", false, 1));
        arrayList.add(new ColDef("_status", "INTEGER", false, 1));
        arrayList.add(new ColDef("initiated_time", "INTEGER", false, 2, " DEFAULT 0"));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "custsat";
    }
}
