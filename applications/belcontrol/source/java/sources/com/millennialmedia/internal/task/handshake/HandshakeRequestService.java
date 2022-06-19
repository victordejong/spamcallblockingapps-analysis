package com.millennialmedia.internal.task.handshake;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.AsyncTask;
import com.millennialmedia.MMSDK;
import com.millennialmedia.internal.Handshake;
@TargetApi(23)
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/handshake/HandshakeRequestService.class */
public class HandshakeRequestService extends JobService {
    private HandshakeRequester handshakeRequester;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester.class */
    public static class HandshakeRequester extends AsyncTask<Void, Void, Void> {
        private HandshakeRequester() {
        }

        public Void doInBackground(Void... voidArr) {
            Handshake.request(false);
            return null;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        if (MMSDK.isInitialized()) {
            HandshakeRequester handshakeRequester = new HandshakeRequester() { // from class: com.millennialmedia.internal.task.handshake.HandshakeRequestService.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    HandshakeRequestService.this = this;
                }

                public void onPostExecute(Void r5) {
                    HandshakeRequestService.this.jobFinished(jobParameters, false);
                }
            };
            this.handshakeRequester = handshakeRequester;
            handshakeRequester.execute(new Void[0]);
            return true;
        }
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        HandshakeRequester handshakeRequester = this.handshakeRequester;
        if (handshakeRequester != null) {
            handshakeRequester.cancel(true);
            return true;
        }
        return true;
    }
}
