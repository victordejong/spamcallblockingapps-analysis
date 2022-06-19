package com.telguarder.helpers.errorhandling;

import android.app.Activity;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/errorhandling/ErrorModel.class */
public class ErrorModel implements Serializable {
    public Activity activity;
    public String message;
    public String title;

    private ErrorModel() {
    }

    public static ErrorModel errorModelOfTitleAndMessage(Activity activity, String str, String str2) {
        ErrorModel errorModel = new ErrorModel();
        errorModel.activity = activity;
        errorModel.title = str;
        errorModel.message = str2;
        return errorModel;
    }
}
