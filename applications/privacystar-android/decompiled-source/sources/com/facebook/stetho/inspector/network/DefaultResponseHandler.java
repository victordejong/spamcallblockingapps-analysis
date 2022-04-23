package com.facebook.stetho.inspector.network;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/DefaultResponseHandler.class */
public class DefaultResponseHandler implements ResponseHandler {
    private int mBytesRead = 0;
    private int mDecodedBytesRead = -1;
    private final NetworkEventReporter mEventReporter;
    private final String mRequestId;

    public DefaultResponseHandler(NetworkEventReporter networkEventReporter, String str) {
        this.mEventReporter = networkEventReporter;
        this.mRequestId = str;
    }

    private void reportDataReceived() {
        this.mEventReporter.dataReceived(this.mRequestId, this.mBytesRead, this.mDecodedBytesRead >= 0 ? this.mDecodedBytesRead : this.mBytesRead);
    }

    @Override // com.facebook.stetho.inspector.network.ResponseHandler
    public void onEOF() {
        reportDataReceived();
        this.mEventReporter.responseReadFinished(this.mRequestId);
    }

    @Override // com.facebook.stetho.inspector.network.ResponseHandler
    public void onError(IOException iOException) {
        reportDataReceived();
        this.mEventReporter.responseReadFailed(this.mRequestId, iOException.toString());
    }

    @Override // com.facebook.stetho.inspector.network.ResponseHandler
    public void onRead(int i) {
        this.mBytesRead += i;
    }

    @Override // com.facebook.stetho.inspector.network.ResponseHandler
    public void onReadDecoded(int i) {
        if (this.mDecodedBytesRead == -1) {
            this.mDecodedBytesRead = 0;
        }
        this.mDecodedBytesRead += i;
    }
}
