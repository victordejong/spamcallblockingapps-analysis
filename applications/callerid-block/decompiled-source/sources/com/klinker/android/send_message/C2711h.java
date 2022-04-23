package com.klinker.android.send_message;

import android.telephony.SmsMessage;
/* renamed from: com.klinker.android.send_message.h */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/h.class */
public class C2711h {

    /* renamed from: a */
    public static String f11311a = "αβγδεζηθικλμνξοπρσςτυφχψωάέήίόύώϊϋΐΰΑΒΕΖΗΙΚΜΝΟΡΤΥΧΆΈΉΊΌΏΪΫŰűŐőąćęłńśźżĄĆĘŁŃŚŹŻÀÂÃÈÊÌÎÒÕÙÛâãêîõúûçěščřžďťňáíéóýůĚŠČŘŽĎŤŇÁÉÍÓÝÚŮŕĺľôŔĹĽÔÏïëË";

    /* renamed from: b */
    public static String f11312b = "ABΓΔEZHΘIKΛMNΞOΠPΣΣTYΦXΨΩAEHIOYΩIYIYABEZHIKMNOPTYXAEHIOΩIYÜüÖöacelnszzACELNSZZAAAEEIIOOUUaaeiouucescrzdtnaieoyuESCRZDTNAEIOYUUrlloRLLOIIee";

    /* renamed from: a */
    public static String m2056a(String str) {
        int i = 0;
        String str2 = str;
        if (SmsMessage.calculateLength(str, false)[0] != 1) {
            while (true) {
                str2 = str;
                if (i >= f11311a.length()) {
                    break;
                }
                int i2 = i + 1;
                str = str.replaceAll(f11311a.substring(i, i2), f11312b.substring(i, i2));
                i = i2;
            }
        }
        return str2;
    }
}
