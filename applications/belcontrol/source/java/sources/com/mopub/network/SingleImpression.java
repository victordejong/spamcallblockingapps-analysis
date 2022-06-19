package com.mopub.network;

import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/SingleImpression.class */
public class SingleImpression {

    /* renamed from: a */
    public final String f5435a;

    /* renamed from: b */
    public final ImpressionData f5436b;

    public SingleImpression(String str, ImpressionData impressionData) {
        this.f5435a = str;
        this.f5436b = impressionData;
    }

    public void sendImpression() {
        String str = this.f5435a;
        if (str != null) {
            ImpressionsEmitter.m3211b(str, this.f5436b);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "SingleImpression ad unit id may not be null.");
        }
    }
}
