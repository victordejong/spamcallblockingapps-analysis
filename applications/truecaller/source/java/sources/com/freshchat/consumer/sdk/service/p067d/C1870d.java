package com.freshchat.consumer.sdk.service.p067d;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.FreshchatService;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.d.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/d.class */
public class C1870d {
    /* renamed from: b */
    public static void m39385b(Context context, final AbstractC1906j abstractC1906j) {
        FreshchatService.m39533a(context.getApplicationContext(), abstractC1906j, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.service.d.d.1
            @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
            /* renamed from: a */
            public void mo39382a(AbstractC1907k abstractC1907k) {
                if (abstractC1907k == null || !abstractC1907k.isSuccess()) {
                    StringBuilder m8728C = C22128a.m8728C("Unhandled failed response for ");
                    m8728C.append(abstractC1906j);
                    C1613ai.m40284d("Response", m8728C.toString());
                }
            }
        });
    }

    /* renamed from: bl */
    public static void m39384bl(Context context) {
        FreshchatService.m39531bk(context);
    }

    /* renamed from: c */
    public static void m39383c(Context context, AbstractC1906j abstractC1906j, AbstractC1804a abstractC1804a) {
        FreshchatService.m39533a(context.getApplicationContext(), abstractC1906j, abstractC1804a);
    }
}
