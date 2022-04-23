package com.privacystar.core.service.network.handler;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.JobManager;
import com.birbit.android.jobqueue.TagConstraint;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.jobs.PSServiceJob;
import com.privacystar.core.service.network.ConnectivityService;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.model.component.JobParams;
import io.reactivex.subjects.PublishSubject;
import java.io.IOException;
import java.io.Serializable;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/PSServiceHandler.class */
public abstract class PSServiceHandler<T extends Serializable, U extends Serializable> implements Serializable {
    static final boolean DEFAULT_BLOCKED_BY_EULA = true;
    static final long DEFAULT_DELAY_IN_MS = 0;
    static final String DEFAULT_GROUP_ID = null;
    static final Integer DEFAULT_RETRIES = null;
    static final String DEFAULT_SINGLE_ID = null;
    private static final String[] DEFAULT_TAGS = new String[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$enqueueRequest$0$PSServiceHandler(PSServiceJob pSServiceJob, JobManager jobManager, CancelResult cancelResult) {
        int size = (cancelResult == null || cancelResult.getCancelledJobs() == null) ? 0 : cancelResult.getCancelledJobs().size();
        int size2 = (cancelResult == null || cancelResult.getFailedToCancel() == null) ? 0 : cancelResult.getFailedToCancel().size();
        Timber.m37d("[%d] job%s cancelled.", Integer.valueOf(size), size == 1 ? " was" : "s were");
        Timber.m37d("[%d] job%s failed to cancel.", Integer.valueOf(size2), size2 == 1 ? " was" : "s were");
        Timber.m28v("Adding Job in background: %s", pSServiceJob);
        jobManager.addJobInBackground(pSServiceJob);
    }

    private void publishResponse(PublishSubject<Response<U>> publishSubject, Response<U> response) {
        if (publishSubject == null) {
            Timber.m28v("Response PubSub is null, no response will be published.", new Object[0]);
        } else if (publishSubject.hasComplete()) {
            Timber.m28v("Response PubSub has already completed.", new Object[0]);
        } else {
            Timber.m28v("Publishing response:\n%s", response);
            publishSubject.onNext(response);
        }
    }

    protected abstract Call<U> backendRequest(T t);

    protected long delayInMs() {
        return 0L;
    }

    public void enqueueRequest(PSServiceHandler<T, U> pSServiceHandler, @NonNull T t) {
        enqueueRequest(pSServiceHandler, t, null);
    }

    public void enqueueRequest(PSServiceHandler<T, U> pSServiceHandler, @NonNull T t, @Nullable PublishSubject<? extends Response<? extends Serializable>> publishSubject) {
        final JobManager jobManager = PSApplication.getInstance().getJobManager();
        final PSServiceJob pSServiceJob = new PSServiceJob(pSServiceHandler, t, new JobParams.Builder().shouldPersist(shouldPersist()).groupId(getGroupId()).singleId(getSingleId()).tags(getTags()).delayInMs(delayInMs()).retries(getRetries()).hasEulaBlockedData(eulaBlockedData()).build(), publishSubject);
        if (getTags() == null || getTags().length <= 0) {
            Timber.m28v("Adding Job in background: %s", pSServiceJob);
            jobManager.addJobInBackground(pSServiceJob);
            return;
        }
        jobManager.cancelJobsInBackground(new CancelResult.AsyncCancelCallback(pSServiceJob, jobManager) { // from class: com.privacystar.core.service.network.handler.PSServiceHandler$$Lambda$0
            private final PSServiceJob arg$1;
            private final JobManager arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = pSServiceJob;
                this.arg$2 = jobManager;
            }

            @Override // com.birbit.android.jobqueue.CancelResult.AsyncCancelCallback
            public void onCancelled(CancelResult cancelResult) {
                PSServiceHandler.lambda$enqueueRequest$0$PSServiceHandler(this.arg$1, this.arg$2, cancelResult);
            }
        }, TagConstraint.ANY, getTags());
    }

    protected boolean eulaBlockedData() {
        return true;
    }

    public abstract PSBackendEndpoint.PSEndpointInterface getEndpointInterface();

    protected String getGroupId() {
        return DEFAULT_GROUP_ID;
    }

    protected Integer getRetries() {
        return DEFAULT_RETRIES;
    }

    protected String getSingleId() {
        return DEFAULT_SINGLE_ID;
    }

    protected String[] getTags() {
        return DEFAULT_TAGS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleSuccessful(Response<U> response) {
        ConnectivityService.getInstance().setResponse(getEndpointInterface(), Long.valueOf(response.raw().receivedResponseAtMillis()));
    }

    protected abstract void handleUnsuccessful(T t, Response<U> response) throws Throwable;

    protected abstract void processResponse(U u, T t) throws Throwable;

    public void sendRequest(T t) throws Throwable {
        sendRequest(t, null);
    }

    public void sendRequest(T t, PublishSubject<Response<U>> publishSubject) throws Throwable {
        Call<U> backendRequest = backendRequest(t);
        Timber.m37d("Executing call %s:\n%s", t.getClass().getSimpleName(), t.toString());
        try {
            Response<U> execute = backendRequest.execute();
            publishResponse(publishSubject, execute);
            int code = execute.code();
            if (execute.isSuccessful() && execute.body() != null) {
                U body = execute.body();
                Timber.m37d("Received %s:\n%s", body.getClass().getSimpleName(), body.toString());
                handleSuccessful(execute);
                processResponse(body, t);
            } else if (execute.isSuccessful()) {
                Timber.m37d("Received response with status code: %d", Integer.valueOf(code));
                handleSuccessful(execute);
            } else {
                Timber.m37d("Received %s with status code: %d", execute.body() == null ? "response" : execute.body().getClass().getSimpleName(), Integer.valueOf(code));
                handleUnsuccessful(t, execute);
            }
        } catch (IOException e) {
            Timber.m23w(e, "problem occurred talking to server.", new Object[0]);
        } catch (RuntimeException e2) {
            Timber.m23w(e2, "unexpected error occurred creating the request or decoding the response.", new Object[0]);
        }
    }

    protected abstract boolean shouldPersist();

    public String toString() {
        return getClass().getSimpleName();
    }
}
