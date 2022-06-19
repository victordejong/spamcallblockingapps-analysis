.class public final Lcom/google/android/gms/internal/ads/bih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/a/a;
.implements Lcom/google/android/gms/internal/ads/app;
.implements Lcom/google/android/gms/internal/ads/apv;
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/aql;
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/clg;
.implements Lcom/google/android/gms/internal/ads/dxs;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/bhv;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bhv;Lcom/google/android/gms/internal/ads/afh;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bih;->b:Lcom/google/android/gms/internal/ads/bhv;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bih;->a:Ljava/util/List;

    .line 4
    return-void
.end method

.method private final varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bih;->b:Lcom/google/android/gms/internal/ads/bhv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bih;->a:Ljava/util/List;

    const-string/jumbo v3, "Event-"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/google/android/gms/internal/ads/bhv;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/bih;->c:J

    sub-long/2addr v0, v2

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Ad Request Latency : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 14
    const-class v0, Lcom/google/android/gms/internal/ads/arg;

    const-string/jumbo v1, "onAdLoaded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public final a(I)V
    .locals 5

    .prologue
    .line 16
    const-class v0, Lcom/google/android/gms/internal/ads/apv;

    const-string/jumbo v1, "onAdFailedToLoad"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 5
    const-class v0, Lcom/google/android/gms/internal/ads/aql;

    const-string/jumbo v1, "onPause"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 34
    const-class v0, Lcom/google/android/gms/internal/ads/ckx;

    const-string/jumbo v1, "onTaskCreated"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 38
    const-class v0, Lcom/google/android/gms/internal/ads/ckx;

    const-string/jumbo v1, "onTaskFailed"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bih;->c:J

    .line 45
    const-class v0, Lcom/google/android/gms/internal/ads/ash;

    const-string/jumbo v1, "onAdRequest"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .prologue
    .line 30
    const-class v0, Lcom/google/android/gms/internal/ads/app;

    const-string/jumbo v1, "onRewarded"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 11
    const-class v0, Lcom/google/android/gms/ads/a/a;

    const-string/jumbo v1, "onAppEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/google/android/gms/internal/ads/aqi;

    const-string/jumbo v1, "onAdImpression"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 7
    const-class v0, Lcom/google/android/gms/internal/ads/aql;

    const-string/jumbo v1, "onResume"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    const-class v0, Lcom/google/android/gms/internal/ads/ckx;

    const-string/jumbo v1, "onTaskStarted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/google/android/gms/internal/ads/app;

    const-string/jumbo v1, "onAdOpened"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 9
    const-class v0, Lcom/google/android/gms/internal/ads/aql;

    const-string/jumbo v1, "onDestroy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 40
    const-class v0, Lcom/google/android/gms/internal/ads/ckx;

    const-string/jumbo v1, "onTaskSucceeded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/google/android/gms/internal/ads/app;

    const-string/jumbo v1, "onAdClosed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/google/android/gms/internal/ads/dxs;

    const-string/jumbo v1, "onAdClicked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Lcom/google/android/gms/internal/ads/app;

    const-string/jumbo v1, "onAdLeftApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/google/android/gms/internal/ads/app;

    const-string/jumbo v1, "onRewardedVideoStarted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/google/android/gms/internal/ads/app;

    const-string/jumbo v1, "onRewardedVideoCompleted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bih;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method
