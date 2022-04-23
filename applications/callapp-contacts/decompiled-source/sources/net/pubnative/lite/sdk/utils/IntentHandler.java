package net.pubnative.lite.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ListIterator;
import net.pubnative.lite.sdk.HyBid;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/IntentHandler.class */
public class IntentHandler {
    private final Context context;

    public IntentHandler(Context context) {
        this.context = context;
    }

    public boolean canHandleIntent(Intent intent) {
        return !this.context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public boolean handleBrowserLink(Uri uri) {
        Intent intent;
        if (!HyBid.getBrowserManager().containsPriorities()) {
            return handleDeepLink(uri);
        }
        Intent intent2 = null;
        ListIterator<String> listIterator = HyBid.getBrowserManager().getPackagePriorities().listIterator();
        do {
            String next = listIterator.next();
            intent = intent2;
            if (!TextUtils.isEmpty(next.trim())) {
                Intent intent3 = new Intent("android.intent.action.VIEW");
                intent3.setData(uri);
                intent3.addFlags(268435456);
                intent3.setPackage(next);
                intent = intent2;
                if (canHandleIntent(intent3)) {
                    intent = intent3;
                }
            }
            if (!listIterator.hasNext()) {
                break;
            }
            intent2 = intent;
        } while (intent == null);
        if (intent == null) {
            return handleDeepLink(uri);
        }
        this.context.startActivity(intent);
        return true;
    }

    public boolean handleDeepLink(Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(268435456);
        if (!canHandleIntent(intent)) {
            return false;
        }
        this.context.startActivity(intent);
        return true;
    }
}
