package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/facebook/ProgressNoopOutputStream.class */
public class ProgressNoopOutputStream extends OutputStream implements RequestOutputStream {
    private int batchMax;
    private final Handler callbackHandler;
    private GraphRequest currentRequest;
    private RequestProgress currentRequestProgress;
    private final Map<GraphRequest, RequestProgress> progressMap = new HashMap();

    public ProgressNoopOutputStream(Handler handler) {
        this.callbackHandler = handler;
    }

    public void addProgress(long j) {
        if (this.currentRequestProgress == null) {
            RequestProgress requestProgress = new RequestProgress(this.callbackHandler, this.currentRequest);
            this.currentRequestProgress = requestProgress;
            this.progressMap.put(this.currentRequest, requestProgress);
        }
        this.currentRequestProgress.addToMax(j);
        this.batchMax = (int) (this.batchMax + j);
    }

    public int getMaxProgress() {
        return this.batchMax;
    }

    public Map<GraphRequest, RequestProgress> getProgressMap() {
        return this.progressMap;
    }

    @Override // com.facebook.RequestOutputStream
    public void setCurrentRequest(GraphRequest graphRequest) {
        this.currentRequest = graphRequest;
        this.currentRequestProgress = graphRequest != null ? this.progressMap.get(graphRequest) : null;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        addProgress(1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        addProgress(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        addProgress(i2);
    }
}
