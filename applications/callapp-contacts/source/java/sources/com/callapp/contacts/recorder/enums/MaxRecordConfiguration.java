package com.callapp.contacts.recorder.enums;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/MaxRecordConfiguration.class */
public enum MaxRecordConfiguration {
    CONF_50(50),
    CONF_100(100),
    CONF_200(200),
    CONF_1000(1000);
    
    private int value;

    MaxRecordConfiguration(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
