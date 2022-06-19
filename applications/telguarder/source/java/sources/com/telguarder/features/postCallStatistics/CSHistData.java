package com.telguarder.features.postCallStatistics;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSHistData.class */
public class CSHistData extends CSData {
    public long callDate;
    public int callDuration;
    public int callType;

    public CSHistData(long j, int i, int i2) {
        this.mItemType = 4;
        this.callDate = j;
        this.callType = i;
        this.callDuration = i2;
    }
}
