package com.amazonaws.services.s3.model.analytics;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion.class */
public enum StorageClassAnalysisSchemaVersion implements Serializable {
    V_1("V_1");
    
    private final String version;

    StorageClassAnalysisSchemaVersion(String str) {
        this.version = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.version;
    }
}
