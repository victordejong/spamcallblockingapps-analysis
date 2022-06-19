package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.p049c.C1513i;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.g.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/a.class */
public class C1540a extends AbstractC1543c<String> {

    /* renamed from: eL */
    private final C1513i f4164eL;

    /* renamed from: eM */
    private List<String> f4165eM;

    public C1540a(Context context, List<String> list) {
        super(context);
        this.f4164eL = new C1513i(context);
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f4165eM = list;
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c
    /* renamed from: dd */
    public List<String> mo40564dd() {
        return this.f4164eL.m40692h(this.f4165eM);
    }
}
