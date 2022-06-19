package com.amazonaws.services.p101s3.model.analytics;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.analytics.StorageClassAnalysis */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/StorageClassAnalysis.class */
public class StorageClassAnalysis implements Serializable {
    private StorageClassAnalysisDataExport dataExport;

    public StorageClassAnalysisDataExport getDataExport() {
        return this.dataExport;
    }

    public void setDataExport(StorageClassAnalysisDataExport storageClassAnalysisDataExport) {
        this.dataExport = storageClassAnalysisDataExport;
    }

    public StorageClassAnalysis withDataExport(StorageClassAnalysisDataExport storageClassAnalysisDataExport) {
        setDataExport(storageClassAnalysisDataExport);
        return this;
    }
}
