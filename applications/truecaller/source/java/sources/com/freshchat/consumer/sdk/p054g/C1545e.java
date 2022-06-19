package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.p049c.C1513i;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.g.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/e.class */
public class C1545e extends AbstractC1543c<String> {

    /* renamed from: eL */
    private final C1513i f4175eL;

    /* renamed from: eM */
    private List<String> f4176eM;

    public C1545e(Context context, List<String> list) {
        super(context);
        this.f4175eL = new C1513i(context);
        this.f4176eM = list;
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c
    /* renamed from: dd */
    public List<String> mo40564dd() {
        return this.f4175eL.m40685k(this.f4176eM);
    }
}
