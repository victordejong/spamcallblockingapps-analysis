.class final synthetic Lcom/google/android/gms/internal/ads/bab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azy;

.field private final b:Lcom/google/android/gms/internal/ads/dt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azy;Lcom/google/android/gms/internal/ads/dt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bab;->a:Lcom/google/android/gms/internal/ads/azy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bab;->b:Lcom/google/android/gms/internal/ads/dt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bab;->a:Lcom/google/android/gms/internal/ads/azy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bab;->b:Lcom/google/android/gms/internal/ads/dt;

    .line 2
    :try_start_0
    const-string/jumbo v0, "timestamp"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/azy;->b:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    const-string/jumbo v0, "id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/azy;->a:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, "asset_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    if-nez v2, :cond_0

    .line 9
    const-string/jumbo v0, "Received unconfirmed click but UnconfirmedClickListener is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 15
    :goto_1
    return-void

    .line 5
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Failed to call parse unconfirmedClickTimestamp."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/dt;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 13
    :catch_1
    move-exception v0

    .line 14
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
