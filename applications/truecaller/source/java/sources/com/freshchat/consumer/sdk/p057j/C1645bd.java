package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig;
import com.freshchat.consumer.sdk.p047b.C1466e;
/* renamed from: com.freshchat.consumer.sdk.j.bd */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bd.class */
public class C1645bd {
    /* renamed from: a */
    public static void m40118a(Context context, UnsupportedFragmentConfig unsupportedFragmentConfig) {
        if (context == null) {
            return;
        }
        try {
            C1466e.m40905i(context).m40968bh(new C1597ab().toJson(unsupportedFragmentConfig));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: bI */
    public static UnsupportedFragmentConfig m40117bI(Context context) {
        if (context == null) {
            return null;
        }
        try {
            String m40913gm = C1466e.m40905i(context).m40913gm();
            if (!C1626as.m40233a(m40913gm)) {
                return null;
            }
            return (UnsupportedFragmentConfig) new C1597ab().fromJson(m40913gm, (Class<Object>) UnsupportedFragmentConfig.class);
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }
}
