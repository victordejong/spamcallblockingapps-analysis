package com.telguarder.helpers.errorhandling;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import com.android.volley.NoConnectionError;
import com.android.volley.VolleyError;
import com.telguarder.C2083R;
import com.telguarder.helpers.backend.NetworkHelper;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.p022ui.DialogHelper;
import com.telguarder.helpers.p022ui.DialogModel;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/errorhandling/ErrorHelper.class */
public class ErrorHelper {
    public static ErrorModel getErrorDataFromException(Activity activity, Exception exc) {
        return !NetworkHelper.isNetworkAvailable(activity) ? ErrorModel.errorModelOfTitleAndMessage(activity, AppUtil.getStringResource(activity, C2083R.string.error_title_network_error), AppUtil.getStringResource(activity, C2083R.string.error_message_network_error)) : exc instanceof NoConnectionError ? ErrorModel.errorModelOfTitleAndMessage(activity, AppUtil.getStringResource(activity, C2083R.string.error_title_server_error), AppUtil.getStringResource(activity, C2083R.string.error_message_connection_error)) : ((exc instanceof VolleyError) || (exc instanceof ServerError)) ? ErrorModel.errorModelOfTitleAndMessage(activity, AppUtil.getStringResource(activity, C2083R.string.error_title_server_error), AppUtil.getStringResource(activity, C2083R.string.error_message_server_error)) : exc instanceof ActivityNotFoundException ? ErrorModel.errorModelOfTitleAndMessage(activity, AppUtil.getStringResource(activity, C2083R.string.error_title_application_not_found), AppUtil.getStringResource(activity, C2083R.string.error_message_application_not_found)) : ErrorModel.errorModelOfTitleAndMessage(activity, AppUtil.getStringResource(activity, C2083R.string.error_title_application_error), AppUtil.getStringResource(activity, C2083R.string.error_message_application_error));
    }

    public static void handleError(Activity activity, Exception exc) {
        showErrorDialog(getErrorDataFromException(activity, exc));
    }

    public static void showErrorDialog(ErrorModel errorModel) {
        DialogHelper.showAlertDialog(DialogModel.dialogModelOfErrorData(errorModel));
    }
}
