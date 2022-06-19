package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.m */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/m.class */
public class C1501m extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("meta_key", "TEXT", false, 1, " UNIQUE "));
        arrayList.add(new ColDef("meta_value", "TEXT", false, 1));
        arrayList.add(new ColDef("is_uploaded", "INTEGER", false, 1, " DEFAULT 0"));
        arrayList.add(new ColDef("meta_type", "INTEGER", false, 1, " DEFAULT 2"));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "user_meta";
    }
}
