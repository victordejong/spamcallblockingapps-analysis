package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import java.text.NumberFormat;
/* renamed from: com.freshchat.consumer.sdk.j.at */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/at.class */
public class C1627at {
    /* renamed from: n */
    public static String m40220n(Context context, int i) {
        String str;
        try {
            str = NumberFormat.getInstance(C1612ah.m40290bb(context)).format(i);
        } catch (Exception e) {
            C1723q.m39823a(e);
            str = null;
        }
        String str2 = str;
        if (str == null) {
            str2 = String.valueOf(i);
        }
        return str2;
    }
}
