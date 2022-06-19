.class public final Lcom/google/android/gms/internal/ads/dwk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lcom/google/android/gms/internal/ads/dwl;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;)V
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwk;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dwk;->b:Lcom/google/android/gms/internal/ads/dwl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dxk;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwk;->b:Lcom/google/android/gms/internal/ads/dwl;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwk;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dwr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dwr;-><init>(Lcom/google/android/gms/internal/ads/dwk;Lcom/google/android/gms/internal/ads/dxk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
