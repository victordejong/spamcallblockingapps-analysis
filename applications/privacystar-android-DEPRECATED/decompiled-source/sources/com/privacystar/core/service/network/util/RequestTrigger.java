package com.privacystar.core.service.network.util;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.activity_log.PSLogFilters;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.providers.LocalLogProvider;
import com.privacystar.core.data.providers.LogProvider;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.BulkLookupHandler;
import com.privacystar.core.util.PSBackend;
import com.privacystar.core.util.PermissionUtils;
import io.realm.Realm;
import java.util.ArrayList;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/util/RequestTrigger.class */
public class RequestTrigger {
    private RequestTrigger() {
        throw new IllegalAccessError("Instantiation of a Utility class.");
    }

    public static void createBulkLookup(Context context) {
        if (PSBackend.getUserToken() != null && !PreferenceUtil.getBulkLookupPerformed() && PermissionUtils.hasCallLogPermission(context)) {
            createBulkLookupImpl(context);
        }
    }

    private static void createBulkLookupImpl(Context context) {
        ArrayList arrayList = new ArrayList();
        LogProvider logProvider = LocalLogProvider.getLogProvider(PSLogFilters.ALL_ACTIVITY);
        if (!logProvider.finishedLoading()) {
            Timber.m37d("Bulk lookup was triggered but activity log wasn't done loading yet.", new Object[0]);
            return;
        }
        Timber.m37d("Bulk lookup: bulk lookup impl", new Object[0]);
        int integer = context.getResources().getInteger(C1566R.integer.bulk_lookup_size);
        int i = 0;
        while (true) {
            Caller caller = null;
            if (i >= logProvider.getContentSize() || arrayList.size() >= integer) {
                break;
            }
            CallDetails contentAt = logProvider.getContentAt(i);
            if (contentAt != null) {
                caller = contentAt.getCaller();
            }
            if (caller != null && caller.getNumber().length() == 10 && !arrayList.contains(caller.getNumber()) && !caller.getIsInContactsSynchronous()) {
                arrayList.add(caller.getNumber());
            }
            i++;
        }
        Timber.m37d("Gathered %d unique numbers for bulk lookup, sending to network handler.", Integer.valueOf(arrayList.size()));
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            BulkLookupHandler.getInstance().lookupCallers(defaultInstance, arrayList);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }
}
