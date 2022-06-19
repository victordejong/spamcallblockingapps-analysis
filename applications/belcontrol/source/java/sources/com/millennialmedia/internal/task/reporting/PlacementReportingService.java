package com.millennialmedia.internal.task.reporting;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.AsyncTask;
import com.millennialmedia.MMSDK;
import com.millennialmedia.internal.AdPlacementReporter;
@TargetApi(23)
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/reporting/PlacementReportingService.class */
public class PlacementReportingService extends JobService {
    private ReportUploader reportUploader;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/reporting/PlacementReportingService$ReportUploader.class */
    public static class ReportUploader extends AsyncTask<Void, Void, Void> {
        private ReportUploader() {
        }

        public Void doInBackground(Void... voidArr) {
            AdPlacementReporter.uploadNow();
            return null;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        if (MMSDK.isInitialized()) {
            ReportUploader reportUploader = new ReportUploader() { // from class: com.millennialmedia.internal.task.reporting.PlacementReportingService.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    PlacementReportingService.this = this;
                }

                public void onPostExecute(Void r5) {
                    PlacementReportingService.this.jobFinished(jobParameters, false);
                    PlacementReportingService.this.reportUploader = null;
                }
            };
            this.reportUploader = reportUploader;
            reportUploader.execute(new Void[0]);
            return true;
        }
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        ReportUploader reportUploader = this.reportUploader;
        if (reportUploader != null) {
            reportUploader.cancel(true);
            return true;
        }
        return true;
    }
}
