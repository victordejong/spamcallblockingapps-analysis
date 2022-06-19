package com.huawei.hms.push;

import android.app.Notification;
import android.text.TextUtils;
/* renamed from: com.huawei.hms.push.m */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/m.class */
public class C2435m {
    /* renamed from: a */
    public static EnumC2436n m37290a(C2433k c2433k) {
        EnumC2436n enumC2436n = EnumC2436n.STYLE_DEFAULT;
        EnumC2436n enumC2436n2 = enumC2436n;
        if (c2433k.m37299w() >= 0) {
            int m37299w = c2433k.m37299w();
            EnumC2436n.values();
            enumC2436n2 = enumC2436n;
            if (m37299w < 4) {
                enumC2436n2 = EnumC2436n.values()[c2433k.m37299w()];
            }
        }
        return enumC2436n2;
    }

    /* renamed from: a */
    public static void m37291a(Notification.Builder builder, String str, C2433k c2433k) {
        Notification.BigTextStyle bigTextStyle = new Notification.BigTextStyle();
        if (!TextUtils.isEmpty(c2433k.m37318h())) {
            bigTextStyle.setBigContentTitle(c2433k.m37318h());
        }
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            bigTextStyle.bigText(str);
        }
        builder.setStyle(bigTextStyle);
    }
}
