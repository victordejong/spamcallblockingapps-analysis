package p000;

import com.mopub.common.AdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;
/* renamed from: wf1 */
/* loaded from: classes3-dex2jar.jar:wf1.class */
public interface wf1 extends OnNetworkInitializationFinishedListener {
    void onAdapterConfigurationsInitialized(Map<String, AdapterConfiguration> map);

    @Override // com.mopub.common.OnNetworkInitializationFinishedListener
    /* synthetic */ void onNetworkInitializationFinished(Class<? extends AdapterConfiguration> cls, MoPubErrorCode moPubErrorCode);
}
