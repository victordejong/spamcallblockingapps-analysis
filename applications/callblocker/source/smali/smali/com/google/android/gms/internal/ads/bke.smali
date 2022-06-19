.class public abstract Lcom/google/android/gms/internal/ads/bke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/yo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yo",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/Object;

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/google/android/gms/internal/ads/pw;

.field protected f:Lcom/google/android/gms/internal/ads/pd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->a:Lcom/google/android/gms/internal/ads/yo;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->b:Ljava/lang/Object;

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bke;->c:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bke;->d:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bke;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bke;->d:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->f:Lcom/google/android/gms/internal/ads/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->f:Lcom/google/android/gms/internal/ads/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->f:Lcom/google/android/gms/internal/ads/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->e()V

    .line 12
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 16
    const-string/jumbo v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 18
    return-void
.end method
