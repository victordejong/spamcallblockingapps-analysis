package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.c.a.o */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/o.class */
public class C1503o extends AbstractC1491c {
    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("_id", "INTEGER", false, 8, " PRIMARY KEY "));
        arrayList.add(new ColDef(AnalyticsConstants.NAME, "TEXT", false, 8));
        arrayList.add(new ColDef(AnalyticsConstants.TIMEZONE, "TEXT", false, 8));
        arrayList.add(new ColDef("days_bh", "TEXT", false, 8));
        arrayList.add(new ColDef("days_working", "TEXT", false, 8));
        arrayList.add(new ColDef("enabled", "INTEGER", true, 8, " DEFAULT 0"));
        arrayList.add(new ColDef("default_bh", "INTEGER", true, 8, " DEFAULT 0"));
        arrayList.add(new ColDef("bh_type", "TEXT", true, 8));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "business_hours";
    }
}
