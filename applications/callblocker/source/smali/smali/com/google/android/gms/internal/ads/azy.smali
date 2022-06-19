.class public final Lcom/google/android/gms/internal/ads/azy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Long;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/bcy;

.field private final e:Lcom/google/android/gms/common/util/e;

.field private f:Lcom/google/android/gms/internal/ads/dt;

.field private g:Lcom/google/android/gms/internal/ads/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/fa",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/common/util/e;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azy;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azy;->e:Lcom/google/android/gms/common/util/e;

    .line 4
    return-void
.end method

.method private final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/azy;->a:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/azy;->b:Ljava/lang/Long;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 41
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/azy;->c:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dt;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->f:Lcom/google/android/gms/internal/ads/dt;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dt;)V
    .locals 3

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azy;->f:Lcom/google/android/gms/internal/ads/dt;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->g:Lcom/google/android/gms/internal/ads/fa;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v1, "/unconfirmedClick"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azy;->g:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bcy;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bab;-><init>(Lcom/google/android/gms/internal/ads/azy;Lcom/google/android/gms/internal/ads/dt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->g:Lcom/google/android/gms/internal/ads/fa;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v1, "/unconfirmedClick"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azy;->g:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 10
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->f:Lcom/google/android/gms/internal/ads/dt;

    if-nez v0, :cond_1

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/azy;->c()V

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->f:Lcom/google/android/gms/internal/ads/dt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dt;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azy;->b:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 34
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/azy;->c()V

    goto :goto_0

    .line 27
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azy;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v1, "time_interval"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azy;->e:Lcom/google/android/gms/common/util/e;

    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/azy;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v1, "messageType"

    const-string/jumbo v2, "onePointFiveClick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azy;->d:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v2, "sendMessageToNativeJs"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
