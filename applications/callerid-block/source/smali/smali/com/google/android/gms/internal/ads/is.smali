.class public final Lcom/google/android/gms/internal/ads/is;
.super Lcom/google/android/gms/ads/internal/util/z;
.source ""


# instance fields
.field final c:Lcom/google/android/gms/internal/ads/rq;

.field final d:Lcom/google/android/gms/internal/ads/qs;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rq;Lcom/google/android/gms/internal/ads/qs;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/z;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/is;->c:Lcom/google/android/gms/internal/ads/rq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/is;->d:Lcom/google/android/gms/internal/ads/qs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/is;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/is;->f:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->z()Lcom/google/android/gms/internal/ads/js;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/js;->a(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is;->d:Lcom/google/android/gms/internal/ads/qs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/is;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/is;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qs;->i(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/hs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/hs;-><init>(Lcom/google/android/gms/internal/ads/is;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v2, Lcom/google/android/gms/internal/ads/hs;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/hs;-><init>(Lcom/google/android/gms/internal/ads/is;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
