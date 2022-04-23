package com.mopub.network;

import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/SingleImpression.class */
public class SingleImpression {

    /* renamed from: a  reason: collision with root package name */
    private final String f34767a;

    /* renamed from: b  reason: collision with root package name */
    private final ImpressionData f34768b;

    public SingleImpression(String str, ImpressionData impressionData) {
        this.f34767a = str;
        this.f34768b = impressionData;
    }

    public void sendImpression() {
        String str = this.f34767a;
        if (str != null) {
            ImpressionsEmitter.a(str, this.f34768b);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "SingleImpression ad unit id may not be null.");
        }
    }
}
