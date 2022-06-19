.class final synthetic Lcom/google/android/gms/internal/ads/cfw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cfs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cfs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfw;->a:Lcom/google/android/gms/internal/ads/cfs;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfw;->a:Lcom/google/android/gms/internal/ads/cfs;

    .line 1006
    new-instance v1, Lcom/google/android/gms/internal/ads/cft;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cfs;->a:Landroid/os/Bundle;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cft;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method
