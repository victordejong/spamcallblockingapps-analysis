package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.p011ui.debug.DebugAction;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.actions.BadTimberFormatting */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/BadTimberFormatting.class */
public class BadTimberFormatting extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Bad Timber String";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Timber.m37d("This will be null: [%s]", null);
    }
}
