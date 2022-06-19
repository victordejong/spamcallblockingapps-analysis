package com.amazonaws.services.p101s3.model.analytics;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.analytics.AnalyticsS3ExportFileFormat */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat.class */
public enum AnalyticsS3ExportFileFormat implements Serializable {
    CSV("CSV");
    
    private final String format;

    AnalyticsS3ExportFileFormat(String str) {
        this.format = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.format;
    }
}
