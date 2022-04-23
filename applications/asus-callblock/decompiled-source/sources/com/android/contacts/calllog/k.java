package com.android.contacts.calllog;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.android.contacts.asuscallerid.ActivateActivaty;
import com.asus.a.c;
import com.asus.contacts.yellowpage.promotion.a;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/k.class */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static final String f729a = k.class.getSimpleName();

    public static int a(Context context, int i) {
        int i2;
        if (i == 0) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            long j = defaultSharedPreferences.getLong("KEY_CALLOG_PROMOTION_CALL_GUARD_LAST_ACT_TIME", 0L);
            long currentTimeMillis = System.currentTimeMillis();
            int i3 = a.a() ? 60000 : 604800000;
            int i4 = defaultSharedPreferences.getInt("KEY_CALLOG_PROMOTION_CALL_GUARD_TIMES", 0);
            if (!c.l(context) && currentTimeMillis - j > i3 && i4 < 3) {
                i2 = 1;
                Log.d(f729a, "getPromotion position = , resultId = 1");
                return i2;
            }
        }
        i2 = -1;
        return i2;
    }

    public static String b(Context context, int i) {
        String string = new String(BuildConfig.FLAVOR);
        switch (i) {
            case 1:
                string = context.getString(2131755310);
                break;
            default:
                Log.e(f729a, "getPromotionStr promotionId not supported");
                break;
        }
        return string;
    }

    public static void c(Context context, int i) {
        Log.d(f729a, "onClickTextView promotionId = " + i);
        switch (i) {
            case 1:
                context.startActivity(new Intent(context, ActivateActivaty.class));
                return;
            default:
                Log.e(f729a, "onClickTextView promotionId not supported");
                return;
        }
    }

    public static void d(Context context, int i) {
        Log.d(f729a, "onClickCloseButton promotionId = " + i);
        switch (i) {
            case 1:
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                defaultSharedPreferences.edit().putLong("KEY_CALLOG_PROMOTION_CALL_GUARD_LAST_ACT_TIME", System.currentTimeMillis()).apply();
                defaultSharedPreferences.edit().putInt("KEY_CALLOG_PROMOTION_CALL_GUARD_TIMES", defaultSharedPreferences.getInt("KEY_CALLOG_PROMOTION_CALL_GUARD_TIMES", 0) + 1).apply();
                return;
            default:
                Log.e(f729a, "onClickCloseButton promotionId not supported");
                return;
        }
    }
}
