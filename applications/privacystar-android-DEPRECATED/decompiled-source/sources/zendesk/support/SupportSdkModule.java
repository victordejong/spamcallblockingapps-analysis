package zendesk.support;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.google.gson.Gson;
import com.jakewharton.disklrucache.DiskLruCache;
import com.jakewharton.picasso.OkHttp3Downloader;
import com.squareup.picasso.Picasso;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.inject.Named;
import javax.inject.Singleton;
import okhttp3.OkHttpClient;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.ApplicationConfiguration;
import zendesk.core.SessionStorage;
import zendesk.support.ZendeskDeepLinkParser;
import zendesk.support.requestlist.RequestInfoDataSource;
/* JADX INFO: Access modifiers changed from: package-private */
@Module
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule.class */
public class SupportSdkModule {
    private static final int MAX_DISK_CACHE_SIZE = 20971520;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(SupportSdkComponent.SUPPORT_MAIN_THREAD_EXECUTOR)
    public Executor mainThreadExecutor() {
        return new Executor() { // from class: zendesk.support.SupportSdkModule.1
            Handler handler = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public void execute(@NonNull Runnable runnable) {
                this.handler.post(runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public Gson provides() {
        return new Gson();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public List<ActionHandler> providesActionHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ViewArticleActionHandler());
        arrayList.add(new DeepLinkToRequestActionHandler());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public ZendeskDeepLinkHelper providesDeepLinkHelper(ActionHandlerRegistry actionHandlerRegistry, ZendeskDeepLinkParser zendeskDeepLinkParser) {
        return new ZendeskDeepLinkHelper(actionHandlerRegistry, zendeskDeepLinkParser);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public ZendeskDeepLinkParser providesDeepLinkParser(String str, List<ZendeskDeepLinkParser.Module> list) {
        return new ZendeskDeepLinkParser(str, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public List<ZendeskDeepLinkParser.Module> providesParserModule() {
        return Collections.singletonList(new ViewArticleDeepLinkParser());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public Picasso providesPicasso(Context context, OkHttpClient okHttpClient, ExecutorService executorService) {
        return new Picasso.Builder(context).executor(executorService).defaultBitmapConfig(Bitmap.Config.RGB_565).downloader(new OkHttp3Downloader(okHttpClient)).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public DiskLruCache providesRequestDiskLruCache(SessionStorage sessionStorage) {
        try {
            return DiskLruCache.open(new File(sessionStorage.getZendeskDataDir(), MessageCenterInteraction.KEY_PROFILE_REQUEST), 1, 1, 20971520L);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @SuppressLint({"RestrictedApi"})
    public String providesZendeskUrl(ApplicationConfiguration applicationConfiguration) {
        return applicationConfiguration.getZendeskUrl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public RequestInfoDataSource.LocalDataSource requestInfoDataSource(SupportUiStorage supportUiStorage, @Named("SUPPORT_MAIN_THREAD_EXECUTOR") Executor executor, ExecutorService executorService) {
        return new RequestInfoDataSource.LocalDataSource(new RequestInfoDataSource.Disk(executor, executorService, supportUiStorage, RequestInfoDataSource.LOCAL));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public SupportUiStorage supportUIStorage(DiskLruCache diskLruCache, Gson gson) {
        return new SupportUiStorage(diskLruCache, gson);
    }
}
