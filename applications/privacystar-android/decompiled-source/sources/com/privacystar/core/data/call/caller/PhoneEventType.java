package com.privacystar.core.data.call.caller;

import android.support.p001v4.app.NotificationCompat;
import com.privacystar.core.util.Text;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/PhoneEventType.class */
public enum PhoneEventType {
    CALL(NotificationCompat.CATEGORY_CALL),
    SMS("sms"),
    DND("dnd"),
    NO_TYPE("unknown");
    
    private final String fieldDescription;

    PhoneEventType(String str) {
        this.fieldDescription = str;
    }

    public static PhoneEventType valueFrom(String str) {
        PhoneEventType[] values;
        for (PhoneEventType phoneEventType : values()) {
            if (Text.equalsIgnoreCase(phoneEventType.fieldDescription, str)) {
                return phoneEventType;
            }
        }
        return NO_TYPE;
    }
}
