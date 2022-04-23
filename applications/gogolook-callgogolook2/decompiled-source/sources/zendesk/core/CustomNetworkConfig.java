package zendesk.core;

import okhttp3.OkHttpClient;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CustomNetworkConfig.class */
public abstract class CustomNetworkConfig {
    public abstract void configureOkHttpClient(OkHttpClient.Builder builder);

    public void configureRetrofit(C15300s.C15302b bVar) {
    }
}
