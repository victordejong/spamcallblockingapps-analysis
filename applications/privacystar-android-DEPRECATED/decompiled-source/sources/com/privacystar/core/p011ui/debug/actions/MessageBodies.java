package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.p011ui.debug.DebugAction;
import io.realm.Realm;
import java.util.Iterator;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.actions.MessageBodies */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/MessageBodies.class */
public class MessageBodies extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Message Bodies";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            Iterator it = MessageRealm.getMessages(defaultInstance).iterator();
            while (it.hasNext()) {
                Timber.m31i("%s", ((Message) it.next()).getMessageBody());
            }
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
