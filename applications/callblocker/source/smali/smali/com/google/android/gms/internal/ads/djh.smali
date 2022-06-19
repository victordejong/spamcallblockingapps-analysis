.class public final Lcom/google/android/gms/internal/ads/djh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/din;

.field private final b:Lcom/google/android/gms/internal/ads/atw$a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Lcom/google/android/gms/internal/ads/atw$a$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/djh;->a:Lcom/google/android/gms/internal/ads/din;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/djh;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 4
    return-void
.end method

.method private final a()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djh;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->m()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djh;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->m()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djh;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->l()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djh;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djh;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->b()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v3

    .line 13
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/dbb;->a([BIILcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dbb;

    .line 14
    monitor-exit v1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/djh;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
