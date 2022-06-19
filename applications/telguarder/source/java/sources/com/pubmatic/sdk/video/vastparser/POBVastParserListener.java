package com.pubmatic.sdk.video.vastparser;

import com.pubmatic.sdk.video.POBVastError;
import com.pubmatic.sdk.video.vastmodels.POBVast;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastparser/POBVastParserListener.class */
public interface POBVastParserListener {
    void onFailure(POBVast pOBVast, POBVastError pOBVastError);

    void onSuccess(POBVast pOBVast);
}
