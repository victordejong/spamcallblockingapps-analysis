package org.spongycastle.tsp.cms;

import org.spongycastle.tsp.TimeStampToken;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/tsp/cms/ImprintDigestInvalidException.class */
public class ImprintDigestInvalidException extends Exception {
    private TimeStampToken token;

    public ImprintDigestInvalidException(String str, TimeStampToken timeStampToken) {
        super(str);
        this.token = timeStampToken;
    }

    public TimeStampToken getTimeStampToken() {
        return this.token;
    }
}
