package zendesk.core;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.zendesk.service.ZendeskDateTypeAdapter;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Named;
import javax.inject.Singleton;
import okhttp3.logging.HttpLoggingInterceptor;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.EnumC10091c;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule.class */
public class ZendeskApplicationModule {
    public ApplicationConfiguration applicationConfiguration;
    public Context context;

    public ZendeskApplicationModule(@NonNull Context context, @NonNull ApplicationConfiguration applicationConfiguration) {
        this.context = context.getApplicationContext();
        this.applicationConfiguration = applicationConfiguration;
    }

    @Singleton
    public static DeviceInfo provideDeviceInfo(@Named("application_context") Context context) {
        return new DeviceInfo(context);
    }

    @Singleton
    public static ScheduledExecutorService provideExecutor() {
        return Executors.newScheduledThreadPool(5, new ThreadFactory() { // from class: zendesk.core.ZendeskApplicationModule.1
            public final AtomicInteger atomicInteger = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull Runnable runnable) {
                Thread thread = new Thread(runnable, String.format(Locale.ENGLISH, "ZendeskThread-%d", Integer.valueOf(this.atomicInteger.getAndIncrement())));
                thread.setPriority(10);
                return thread;
            }
        });
    }

    @Singleton
    public static ExecutorService provideExecutorService(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService;
    }

    public static Gson provideGson() {
        C10099e eVar = new C10099e();
        eVar.m13387a(EnumC10091c.f22811d);
        eVar.m13383a(128, 8);
        eVar.m13384a(Date.class, new ZendeskDateTypeAdapter());
        return eVar.m13388a();
    }

    public static HttpLoggingInterceptor provideHttpLoggingInterceptor() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(C10845a.m10421b() ? HttpLoggingInterceptor.Level.BASIC : HttpLoggingInterceptor.Level.NONE);
        return httpLoggingInterceptor;
    }

    @Singleton
    public static ZendeskShadow provideZendesk(Storage storage, LegacyIdentityMigrator legacyIdentityMigrator, IdentityManager identityManager, BlipsCoreProvider blipsCoreProvider, PushRegistrationProvider pushRegistrationProvider, CoreModule coreModule, ProviderStore providerStore) {
        return new ZendeskShadow(storage, legacyIdentityMigrator, identityManager, blipsCoreProvider, pushRegistrationProvider, coreModule, providerStore);
    }

    @Singleton
    public ApplicationConfiguration provideApplicationConfiguration() {
        return this.applicationConfiguration;
    }

    @Singleton
    @Named("application_context")
    public Context provideApplicationContext() {
        return this.context;
    }

    @Named("base_64_serializer")
    public Serializer provideBase64Serializer(@Named("gson_serializer") Serializer serializer) {
        return new ZendeskBase64Serializer(serializer);
    }

    @Singleton
    public ZendeskLocaleConverter provideZendeskLocaleConverter() {
        return new ZendeskLocaleConverter();
    }
}
