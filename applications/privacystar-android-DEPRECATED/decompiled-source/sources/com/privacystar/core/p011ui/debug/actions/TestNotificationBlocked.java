package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.util.NotificationUtil;
import io.realm.Realm;
/* renamed from: com.privacystar.core.ui.debug.actions.TestNotificationBlocked */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestNotificationBlocked.class */
public class TestNotificationBlocked extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Blocked call notification";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            NotificationUtil.showCallNotification(context, "5015551234", PhoneEventType.CALL, NotificationUtil.NotificationType.BLOCKED);
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
