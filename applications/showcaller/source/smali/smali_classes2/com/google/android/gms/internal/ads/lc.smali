.class public final Lcom/google/android/gms/internal/ads/lc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/mc;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/mc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lc;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lc;->b:Lcom/google/android/gms/internal/ads/mc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/lc;)Lcom/google/android/gms/internal/ads/mc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lc;->b:Lcom/google/android/gms/internal/ads/mc;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/gd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/fc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/fc;-><init>(Lcom/google/android/gms/internal/ads/lc;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/gc;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/gc;-><init>(Lcom/google/android/gms/internal/ads/lc;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hc;-><init>(Lcom/google/android/gms/internal/ads/lc;Lcom/google/android/gms/internal/ads/zzanm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/ic;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ic;-><init>(Lcom/google/android/gms/internal/ads/lc;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/gd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/jc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jc;-><init>(Lcom/google/android/gms/internal/ads/lc;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/kc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/kc;-><init>(Lcom/google/android/gms/internal/ads/lc;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
