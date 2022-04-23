package com.privacystar.core.p011ui.widgets.dialog;

import android.content.Context;
import android.content.Intent;
/* renamed from: com.privacystar.core.ui.widgets.dialog.IntentButtonAction */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/IntentButtonAction.class */
public class IntentButtonAction implements ButtonAction {
    private Intent intent;

    public IntentButtonAction(Intent intent) {
        this.intent = intent;
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
    public void performAction(Context context) {
        if (context != null && this.intent != null) {
            context.startActivity(this.intent);
        }
    }
}
