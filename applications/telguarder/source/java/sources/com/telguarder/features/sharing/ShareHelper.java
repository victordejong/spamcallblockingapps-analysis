package com.telguarder.features.sharing;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.text.TextUtils;
import com.telguarder.helpers.analytics.AnalyticsManager;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/sharing/ShareHelper.class */
public class ShareHelper {
    public static void addPostalAddressToIntentIfNeeded(Shareable shareable, Intent intent) {
        if (!TextUtils.isEmpty(shareable.getShareableAddress())) {
            intent.putExtra("postal", shareable.getShareableAddress());
            intent.putExtra("postal_type", 3);
        }
    }

    public static void addWebsiteToIntentIfNeeded(Intent intent, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ContentValues contentValues = new ContentValues();
        contentValues.put("mimetype", "vnd.android.cursor.item/website");
        contentValues.put("data1", str);
        contentValues.put("data3", "From telGuarder");
        contentValues.put("data2", (Integer) 4);
        arrayList.add(contentValues);
        intent.putExtra("data", arrayList);
    }

    public static void startContactsAppWithShareable(Activity activity, Shareable shareable) {
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setType("vnd.android.cursor.dir/raw_contact");
        intent.putExtra("name", shareable.getShareableName());
        intent.putExtra("email", shareable.getShareableEmailAddress());
        intent.putExtra("email_type", 2);
        intent.putExtra("phone", shareable.getShareablePhoneNumber());
        intent.putExtra("phone_type", 3);
        addPostalAddressToIntentIfNeeded(shareable, intent);
        addWebsiteToIntentIfNeeded(intent, shareable.getShareableWebsite());
        if (!TextUtils.isEmpty(shareable.getShareableCompanyName())) {
            intent.putExtra("company", shareable.getShareableCompanyName());
        }
        if (!TextUtils.isEmpty(shareable.getShareableRole())) {
            intent.putExtra("job_title", shareable.getShareableRole());
        }
        activity.startActivity(intent);
        AnalyticsManager.getInstance().sendAddToContactsAction(shareable.getShareablePhoneNumber());
    }
}
