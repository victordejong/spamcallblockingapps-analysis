.class public Lcom/mopub/common/ExternalViewabilitySessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;,
        Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    }
.end annotation


# static fields
.field private static c:Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/mopub/common/ViewabilityObstruction;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/mopub/common/ViewabilityTracker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Ljava/util/Set;

    return-void
.end method

.method public static create()Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/mopub/common/ExternalViewabilitySessionManager;->c:Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>()V

    return-object v0

    .line 49
    :cond_0
    invoke-interface {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    return-object v0
.end method

.method public static setCreator(Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;)V
    .locals 0

    .line 274
    sput-object p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->c:Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;

    return-void
.end method


# virtual methods
.method public createNativeSession(Landroid/view/View;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 84
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mopub/common/ViewabilityTracker;->a(Landroid/view/View;Ljava/util/Set;)Lcom/mopub/common/ViewabilityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 94
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "createNativeTracker failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public createVideoSession(Landroid/view/View;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 108
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mopub/common/e;->b(Landroid/view/View;Ljava/util/Set;)Lcom/mopub/common/ViewabilityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 118
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "createVastVideoTracker failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public createWebViewSession(Landroid/webkit/WebView;)V
    .locals 4

    .line 60
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 61
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/ViewabilityTracker;->a(Landroid/webkit/WebView;)Lcom/mopub/common/ViewabilityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "createWebViewTracker failed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public endSession()V
    .locals 5

    .line 178
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 2231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopTracking(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/mopub/common/ViewabilityTracker;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/lang/String;)V

    .line 2232
    sget-object v1, Lcom/mopub/common/ViewabilityTracker$STATE;->STOPPED:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {v0, v1}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 185
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "stopTracking failed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public hasImpressionOccurred()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 1241
    iget-boolean v0, v0, Lcom/mopub/common/ViewabilityTracker;->a:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .line 138
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 140
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/common/ViewabilityTracker;->a()Z

    move-result v0

    return v0
.end method

.method public onVideoPrepared(J)V
    .locals 3

    .line 224
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 228
    invoke-virtual {v0, p1}, Lcom/mopub/common/ViewabilityTracker;->videoPrepared(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 231
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videoPrepared failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V
    .locals 3

    .line 244
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 245
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 248
    :try_start_0
    iget-object p2, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p2, p1}, Lcom/mopub/common/ViewabilityTracker;->trackVideo(Lcom/mopub/common/VideoEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 252
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "trackVideo failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public registerFriendlyObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    .locals 2

    .line 196
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 198
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {v0, p1, p2}, Lcom/mopub/common/ViewabilityTracker;->a(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/lang/Iterable;)V

    .line 210
    iget-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 214
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public registerTrackedView(Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lcom/mopub/common/ViewabilityTracker;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerFriendlyObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    return-void
.end method

.method public startSession()V
    .locals 5

    .line 124
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerFriendlyObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 129
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    invoke-virtual {v0}, Lcom/mopub/common/ViewabilityTracker;->startTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 132
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "startSession()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public trackImpression()V
    .locals 5

    .line 149
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/mopub/common/ViewabilityTracker;->trackImpression()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "trackImpression()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
