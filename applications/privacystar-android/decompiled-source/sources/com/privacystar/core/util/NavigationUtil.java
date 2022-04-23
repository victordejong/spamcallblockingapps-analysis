package com.privacystar.core.util;

import android.content.Context;
import android.content.Intent;
import android.support.p001v4.app.TaskStackBuilder;
import com.privacystar.core.application.Constants;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.p011ui.report.GenericReportActivity;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NavigationUtil.class */
public class NavigationUtil {
    public static Intent getReportIntent(Context context, Caller caller) {
        return nativeReportIntent(context, caller);
    }

    public static void launchReport(Context context, Caller caller, boolean z) {
        Intent reportIntent = getReportIntent(context, caller);
        if (z) {
            Timber.m37d("Launching Report with a clean task.", new Object[0]);
            TaskStackBuilder create = TaskStackBuilder.create(context);
            create.addParentStack(GenericReportActivity.class);
            create.addNextIntent(reportIntent);
            create.startActivities();
            return;
        }
        Timber.m37d("Launching Report off of current stack.", new Object[0]);
        context.startActivity(reportIntent);
    }

    private static Intent nativeReportIntent(Context context, Caller caller) {
        Timber.m37d("Creating Intent for Native Report", new Object[0]);
        Intent intent = new Intent(context, GenericReportActivity.class);
        CallDetails callDetails = new CallDetails(caller);
        callDetails.setToMostRecentEvent();
        intent.putExtra("name", caller.getDisplayName());
        intent.putExtra("number", caller.getNumber());
        intent.putExtra(Constants.EVENT_TYPE, callDetails.getMostRecentEvent().getType().getLabel());
        intent.putExtra(Constants.CALL_TIME, callDetails.getMostRecentEvent().getDate());
        return intent;
    }
}
