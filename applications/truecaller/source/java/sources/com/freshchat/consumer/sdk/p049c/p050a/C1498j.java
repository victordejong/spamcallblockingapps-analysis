package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import com.freshchat.consumer.sdk.beans.Message;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.a.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/j.class */
public class C1498j extends AbstractC1491c {
    public static final String TAG = "com.freshchat.consumer.sdk.c.a.j";

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cO */
    public ColDef[] mo40796cO() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ColDef("_id", "TEXT", false, 1, " PRIMARY KEY "));
        arrayList.add(new ColDef("channel_id", "TEXT", true, 1));
        arrayList.add(new ColDef("conv_id", "TEXT", true, 1));
        arrayList.add(new ColDef("marketing_id", "INTEGER", true, 1));
        arrayList.add(new ColDef("user_id", "TEXT", true, 1));
        arrayList.add(new ColDef("user_type", "INTEGER", false, 1, " DEFAULT 0"));
        arrayList.add(new ColDef("read", "INTEGER", true, 1));
        arrayList.add(new ColDef("created_at", "INTEGER", true, 1));
        arrayList.add(new ColDef("uploaded", "INTEGER", true, 1, " DEFAULT 0"));
        arrayList.add(new ColDef("display", "INTEGER", true, 1, " DEFAULT 0"));
        arrayList.add(new ColDef("reply_fragments", "TEXT", true, 4));
        arrayList.add(new ColDef("extras_json", "TEXT", true, 5));
        StringBuilder m8728C = C22128a.m8728C(" DEFAULT ");
        m8728C.append(Message.MessageType.MESSAGE_TYPE_NORMAL.getIntValue());
        arrayList.add(new ColDef("message_type", "INTEGER", true, 6, m8728C.toString()));
        arrayList.add(new ColDef("internal_meta", "TEXT", true, 6));
        arrayList.add(new ColDef("responded", "INTEGER", true, 6, " DEFAULT 0"));
        arrayList.add(new ColDef("should_translate", "INTEGER", true, 7, " DEFAULT 0"));
        arrayList.add(new ColDef("flow_step_id", "TEXT", true, 8));
        arrayList.add(new ColDef("user_name", "TEXT", true, 8));
        arrayList.add(new ColDef("user_profile_pic", "TEXT", true, 8));
        arrayList.add(new ColDef("should_delete", "INTEGER", true, 8, " DEFAULT 0"));
        return (ColDef[]) arrayList.toArray(new ColDef[0]);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cP */
    public String mo40795cP() {
        return "message";
    }
}
