package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.mopub.common.Constants;
/* renamed from: com.freshchat.consumer.sdk.j.cw */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cw.class */
public class C1699cw {

    /* renamed from: ir */
    private static final EnumC1700a f4491ir = EnumC1700a.ANDROID;

    /* renamed from: com.freshchat.consumer.sdk.j.cw$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cw$a.class */
    public enum EnumC1700a {
        ANDROID(Constants.ANDROID_PLATFORM),
        FLUTTER("flutter"),
        REACT_NATIVE("reactnative"),
        PHONEGAP("phonegap");
        
        public String name;

        EnumC1700a(String str) {
            this.name = str;
        }
    }

    /* renamed from: bu */
    public static String m39989bu(Context context) {
        try {
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        if (C1621ao.m40248u(context, "com.freshchat.consumer.sdk.flutter.FreshchatSdkPlugin") != null) {
            return EnumC1700a.FLUTTER.name;
        }
        if (C1621ao.m40248u(context, "com.freshchat.consumer.sdk.react.RNFreshchatSdk") != null) {
            return EnumC1700a.REACT_NATIVE.name;
        }
        if (C1621ao.m40248u(context, "com.freshdesk.freshchat.android.freshchatPlugin") != null) {
            return EnumC1700a.PHONEGAP.name;
        }
        return f4491ir.name;
    }
}
