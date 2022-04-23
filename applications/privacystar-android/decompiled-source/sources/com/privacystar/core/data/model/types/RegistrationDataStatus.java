package com.privacystar.core.data.model.types;

import com.privacystar.core.data.model.BlockingOptionFields;
import com.privacystar.core.util.Text;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/types/RegistrationDataStatus.class */
public enum RegistrationDataStatus {
    ACTIVE(BlockingOptionFields.ACTIVE),
    PENDING("pending"),
    INACTIVE("inactive");
    
    private String status;

    RegistrationDataStatus(String str) {
        this.status = str;
    }

    public static RegistrationDataStatus getFromValue(String str) {
        RegistrationDataStatus[] values;
        if (Text.isBlank(str)) {
            return null;
        }
        for (RegistrationDataStatus registrationDataStatus : values()) {
            if (Text.equalsIgnoreCase(registrationDataStatus.getStatus(), str)) {
                return registrationDataStatus;
            }
        }
        return null;
    }

    public String getStatus() {
        return this.status;
    }
}
