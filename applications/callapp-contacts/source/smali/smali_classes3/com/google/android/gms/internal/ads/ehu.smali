.class public final Lcom/google/android/gms/internal/ads/ehu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field private final c:[B

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ehq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ehq;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ehu;->d:Lcom/google/android/gms/internal/ads/ehq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ehu;->c:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ehq;[BLcom/google/android/gms/internal/ads/ehr;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ehu;-><init>(Lcom/google/android/gms/internal/ads/ehq;[B)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehu;->d:Lcom/google/android/gms/internal/ads/ehq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ehq;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehu;->d:Lcom/google/android/gms/internal/ads/ehq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ehu;->c:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dvg;->a([B)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehu;->d:Lcom/google/android/gms/internal/ads/ehq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ehu;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dvg;->a(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehu;->d:Lcom/google/android/gms/internal/ads/ehq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ehu;->b:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dvg;->b(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehu;->d:Lcom/google/android/gms/internal/ads/ehq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvg;->b()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehu;->d:Lcom/google/android/gms/internal/ads/ehq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvg;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
