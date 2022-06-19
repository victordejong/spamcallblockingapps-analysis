package com.amazonaws.services.p101s3.model.analytics;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport.class */
public class StorageClassAnalysisDataExport implements Serializable {
    private AnalyticsExportDestination destination;
    private String outputSchemaVersion;

    public AnalyticsExportDestination getDestination() {
        return this.destination;
    }

    public String getOutputSchemaVersion() {
        return this.outputSchemaVersion;
    }

    public void setDestination(AnalyticsExportDestination analyticsExportDestination) {
        this.destination = analyticsExportDestination;
    }

    public void setOutputSchemaVersion(StorageClassAnalysisSchemaVersion storageClassAnalysisSchemaVersion) {
        if (storageClassAnalysisSchemaVersion == null) {
            setOutputSchemaVersion((String) null);
        } else {
            setOutputSchemaVersion(storageClassAnalysisSchemaVersion.toString());
        }
    }

    public void setOutputSchemaVersion(String str) {
        this.outputSchemaVersion = str;
    }

    public StorageClassAnalysisDataExport withDestination(AnalyticsExportDestination analyticsExportDestination) {
        setDestination(analyticsExportDestination);
        return this;
    }

    public StorageClassAnalysisDataExport withOutputSchemaVersion(StorageClassAnalysisSchemaVersion storageClassAnalysisSchemaVersion) {
        setOutputSchemaVersion(storageClassAnalysisSchemaVersion);
        return this;
    }

    public StorageClassAnalysisDataExport withOutputSchemaVersion(String str) {
        setOutputSchemaVersion(str);
        return this;
    }
}
