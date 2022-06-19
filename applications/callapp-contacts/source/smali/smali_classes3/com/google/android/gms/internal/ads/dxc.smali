.class final Lcom/google/android/gms/internal/ads/dxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dwx;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dxa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dxa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxc;->a:Lcom/google/android/gms/internal/ads/dxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dxa;Lcom/google/android/gms/internal/ads/dxd;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dxc;-><init>(Lcom/google/android/gms/internal/ads/dxa;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dxa;->w()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxc;->a:Lcom/google/android/gms/internal/ads/dxa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dxa;->b(Lcom/google/android/gms/internal/ads/dxa;)Z

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxc;->a:Lcom/google/android/gms/internal/ads/dxa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dxa;->a(Lcom/google/android/gms/internal/ads/dxa;)Lcom/google/android/gms/internal/ads/dwk;

    move-result-object v0

    .line 1020
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwk;->b:Lcom/google/android/gms/internal/ads/dwl;

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwk;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/dwq;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/dwq;-><init>(Lcom/google/android/gms/internal/ads/dwk;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dxa;->v()V

    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxc;->a:Lcom/google/android/gms/internal/ads/dxa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dxa;->a(Lcom/google/android/gms/internal/ads/dxa;)Lcom/google/android/gms/internal/ads/dwk;

    move-result-object v2

    .line 2014
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/dwk;->b:Lcom/google/android/gms/internal/ads/dwl;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/dwk;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/dwo;

    move-object v1, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dwo;-><init>(Lcom/google/android/gms/internal/ads/dwk;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dxa;->x()V

    return-void
.end method
