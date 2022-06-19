.class public Lcom/callapp/contacts/manager/Singletons$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/Singletons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;

.field final synthetic b:Lcom/callapp/contacts/manager/Singletons;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/Singletons;Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    iput-object p2, p0, Lcom/callapp/contacts/manager/Singletons$1;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->b(Landroid/app/Application;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getProximityManager()Lcom/callapp/contacts/manager/ProximityManager;

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getAnalyticsManager()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getRecordManager()Lcom/callapp/contacts/recorder/CallRecorderManager;

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getRecordTestManager()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    .line 263
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCacheManager()Lcom/callapp/contacts/manager/cache/CacheManager;

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCallAppRemoteConfigManager()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a()Lcom/google/android/gms/tasks/h;

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons$1;->b:Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getWearableClientHandler()Lcom/callapp/contacts/wearable/WearableClientHandler;

    return-void
.end method
