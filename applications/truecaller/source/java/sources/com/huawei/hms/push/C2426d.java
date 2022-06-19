package com.huawei.hms.push;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.init.AutoInitHelper;
import com.huawei.hms.aaid.utils.BaseUtils;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.push.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/d.class */
public class C2426d {
    /* renamed from: a */
    public static ErrorEnum m37353a(Context context) {
        if (TextUtils.isEmpty(BaseUtils.getLocalToken(context, null))) {
            if (!AutoInitHelper.isAutoInitEnabled(context)) {
                HMSLog.m37195e("TokenUtil", "Token not exist");
                return ErrorEnum.ERROR_NO_TOKEN;
            }
            HMSLog.m37195e("TokenUtil", "Token not exist, try auto init");
            AutoInitHelper.doAutoInit(context);
            return ErrorEnum.ERROR_AUTO_INITIALIZING;
        }
        return ErrorEnum.SUCCESS;
    }
}
