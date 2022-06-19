.class public abstract Lcom/google/android/gms/internal/ads/bok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zp<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/Object;

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/google/android/gms/internal/ads/zzauj;

.field protected f:Lcom/google/android/gms/internal/ads/sg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bok;->a:Lcom/google/android/gms/internal/ads/zp;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bok;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bok;->c:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bok;->d:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Disconnected from remote ad request service."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bok;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected final b()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bok;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 9
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bok;->d:Z

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bok;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sg;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bok;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sg;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bok;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sg;->disconnect()V

    .line 12
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
