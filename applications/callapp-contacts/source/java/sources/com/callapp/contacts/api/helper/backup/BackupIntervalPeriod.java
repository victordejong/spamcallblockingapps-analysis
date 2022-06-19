package com.callapp.contacts.api.helper.backup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupIntervalPeriod.class */
public enum BackupIntervalPeriod {
    TWO_DAYS(2),
    HALF_MONTH(14),
    MONTH(30);
    
    private final int interval;

    BackupIntervalPeriod(int i) {
        this.interval = i;
    }

    public final int getDaysInterval() {
        return this.interval;
    }
}
