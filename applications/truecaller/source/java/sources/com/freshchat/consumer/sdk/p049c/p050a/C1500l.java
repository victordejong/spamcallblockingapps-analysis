package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/l.class */
public class C1500l extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef(AnalyticsConstants.NAME, "TEXT", false, 1));
        arrayList.add(new ColDef("tagged_id", "TEXT", false, 1));
        arrayList.add(new ColDef("tagged_type", "TEXT", true, 1));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "tags";
    }
}
