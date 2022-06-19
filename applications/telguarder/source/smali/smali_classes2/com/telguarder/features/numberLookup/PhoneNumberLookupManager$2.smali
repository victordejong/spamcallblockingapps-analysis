.class Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "PhoneNumberLookupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lookupPhoneNumberOnBackend(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Lcom/telguarder/features/numberLookup/NumberLookupResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

.field final synthetic val$adPreload:Z

.field final synthetic val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field final synthetic val$completionHandler:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Z)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$completionHandler:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    iput-boolean p6, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$adPreload:Z

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onError$1(Landroid/content/Context;)V
    .locals 1

    .line 222
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->startPreload(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/telguarder/features/numberLookup/NumberLookupResponse;Landroid/content/Context;)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Phone number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/NumberLookup;

    iget-object p0, p0, Lcom/telguarder/features/numberLookup/NumberLookup;->number:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->startPreload(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$102(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Z)Z

    .line 214
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentification(Ljava/lang/Boolean;)V

    .line 215
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onLookupFailed(Ljava/lang/Exception;)V

    .line 219
    :cond_1
    iget-boolean p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$adPreload:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->postCallScreenIsEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez p1, :cond_4

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    .line 220
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result p1

    if-nez p1, :cond_4

    .line 221
    :cond_3
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$CgoZ8mVF36BXW2JcXjTLvkqTrBA;

    invoke-direct {v1, v0}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$CgoZ8mVF36BXW2JcXjTLvkqTrBA;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 225
    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$completionHandler:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/numberLookup/NumberLookupResponse;)V
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$102(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Z)Z

    .line 185
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/telguarder/helpers/backend/NetworkHelper;->unregisterNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 190
    :try_start_0
    iget-object v2, p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telguarder/features/numberLookup/NumberLookup;

    iget-boolean v2, v2, Lcom/telguarder/features/numberLookup/NumberLookup;->error:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :catch_0
    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_5

    .line 196
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v1

    if-nez v1, :cond_5

    .line 197
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentification(Ljava/lang/Boolean;)V

    .line 198
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;->onNoResults()V

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$completionHandler:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    .line 202
    :cond_5
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$context:Landroid/content/Context;

    iget-object v3, p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/numberLookup/NumberLookup;

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    iget-object v5, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/NumberLookup;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    .line 203
    iget-boolean v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$adPreload:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->postCallScreenIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/NumberLookup;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/NumberLookup;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Spam;->spamType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$Vo6ST29GSkk2WLQ6MThoAWGM-xs;

    invoke-direct {v2, p1, v1}, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$Vo6ST29GSkk2WLQ6MThoAWGM-xs;-><init>(Lcom/telguarder/features/numberLookup/NumberLookupResponse;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    :cond_7
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->val$completionHandler:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->onSuccess(Lcom/telguarder/features/numberLookup/NumberLookupResponse;)V

    return-void
.end method
