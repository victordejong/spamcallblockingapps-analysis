package zendesk.core;

import okhttp3.OkHttpClient;
/* loaded from: classes3-dex2jar.jar:zendesk/core/RestServiceProvider.class */
public interface RestServiceProvider {
    <E> E createRestService(Class<E> cls, String str, String str2);

    <E> E createRestService(Class<E> cls, String str, String str2, CustomNetworkConfig customNetworkConfig);

    OkHttpClient getMediaOkHttpClient();
}
