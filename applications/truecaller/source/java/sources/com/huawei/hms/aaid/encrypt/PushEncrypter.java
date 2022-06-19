package com.huawei.hms.aaid.encrypt;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.secure.android.common.encrypt.aes.AesCbc;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/aaid/encrypt/PushEncrypter.class */
public class PushEncrypter {
    public static String decrypter(Context context, String str) {
        return TextUtils.isEmpty(str) ? "" : AesCbc.decrypt(str, AbstractC2405c.m37441b(context));
    }

    public static String encrypter(Context context, String str) {
        return TextUtils.isEmpty(str) ? "" : AesCbc.encrypt(str, AbstractC2405c.m37441b(context));
    }

    public static String encrypterOld(Context context, String str) {
        return TextUtils.isEmpty(str) ? "" : AesCbc.encrypt(str, AbstractC2405c.m37450a(context));
    }
}
