package com.amazonaws.services.s3.internal;

import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectExpirationResult.class */
public interface ObjectExpirationResult {
    void setExpirationTime(Date date);

    void setExpirationTimeRuleId(String str);
}
