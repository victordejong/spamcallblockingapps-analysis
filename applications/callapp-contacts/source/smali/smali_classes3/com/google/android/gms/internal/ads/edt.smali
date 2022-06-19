.class public final Lcom/google/android/gms/internal/ads/edt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lcom/google/android/gms/internal/ads/edu;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/edu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    return-void
.end method


# virtual methods
.method public final a(IIIF)V
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/eea;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/eea;-><init>(Lcom/google/android/gms/internal/ads/edt;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/edx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/edx;-><init>(Lcom/google/android/gms/internal/ads/edt;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/edz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/edz;-><init>(Lcom/google/android/gms/internal/ads/edt;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dxk;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/eeb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/eeb;-><init>(Lcom/google/android/gms/internal/ads/edt;Lcom/google/android/gms/internal/ads/dxk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
