package com.apptentive.android.sdk.module.rating.view;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/rating/view/ApptentiveBaseDialog.class */
public abstract class ApptentiveBaseDialog extends Dialog {
    public ApptentiveBaseDialog(Context context, int i) {
        super(context);
        requestWindowFeature(1);
        setContentView(i);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.gravity = 17;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawable(new ColorDrawable(2130706432));
    }
}
