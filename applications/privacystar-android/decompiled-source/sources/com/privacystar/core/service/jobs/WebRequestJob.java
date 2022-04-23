package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.Params;
import com.birbit.android.jobqueue.RetryConstraint;
import com.privacystar.core.service.network.RawRequest;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import okhttp3.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/WebRequestJob.class */
public class WebRequestJob extends Job {
    private String mBody;
    private Map<String, String> mHeaders;
    private String mMediaType;
    private String mUrl;
    private Date mRequestTime = new Date();
    private boolean simple = true;

    public WebRequestJob(String str) {
        super(new Params(500).requireNetwork().persist());
        this.mUrl = str;
    }

    public WebRequestJob(String str, String str2, String str3, Map<String, String> map) {
        super(new Params(500).requireNetwork().persist());
        this.mUrl = str;
        this.mMediaType = str2;
        this.mBody = str3;
        this.mHeaders = map;
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onAdded() {
        Timber.m37d("Processed request made at: %s to url: %s:", this.mRequestTime.toString(), this.mUrl);
        Timber.m37d("    Request{headers=%s, body=%s", Collections.singletonList(this.mHeaders).toString(), this.mBody);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.birbit.android.jobqueue.Job
    public void onCancel(int i, @Nullable Throwable th) {
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onRun() throws Throwable {
        Response makeRequest = (this.simple ? new RawRequest(this.mUrl) : new RawRequest(this.mUrl, this.mMediaType, this.mBody, this.mHeaders)).makeRequest();
        if (makeRequest != null) {
            Timber.m37d("Received response made at %s from %s:", this.mRequestTime.toString(), this.mUrl);
            Timber.m37d("Response{protocol=%s, code=%d, message=%s, headers=%s, body=%s}", makeRequest.protocol().toString(), Integer.valueOf(makeRequest.code()), makeRequest.message(), makeRequest.headers().toString(), makeRequest.body().string());
            return;
        }
        Timber.m37d("No response received, throwing and requeueing if needed.", new Object[0]);
    }

    @Override // com.birbit.android.jobqueue.Job
    protected RetryConstraint shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2) {
        Timber.m37d("On web request error no retry constraints are defined yet.", new Object[0]);
        return RetryConstraint.createExponentialBackoff(i, 1000L);
    }
}
