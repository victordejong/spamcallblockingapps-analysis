package com.amazonaws.services.s3.internal;

import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectRestoreResult.class */
public interface ObjectRestoreResult {
    void setOngoingRestore(boolean z);

    void setRestoreExpirationTime(Date date);
}
