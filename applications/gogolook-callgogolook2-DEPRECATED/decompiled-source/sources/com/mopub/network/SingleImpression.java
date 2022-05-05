package com.mopub.network;

import androidx.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/SingleImpression.class */
public class SingleImpression {
    @Nullable

    /* renamed from: a */
    public final String f9461a;
    @Nullable

    /* renamed from: b */
    public final ImpressionData f9462b;

    public SingleImpression(@Nullable String str, @Nullable ImpressionData impressionData) {
        this.f9461a = str;
        this.f9462b = impressionData;
    }

    public void sendImpression() {
        String str = this.f9461a;
        if (str != null) {
            ImpressionsEmitter.m29995a(str, this.f9462b);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "SingleImpression ad unit id may not be null.");
        }
    }
}
