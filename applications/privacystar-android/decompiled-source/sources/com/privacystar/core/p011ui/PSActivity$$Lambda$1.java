package com.privacystar.core.p011ui;

import android.content.Context;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.privacystar.core.ui.PSActivity$$Lambda$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/PSActivity$$Lambda$1.class */
public final /* synthetic */ class PSActivity$$Lambda$1 implements ButtonAction {
    static final ButtonAction $instance = new PSActivity$$Lambda$1();

    private PSActivity$$Lambda$1() {
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
    public void performAction(Context context) {
        PSActivity.lambda$showPsServicesDisabledDialog$1$PSActivity(context);
    }
}
