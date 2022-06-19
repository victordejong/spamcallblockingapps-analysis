package com.amazonaws.services.p101s3.model;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
/* renamed from: com.amazonaws.services.s3.model.LegacyS3ProgressListener */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/LegacyS3ProgressListener.class */
public class LegacyS3ProgressListener implements ProgressListener {
    private final ProgressListener listener;

    public LegacyS3ProgressListener(ProgressListener progressListener) {
        this.listener = progressListener;
    }

    private ProgressEvent transform(ProgressEvent progressEvent) {
        return new ProgressEvent(progressEvent.getEventCode(), progressEvent.getBytesTransferred());
    }

    @Override // com.amazonaws.event.ProgressListener
    public void progressChanged(ProgressEvent progressEvent) {
        ProgressListener progressListener = this.listener;
        if (progressListener == null) {
            return;
        }
        progressListener.progressChanged(transform(progressEvent));
    }

    public ProgressListener unwrap() {
        return this.listener;
    }
}
