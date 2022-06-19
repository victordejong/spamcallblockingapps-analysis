.class public final Lcom/google/android/gms/internal/ads/dws;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private final synthetic d:Lcom/google/android/gms/internal/ads/dwn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dwn;[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dws;->d:Lcom/google/android/gms/internal/ads/dwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dws;->a:[B

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dwn;[BLcom/google/android/gms/internal/ads/dwt;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dws;-><init>(Lcom/google/android/gms/internal/ads/dwn;[B)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/dws;
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/dws;->b:I

    .line 15
    return-object p0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 4
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dws;->d:Lcom/google/android/gms/internal/ads/dwn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dwn;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dws;->d:Lcom/google/android/gms/internal/ads/dwn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dws;->a:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dko;->a([B)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dws;->d:Lcom/google/android/gms/internal/ads/dwn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dws;->b:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dko;->a(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dws;->d:Lcom/google/android/gms/internal/ads/dwn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dws;->c:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dko;->b(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dws;->d:Lcom/google/android/gms/internal/ads/dwn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dko;->a([I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dws;->d:Lcom/google/android/gms/internal/ads/dwn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dko;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    const-string/jumbo v1, "Clearcut log failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/dws;
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/dws;->c:I

    .line 17
    return-object p0
.end method
