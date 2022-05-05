package zendesk.support;

import android.content.Context;
import com.squareup.picasso.Picasso;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesPicassoFactory.class */
public final class SupportSdkModule_ProvidesPicassoFactory implements Factory<Picasso> {
    private final Provider<Context> contextProvider;
    private final Provider<ExecutorService> executorServiceProvider;
    private final SupportSdkModule module;
    private final Provider<OkHttpClient> okHttpClientProvider;

    public SupportSdkModule_ProvidesPicassoFactory(SupportSdkModule supportSdkModule, Provider<Context> provider, Provider<OkHttpClient> provider2, Provider<ExecutorService> provider3) {
        this.module = supportSdkModule;
        this.contextProvider = provider;
        this.okHttpClientProvider = provider2;
        this.executorServiceProvider = provider3;
    }

    public static Factory<Picasso> create(SupportSdkModule supportSdkModule, Provider<Context> provider, Provider<OkHttpClient> provider2, Provider<ExecutorService> provider3) {
        return new SupportSdkModule_ProvidesPicassoFactory(supportSdkModule, provider, provider2, provider3);
    }

    public static Picasso proxyProvidesPicasso(SupportSdkModule supportSdkModule, Context context, OkHttpClient okHttpClient, ExecutorService executorService) {
        return supportSdkModule.providesPicasso(context, okHttpClient, executorService);
    }

    @Override // javax.inject.Provider
    public Picasso get() {
        return (Picasso) Preconditions.checkNotNull(this.module.providesPicasso(this.contextProvider.get(), this.okHttpClientProvider.get(), this.executorServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
