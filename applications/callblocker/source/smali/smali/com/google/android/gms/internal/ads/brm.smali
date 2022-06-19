.class final Lcom/google/android/gms/internal/ads/brm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arc;


# instance fields
.field private a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brh;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 1

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brm;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/brm;->a:Z

    return-void
.end method

.method private final b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cu:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x3

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/brm;->b:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnn;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcnn;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 16
    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brm;->b:Lcom/google/android/gms/internal/ads/yo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/brm;->a:Z

    if-eqz v0, :cond_0

    .line 6
    :goto_0
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/brm;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 7
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/brm;->a:Z

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/brm;->b(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
