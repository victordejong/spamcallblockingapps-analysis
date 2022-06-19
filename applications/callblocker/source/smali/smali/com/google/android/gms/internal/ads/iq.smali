.class public final Lcom/google/android/gms/internal/ads/iq;
.super Lcom/google/android/gms/internal/ads/yv;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/yv",
        "<",
        "Lcom/google/android/gms/internal/ads/jc;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/internal/ads/iu;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iu;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yv;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iq;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iq;->b:Lcom/google/android/gms/internal/ads/iu;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/iq;)Lcom/google/android/gms/internal/ads/iu;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iq;->b:Lcom/google/android/gms/internal/ads/iu;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/iq;->c:Z

    if-eqz v0, :cond_0

    .line 7
    monitor-exit v1

    .line 11
    :goto_0
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/iq;->c:Z

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/it;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/it;-><init>(Lcom/google/android/gms/internal/ads/iq;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/yt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/yt;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/is;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/is;-><init>(Lcom/google/android/gms/internal/ads/iq;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/iv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/iv;-><init>(Lcom/google/android/gms/internal/ads/iq;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 11
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
