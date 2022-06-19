package com.telguarder.helpers.p022ui;

import android.content.DialogInterface;
import androidx.appcompat.app.AlertDialog;
import com.telguarder.helpers.p022ui.DialogModel;
/* renamed from: com.telguarder.helpers.ui.DialogHelper */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/DialogHelper.class */
public class DialogHelper {
    public static void showAlertDialog(final DialogModel dialogModel) {
        if (dialogModel == null || dialogModel.activity == null || dialogModel.activity.isFinishing()) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(dialogModel.activity);
        builder.setTitle(dialogModel.title);
        builder.setMessage(dialogModel.message);
        if (dialogModel.dialogType == DialogModel.DialogType.POSITIVE || dialogModel.dialogType == DialogModel.DialogType.POSITIVE_NEGATIVE) {
            builder.setPositiveButton(dialogModel.positiveText, new DialogInterface.OnClickListener() { // from class: com.telguarder.helpers.ui.DialogHelper.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (dialogModel.dialogEventListener != null) {
                        dialogModel.dialogEventListener.onPositiveSelected();
                    }
                    dialogInterface.dismiss();
                }
            });
        }
        if (dialogModel.dialogType == DialogModel.DialogType.NEGATIVE || dialogModel.dialogType == DialogModel.DialogType.POSITIVE_NEGATIVE) {
            builder.setNegativeButton(dialogModel.negativeText, new DialogInterface.OnClickListener() { // from class: com.telguarder.helpers.ui.DialogHelper.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (dialogModel.dialogEventListener != null) {
                        dialogModel.dialogEventListener.onNegativeSelected();
                    }
                    dialogInterface.dismiss();
                }
            });
        }
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.telguarder.helpers.ui.DialogHelper.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (dialogModel.dialogEventListener != null) {
                    dialogModel.dialogEventListener.onNegativeSelected();
                }
            }
        });
        builder.create().show();
    }
}
