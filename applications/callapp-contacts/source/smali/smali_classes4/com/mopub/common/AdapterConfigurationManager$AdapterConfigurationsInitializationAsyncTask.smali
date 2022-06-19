.class Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/AdapterConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterConfigurationsInitializationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/mopub/common/AdapterConfiguration;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final adapterConfigurationClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterConfigurationsInitializationListener:Lcom/mopub/common/AdapterConfigurationsInitializationListener;

.field private final moPubRequestOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final networkMediationConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lcom/mopub/common/AdapterConfigurationsInitializationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mopub/common/AdapterConfigurationsInitializationListener;",
            ")V"
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 197
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 198
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 201
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->weakContext:Ljava/lang/ref/WeakReference;

    .line 204
    iput-object p2, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->adapterConfigurationClasses:Ljava/util/Set;

    .line 205
    iput-object p3, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->networkMediationConfigurations:Ljava/util/Map;

    .line 206
    iput-object p4, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->moPubRequestOptions:Ljava/util/Map;

    .line 207
    iput-object p5, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->adapterConfigurationsInitializationListener:Lcom/mopub/common/AdapterConfigurationsInitializationListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/AdapterConfiguration;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->adapterConfigurationClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    :try_start_0
    const-class v5, Lcom/mopub/common/AdapterConfiguration;

    invoke-static {v1, v5}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/common/AdapterConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    iget-object v6, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    if-nez v6, :cond_0

    .line 226
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Context null. Unable to initialize adapter configuration "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v7, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->networkMediationConfigurations:Ljava/util/Map;

    .line 234
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 237
    new-instance v8, Ljava/util/HashMap;

    .line 238
    invoke-interface {v5, v6}, Lcom/mopub/common/AdapterConfiguration;->getCachedInitializationParameters(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz v7, :cond_1

    .line 240
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 241
    invoke-interface {v5, v6, v8}, Lcom/mopub/common/AdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 245
    :cond_1
    iget-object v7, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->moPubRequestOptions:Ljava/util/Map;

    .line 246
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 248
    invoke-interface {v5, v7}, Lcom/mopub/common/AdapterConfiguration;->setMoPubRequestOptions(Ljava/util/Map;)V

    .line 251
    :cond_2
    sget-object v7, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v9, v3, [Ljava/lang/Object;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v1, v11, v4

    .line 253
    invoke-interface {v5}, Lcom/mopub/common/AdapterConfiguration;->getAdapterVersion()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    .line 254
    invoke-interface {v5}, Lcom/mopub/common/AdapterConfiguration;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    const/4 v2, 0x3

    aput-object v8, v11, v2

    const-string v2, "Initializing %s version %s with network sdk version %s and with params %s"

    .line 251
    invoke-static {v10, v2, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-static {v7, v9}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 256
    iget-object v2, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->adapterConfigurationsInitializationListener:Lcom/mopub/common/AdapterConfigurationsInitializationListener;

    invoke-interface {v5, v6, v8, v2}, Lcom/mopub/common/AdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V

    .line 259
    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v5

    .line 219
    sget-object v6, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Unable to find class "

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    aput-object v5, v2, v3

    invoke-static {v6, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 182
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/AdapterConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask;->adapterConfigurationsInitializationListener:Lcom/mopub/common/AdapterConfigurationsInitializationListener;

    invoke-interface {v0, p1}, Lcom/mopub/common/AdapterConfigurationsInitializationListener;->onAdapterConfigurationsInitialized(Ljava/util/Map;)V

    return-void
.end method
