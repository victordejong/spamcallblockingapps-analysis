package com.freshchat.consumer.sdk.service.p067d;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1626as;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.freshchat.consumer.sdk.service.d.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/b.class */
public class C1867b {

    /* renamed from: fN */
    private static String f4702fN = UUID.randomUUID().toString();
    private Context context;

    /* renamed from: fO */
    private EnumC1868a f4703fO;

    /* renamed from: fP */
    private Map<String, String> f4704fP;

    /* renamed from: com.freshchat.consumer.sdk.service.d.b$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/b$a.class */
    public enum EnumC1868a {
        faqs_launch,
        faq_open_category,
        faq_open_article,
        faq_search,
        faq_upvote_article,
        faq_downvote_article,
        channels_launch,
        conversation_send_message,
        conversation_launch,
        faq_search_launch,
        conversation_deeplink_launch
    }

    public C1867b(Context context, EnumC1868a enumC1868a) {
        this(context, enumC1868a, "SDK");
    }

    public C1867b(Context context, EnumC1868a enumC1868a, String str) {
        this.f4704fP = new HashMap();
        this.context = context;
        this.f4703fO = enumC1868a;
        m39394g("type", str);
    }

    /* renamed from: dB */
    public void m39395dB() {
    }

    /* renamed from: g */
    public C1867b m39394g(String str, String str2) {
        if (!C1626as.isEmpty(str) && !C1626as.isEmpty(str2)) {
            this.f4704fP.put(str, str2);
        }
        return this;
    }
}
