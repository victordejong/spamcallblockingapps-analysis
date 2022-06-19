package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/i.class */
public class C1497i extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("_id", "TEXT", false, 1));
        arrayList.add(new ColDef("frag_type", "INTEGER", false, 1));
        arrayList.add(new ColDef("content", "TEXT", false, 1));
        arrayList.add(new ColDef("content_type", "TEXT", false, 1));
        arrayList.add(new ColDef("position", "INTEGER", false, 1));
        arrayList.add(new ColDef("extras_json", "TEXT", false, 1));
        arrayList.add(new ColDef("uploaded", "INTEGER", true, 1, " DEFAULT 0"));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "fragments";
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1491c
    /* renamed from: cU */
    public String mo40797cU() {
        return " PRIMARY KEY (_id,position)";
    }
}
