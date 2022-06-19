package com.mopub.network;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/SingleImpression.class */
public class SingleImpression {

    /* renamed from: a */
    public final String f9254a;

    /* renamed from: b */
    public final ImpressionData f9255b;

    public SingleImpression(String str, ImpressionData impressionData) {
        this.f9254a = str;
        this.f9255b = impressionData;
    }

    public void sendImpression() {
        HashSet hashSet;
        String str = this.f9254a;
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "SingleImpression ad unit id may not be null.");
            return;
        }
        ImpressionData impressionData = this.f9255b;
        HashSet<ImpressionListener> hashSet2 = ImpressionsEmitter.f9233a;
        Preconditions.checkNotNull(str);
        synchronized (ImpressionsEmitter.class) {
            try {
                hashSet = new HashSet(ImpressionsEmitter.f9233a);
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((ImpressionListener) it.next()).onImpression(str, impressionData);
        }
    }
}
