package com.mopub.network;

import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/SingleImpression.class */
public class SingleImpression {

    /* renamed from: a */
    private final String f60337a;

    /* renamed from: b */
    private final ImpressionData f60338b;

    public SingleImpression(String str, ImpressionData impressionData) {
        this.f60337a = str;
        this.f60338b = impressionData;
    }

    public void sendImpression() {
        String str = this.f60337a;
        if (str != null) {
            ImpressionsEmitter.m6049a(str, this.f60338b);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "SingleImpression ad unit id may not be null.");
        }
    }
}
