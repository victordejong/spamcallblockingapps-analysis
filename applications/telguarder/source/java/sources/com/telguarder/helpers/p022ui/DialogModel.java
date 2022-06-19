package com.telguarder.helpers.p022ui;

import android.app.Activity;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.errorhandling.ErrorModel;
/* renamed from: com.telguarder.helpers.ui.DialogModel */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/DialogModel.class */
public class DialogModel {
    public Activity activity;
    public DialogEventListener dialogEventListener;
    public DialogType dialogType;
    public String message;
    public String negativeText;
    public String positiveText;
    public String title;

    /* renamed from: com.telguarder.helpers.ui.DialogModel$DialogType */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/DialogModel$DialogType.class */
    public enum DialogType {
        POSITIVE,
        NEGATIVE,
        POSITIVE_NEGATIVE
    }

    private DialogModel() {
    }

    public static DialogModel dialogModelOfErrorData(ErrorModel errorModel) {
        return dialogModelOfTitleAndMessage(errorModel.activity, errorModel.title, errorModel.message);
    }

    public static DialogModel dialogModelOfTitleAndMessage(Activity activity, String str, String str2) {
        DialogModel dialogModel = new DialogModel();
        dialogModel.activity = activity;
        dialogModel.title = str;
        dialogModel.message = str2;
        dialogModel.dialogType = DialogType.POSITIVE;
        dialogModel.positiveText = "OK";
        dialogModel.negativeText = AppUtil.getStringResource(activity, 17039360);
        return dialogModel;
    }
}
