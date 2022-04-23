package zendesk.core;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Response;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskSettingsInterceptor.class */
public class ZendeskSettingsInterceptor implements Interceptor {
    public final SdkSettingsProviderInternal provider;
    public SettingsStorage settingsStorage;

    public ZendeskSettingsInterceptor(SdkSettingsProviderInternal sdkSettingsProviderInternal, SettingsStorage settingsStorage) {
        this.provider = sdkSettingsProviderInternal;
        this.settingsStorage = settingsStorage;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        if (!this.settingsStorage.areSettingsUpToDate(1L, TimeUnit.HOURS)) {
            C10845a.m10422a("SettingsInterceptor", "Requesting SDK settings.", new Object[0]);
            if (this.provider.getCoreSettings() == null) {
                C10845a.m10422a("SettingsInterceptor", "Retrieved settings are null. Returning 404.", new Object[0]);
                Response.Builder builder = new Response.Builder();
                builder.protocol(Protocol.HTTP_2);
                builder.request(chain.request());
                builder.message(chain.request().method());
                builder.code(404);
                return builder.build();
            }
        }
        C10845a.m10422a("SettingsInterceptor", "Proceeding with chain.", new Object[0]);
        return chain.proceed(chain.request());
    }
}
