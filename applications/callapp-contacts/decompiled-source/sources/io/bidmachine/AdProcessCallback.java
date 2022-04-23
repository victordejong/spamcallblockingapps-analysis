package io.bidmachine;

import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AdProcessCallback.class */
public interface AdProcessCallback {
    void log(String str);

    void processClicked();

    void processClosed();

    void processDestroy();

    void processExpired();

    void processFinished();

    void processImpression();

    void processLoadFail(BMError bMError);

    void processLoadSuccess();

    void processShowFail(BMError bMError);

    void processShown();
}
