package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/k.class */
public class C1499k extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("alias", "TEXT", true, 1, " PRIMARY KEY "));
        arrayList.add(new ColDef("first_name", "TEXT", true, 1));
        arrayList.add(new ColDef("last_name", "TEXT", true, 1));
        arrayList.add(new ColDef("profile_pic_url", "TEXT", true, 1));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "participants";
    }
}
