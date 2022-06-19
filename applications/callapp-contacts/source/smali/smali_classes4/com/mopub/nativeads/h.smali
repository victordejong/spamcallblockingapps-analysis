.class final Lcom/mopub/nativeads/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource;


# instance fields
.field a:I

.field final b:Landroid/content/Context;

.field final c:Landroid/os/Handler;

.field final d:Ljava/lang/Runnable;

.field e:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

.field f:I

.field private final g:Lcom/mopub/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Response$Listener<",
            "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/mopub/volley/Response$ErrorListener;

.field private i:Ljava/lang/String;

.field private j:Lcom/mopub/nativeads/PositioningRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x493e0

    .line 63
    iput v0, p0, Lcom/mopub/nativeads/h;->a:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/h;->b:Landroid/content/Context;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/h;->c:Landroid/os/Handler;

    .line 82
    new-instance p1, Lcom/mopub/nativeads/h$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/h$1;-><init>(Lcom/mopub/nativeads/h;)V

    iput-object p1, p0, Lcom/mopub/nativeads/h;->d:Ljava/lang/Runnable;

    .line 89
    new-instance p1, Lcom/mopub/nativeads/h$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/h$2;-><init>(Lcom/mopub/nativeads/h;)V

    iput-object p1, p0, Lcom/mopub/nativeads/h;->g:Lcom/mopub/volley/Response$Listener;

    .line 96
    new-instance p1, Lcom/mopub/nativeads/h$3;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/h$3;-><init>(Lcom/mopub/nativeads/h;)V

    iput-object p1, p0, Lcom/mopub/nativeads/h;->h:Lcom/mopub/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 135
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading positioning from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mopub/nativeads/h;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/mopub/nativeads/PositioningRequest;

    iget-object v1, p0, Lcom/mopub/nativeads/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/nativeads/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/mopub/nativeads/h;->g:Lcom/mopub/volley/Response$Listener;

    iget-object v4, p0, Lcom/mopub/nativeads/h;->h:Lcom/mopub/volley/Response$ErrorListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/nativeads/PositioningRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/mopub/nativeads/h;->j:Lcom/mopub/nativeads/PositioningRequest;

    .line 138
    iget-object v0, p0, Lcom/mopub/nativeads/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/mopub/nativeads/h;->j:Lcom/mopub/nativeads/PositioningRequest;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method

.method public final loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/h;->j:Lcom/mopub/nativeads/PositioningRequest;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/mopub/nativeads/PositioningRequest;->cancel()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/mopub/nativeads/h;->j:Lcom/mopub/nativeads/PositioningRequest;

    .line 122
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/h;->f:I

    if-lez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mopub/nativeads/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/h;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/mopub/nativeads/h;->f:I

    .line 127
    :cond_1
    iput-object p2, p0, Lcom/mopub/nativeads/h;->e:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    .line 128
    new-instance p2, Lcom/mopub/nativeads/g;

    iget-object v0, p0, Lcom/mopub/nativeads/h;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/mopub/nativeads/g;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p2, p1}, Lcom/mopub/nativeads/g;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/g;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/g;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/h;->i:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/mopub/nativeads/h;->a()V

    return-void
.end method
