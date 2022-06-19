package com.huawei.hms.push;

import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import com.mopub.common.Constants;
import com.tenor.android.core.constant.StringConstant;
/* renamed from: com.huawei.hms.push.l */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/l.class */
public class C2434l {
    /* renamed from: a */
    public static int m37295a(Context context) {
        int i = context.getApplicationInfo().icon;
        int i2 = i;
        if (i == 0) {
            int identifier = context.getResources().getIdentifier("btn_star_big_on", "drawable", Constants.ANDROID_PLATFORM);
            HMSLog.m37198d("PushSelfShowLog", "icon is btn_star_big_on ");
            i2 = identifier;
            if (identifier == 0) {
                i2 = 17301651;
                HMSLog.m37198d("PushSelfShowLog", "icon is sym_def_app_icon ");
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static Bitmap m37293a(Context context, C2433k c2433k) {
        Bitmap bitmap = null;
        if (context != null) {
            if (c2433k == null) {
                bitmap = null;
            } else {
                try {
                    if (HwBuildEx.VERSION.EMUI_SDK_INT >= 11) {
                        HMSLog.m37193i("PushSelfShowLog", "huawei phone, and emui5.0, need not show large icon.");
                        return null;
                    }
                    bitmap = null;
                    if (!"com.huawei.android.pushagent".equals(c2433k.m37312k())) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("get left bitmap from ");
                        sb.append(c2433k.m37312k());
                        HMSLog.m37193i("PushSelfShowLog", sb.toString());
                        bitmap = ((BitmapDrawable) context.getPackageManager().getApplicationIcon(c2433k.m37312k())).getBitmap();
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    HMSLog.m37195e("PushSelfShowLog", "build left icon occur NameNotFoundException.");
                    bitmap = null;
                } catch (Exception e2) {
                    HMSLog.m37195e("PushSelfShowLog", "build left icon occur Exception.");
                    bitmap = null;
                }
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    public static void m37294a(Context context, Notification.Builder builder, C2433k c2433k) {
        if (context == null || builder == null || c2433k == null) {
            HMSLog.m37195e("PushSelfShowLog", "msg is null");
        } else {
            builder.setSmallIcon(m37292b(context, c2433k));
        }
    }

    /* renamed from: b */
    public static int m37292b(Context context, C2433k c2433k) {
        if (context == null || c2433k == null) {
            HMSLog.m37193i("PushSelfShowLog", "enter getSmallIconId, context or msg is null");
            return 0;
        }
        int i = 0;
        if (!TextUtils.isEmpty(c2433k.m37309m())) {
            String[] split = c2433k.m37309m().split(StringConstant.SLASH);
            i = 0;
            if (split.length == 3) {
                i = C2440r.m37251a(context, split[1], split[2]);
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = C2440r.m37252a(context, "com.huawei.messaging.default_notification_icon");
        }
        if (i2 == 0) {
            i2 = m37295a(context);
        }
        return i2;
    }
}
