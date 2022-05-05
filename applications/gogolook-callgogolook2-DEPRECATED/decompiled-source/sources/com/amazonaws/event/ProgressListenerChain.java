package com.amazonaws.event;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressListenerChain.class */
public class ProgressListenerChain implements ProgressListener {
    public static final Log log = LogFactory.getLog(ProgressListenerChain.class);
    public final List<ProgressListener> listeners;
    public final ProgressEventFilter progressEventFilter;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressListenerChain$ProgressEventFilter.class */
    public interface ProgressEventFilter {
        ProgressEvent filter(ProgressEvent progressEvent);
    }

    public ProgressListenerChain(ProgressEventFilter progressEventFilter, ProgressListener... progressListenerArr) {
        this.listeners = new CopyOnWriteArrayList();
        if (progressListenerArr != null) {
            for (ProgressListener progressListener : progressListenerArr) {
                addProgressListener(progressListener);
            }
            this.progressEventFilter = progressEventFilter;
            return;
        }
        throw new IllegalArgumentException("Progress Listeners cannot be null.");
    }

    public ProgressListenerChain(ProgressListener... progressListenerArr) {
        this(null, progressListenerArr);
    }

    public void addProgressListener(ProgressListener progressListener) {
        synchronized (this) {
            if (progressListener != null) {
                this.listeners.add(progressListener);
            }
        }
    }

    public List<ProgressListener> getListeners() {
        return this.listeners;
    }

    @Override // com.amazonaws.event.ProgressListener
    public void progressChanged(ProgressEvent progressEvent) {
        ProgressEventFilter progressEventFilter = this.progressEventFilter;
        ProgressEvent progressEvent2 = progressEvent;
        if (progressEventFilter != null) {
            ProgressEvent filter = progressEventFilter.filter(progressEvent);
            progressEvent2 = filter;
            if (filter == null) {
                return;
            }
        }
        for (ProgressListener progressListener : this.listeners) {
            try {
                progressListener.progressChanged(progressEvent2);
            } catch (RuntimeException e) {
                log.warn("Couldn't update progress listener", e);
            }
        }
    }
}
