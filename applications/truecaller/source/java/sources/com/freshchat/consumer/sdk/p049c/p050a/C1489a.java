package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/a.class */
public class C1489a extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("_id", "INTEGER", false, 1, " PRIMARY KEY "));
        arrayList.add(new ColDef("category_id", "INTEGER", false, 1, "REFERENCES categories"));
        arrayList.add(new ColDef("title", "TEXT", false, 1));
        arrayList.add(new ColDef("content", "TEXT", false, 1));
        arrayList.add(new ColDef("position", "INTEGER", false, 1));
        arrayList.add(new ColDef("updated_at", "INTEGER", false, 1));
        arrayList.add(new ColDef("article_alias", "TEXT", true, 3));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "articles";
    }
}
