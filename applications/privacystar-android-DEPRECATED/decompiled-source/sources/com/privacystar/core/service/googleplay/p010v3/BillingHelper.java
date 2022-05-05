package com.privacystar.core.service.googleplay.p010v3;

import android.content.Context;
import android.content.Intent;
import com.privacystar.core.service.googleplay.IABConstants;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import java.util.UUID;
import timber.log.Timber;
/* renamed from: com.privacystar.core.service.googleplay.v3.BillingHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/v3/BillingHelper.class */
public class BillingHelper {
    private static final Object LOCK = new Object();
    private static int intentsActive;

    private static void addIabActivityFlags(Intent intent) {
        intent.setFlags(268435456);
        intent.addFlags(134217728);
        intent.addFlags(8388608);
        intent.addFlags(65536);
        intent.addFlags(4);
    }

    private static void adjustActiveCount(int i) {
        synchronized (BillingHelper.class) {
            try {
                intentsActive += i;
                if (intentsActive < 0) {
                    intentsActive = 0;
                }
                Timber.m28v("Active Billing intents: [%d]", Integer.valueOf(intentsActive));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void attemptPurchase(Context context, String str, IABV3Helper.SkuType skuType) {
        synchronized (LOCK) {
            Timber.m28v("Making purchase of sku [%s] from [%s]", str, context.getClass().getSimpleName());
            Intent intent = new Intent(context, IABV3Activity.class);
            intent.putExtra(IABConstants.EXTRA_ACTION, IABConstants.ACTION_PURCHASE);
            intent.putExtra(IABConstants.EXTRA_SKU, str);
            intent.putExtra("payload", UUID.randomUUID().toString());
            intent.putExtra("type", skuType);
            addIabActivityFlags(intent);
            adjustActiveCount(1);
            context.startActivity(intent);
        }
    }

    public static void checkPurchases(Context context) {
        synchronized (LOCK) {
            Timber.m28v("Checking purchases from [%s]", context.getClass().getSimpleName());
            Intent intent = new Intent(context, IABV3Activity.class);
            intent.putExtra(IABConstants.EXTRA_ACTION, IABConstants.ACTION_CHECK);
            addIabActivityFlags(intent);
            adjustActiveCount(1);
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean consumeIntent() {
        boolean z;
        synchronized (LOCK) {
            z = intentsActive > 0;
            adjustActiveCount(-1);
        }
        return z;
    }
}
